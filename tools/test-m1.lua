-- 在工程根目录运行；先将 TS 编译至 out/m1/lua。
-- Lua 5.3 桩测试执行实际 TSTL 产物，不替代 War3 路线/特效/Frame 实机验收。
package.path = "out/m1/lua/?.lua;" .. package.path
local clock, tasks, serial, units, effects, deaths, chats, triggers = 0, {}, 0, {}, {}, {}, {}, {}
local activePlayers = {[0]=true}
local failCreation, defeatCount, emitted = false, 0, 0
local moveUnits, recoveryCount = false, 0
local function move(delta)
    if not moveUnits then return end
    for _,u in ipairs(units) do
        if not u.removed and u.life>0 and u.targetX then
            local dx,dy=u.targetX-u.x,u.targetY-u.y
            local distance=math.sqrt(dx*dx+dy*dy)
            if distance>0 then
                local ratio=math.min(1,270*delta/distance)
                u.x=u.x+dx*ratio;u.y=u.y+dy*ratio
            end
        end
    end
end
local function later(delay, fn)
    serial = serial + 1
    tasks[#tasks+1] = {at=clock+delay, fn=fn, order=serial}
end
local function advance(seconds)
    local untilTime = clock + seconds
    while true do
        table.sort(tasks, function(a,b) return a.at < b.at or (a.at == b.at and a.order < b.order) end)
        if not tasks[1] or tasks[1].at > untilTime + 1e-8 then break end
        local task = table.remove(tasks,1)
        move(task.at-clock)
        clock = task.at
        task.fn()
    end
    move(untilTime-clock);clock = untilTime
end
local base = {}
function base.getGameTime() return clock end
function base.runLater(delay, fn) later(delay, function() fn(nil, 1, 1) end) end
function base.onTimer(delay, fn)
    local count = 0
    local function tick()
        count = count+1
        if fn(nil, count) ~= false then later(delay, tick) end
    end
    later(delay, tick)
end
package.loaded["solar.solar-common.util.BaseUtil"] = {default=base}
isDebug = true
log = {info=function(...) end}
MAP_CONTROL_USER, MAP_CONTROL_COMPUTER, PLAYER_SLOT_STATE_PLAYING, EVENT_PLAYER_LEAVE = 1,2,1,1
function Player(id) return id end
function GetPlayerId(p) return p end
function GetPlayerName(p) return "Player"..p end
function GetPlayerController(p) return activePlayers[p] and MAP_CONTROL_USER or MAP_CONTROL_COMPUTER end
function GetPlayerSlotState(p) return activePlayers[p] and 1 or 0 end
function GetLocalPlayer() return 0 end
local messages={}
function DisplayTimedTextToPlayer(p,x,y,duration,message)
    messages[#messages+1]={p=p,text=message,at=clock,duration=duration}
end
function CreateTrigger() local t={}; triggers[#triggers+1]=t; return t end
function TriggerRegisterPlayerEvent(...) end
function TriggerAddAction(t, fn) t.action=fn end
local triggerPlayer = 0
function GetTriggerPlayer() return triggerPlayer end
function FourCC(s) return s end
se = {}
function se:unitDeath(fn) deaths[#deaths+1]=fn end
function se:onPlayerChat(command, fn) chats[command]=fn end
function CreateUnit(owner, kind, x,y, facing)
    if failCreation then return nil end
    emitted=emitted+1
    local u={owner=owner,kind=kind,x=x,y=y,facing=facing,life=420,id=emitted}
    units[#units+1]=u
    return u
end
function GetHandleId(u) return u.id end
function GetUnitTypeId(u) return u.removed and 0 or u.kind end
function GetWidgetLife(u) return u.life end
function GetUnitX(u) return u.x end
function GetUnitY(u) return u.y end
function SetUnitPosition(u,x,y) u.x=x;u.y=y;recoveryCount=recoveryCount+1 end
function SetUnitMoveSpeed(...) end
function SetUnitAcquireRange(...) end
function SetUnitCreepGuard(...) end
function SetUnitPathing(u, flag) u.pathing=flag end
function GetUnitCurrentOrder(u) return u.orderId or 0 end
function RemoveGuardPosition(...) end
function IssuePointOrder(u, _, x,y)
    u.orderCalls=(u.orderCalls or 0)+1;u.orderId=851986
    if u.targetX~=x or u.targetY~=y then
        u.turns=(u.turns or 0)+1
        u.targets=u.targets or {};u.targets[#u.targets+1]={x=x,y=y}
    end
    u.targetX=x;u.targetY=y;return true
end
function RemoveUnit(u) u.removed=true end
function KillUnit(u)
    if u.life<=0 or u.removed then return end
    u.life=0
    for _,fn in ipairs(deaths) do fn(u,nil) end
end
function AddSpecialEffect(model,x,y)
    local e={model=model,x=x,y=y};effects[#effects+1]=e;return e
end
function EXEffectMatRotateZ(e, yaw) e.yaw=yaw end
function EXEffectMatScale(e, x,y,z) e.scale=x end
function DestroyEffect(e) e.removed=true end
function CustomDefeatBJ(...) defeatCount=defeatCount+1 end

local WaveService=require("game.wave.WaveService").default
local Config=require("game.config.M1Config").default
assert(Config.prepareSeconds==10 and Config.portalLeadSeconds==7)
local service=WaveService:start()
local function lane(id) return service.lanes:get(id or 0) end
local function balanced(l)
    local total=0
    for _,w in ipairs(l.waves) do
        assert(w.spawned == w.alive+w.killed+w.cancelled, "wave count mismatch")
        total=total+w.alive
    end
    assert(total==l.alive, "lane count mismatch")
end
local function restart() service:restart();return lane() end
assert(#effects==0 and emitted==0, "portal/enemy appeared during prepare")
advance(Config.prepareSeconds-Config.portalLeadSeconds-0.01)
assert(#effects==0 and emitted==0)
advance(0.02)
assert(#effects==1 and emitted==0, "portal was not created at seven seconds remaining")
assert(math.abs(lane().nextWaveAt-clock-(Config.portalLeadSeconds-0.01))<0.001)
advance(Config.portalLeadSeconds-0.11)
assert(#effects==1 and emitted==0, "enemies spawned before countdown ended")
advance(0.2)
assert(lane().alive==1 and #effects==1 and effects[1].yaw==0)
assert(effects[1].model==Config.portalModel and effects[1].scale==1.0)
assert(WaveService:start()==service and #deaths==1, "duplicate initialization")
advance(10)
assert(#effects==1 and lane().alive==17)
local oldLane=lane()
local before=oldLane.alive
local victim=units[#units]
KillUnit(victim)
for _,fn in ipairs(deaths) do fn(victim,nil) end
assert(oldLane.alive==before-1 and oldLane.waves[1].killed==1, "double death")
local vanished=units[#units-1]
RemoveUnit(vanished)
advance(0.25)
assert(oldLane.waves[1].cancelled==1, "external removal was not retired")
balanced(oldLane)

-- 每次倒计时归零才开波；本波刷完不早开下一波。
local l=restart()
advance(Config.prepareSeconds+11.5)
assert(#l.waves==1 and l.alive==20 and math.abs(l.nextWaveAt-(clock+33.5))<0.001)
advance(33.49)
assert(#l.waves==1 and l.alive==20)
advance(0.02)
assert(#l.waves==2 and l.alive==21)

-- 79安全，80红字宽限；19.9秒仍活着，满20秒才失败。
l=restart()
advance(Config.prepareSeconds+3*45+18*0.6+0.01)
assert(l.alive==79 and l.state~="failed")
advance(0.6)
assert(l.alive==80 and l.state~="failed" and l.overloadUntil>clock)
local noticesBefore=#messages
advance(1)
assert(#messages>noticesBefore and messages[#messages].text:find("急！急！急！",1,true))
advance(18.8)
assert(l.state~="failed" and l.alive==80)
advance(0.2)
assert(l.state=="failed" and l.failureCount==80 and l.alive==0 and l.peak==80)
local total=emitted
advance(90)
assert(emitted==total and #effects==1, "failed lane kept spawning or duplicated portal")
balanced(l)

-- 20秒内降到79解除；下一次达到80重新计时，旧倒计时不判负。
l=restart();advance(Config.prepareSeconds+146.5)
assert(l.alive==80 and l.overloadUntil>clock)
advance(19.7)
service.enemies:kill(l,1)
assert(l.alive==79 and l.overloadUntil==0)
local noticeCount=#messages
advance(0.4)
assert(l.state~="failed")
assert(#messages==noticeCount, "danger warning kept repeating after rescue")
advance(14)
assert(l.alive>=80 and l.overloadUntil>clock and l.state~="failed")
local renewedDeadline=l.overloadUntil
advance(renewedDeadline-clock-0.1)
assert(l.state~="failed")
advance(0.11)
assert(l.state=="failed" and l.failureCount>=80)
balanced(l)

-- 危险期间重测，旧20秒回调不得判负新路线。
l=restart();advance(Config.prepareSeconds+146.5)
assert(l.overloadUntil>clock)
local oldDanger=l
l=restart();advance(Config.prepareSeconds+12.1)
assert(l.state~="failed" and l.alive==20 and oldDanger.overloadUntil==0)

-- 旧回调跨越重测时刻，不得污染新轮；门位置/handle 不变。
l=restart()
advance(Config.prepareSeconds+0.2)
local abandoned=l
l=restart()
advance(Config.prepareSeconds-0.1)
assert(l.alive==0 and abandoned.alive==0)
advance(0.2)
assert(l.alive==1 and #effects==1)
balanced(abandoned);balanced(l)

-- 清场与波次推进：生成未结束时清怪不能提前 completed。
l=restart()
advance(Config.prepareSeconds+0.1)
service.enemies:kill(l,l.alive)
assert(l.waves[1].state=="spawning")
for wave=1,#Config.waves do
    advance(wave==1 and 12 or 45)
    service.enemies:kill(l,l.alive)
    assert(l.waves[wave].state=="completed")
    balanced(l)
end
assert(l.state=="finished" and l.alive==0)

-- 同一个集中更新器能持续绕行多圈；正常移动不触发卡位回位。
local plans=Config.waves
-- 出怪跨越下次开波也不暂停倒计时；后一波清掉不能误判全部完成。
Config.waves={{count=4,interval=2},{count=1,interval=0.6}}
Config.wavePeriod=3
l=restart();advance(Config.prepareSeconds+3.1)
assert(#l.waves==2 and l.waves[1].spawned==2 and l.waves[1].state=="spawning")
service.enemies:kill(l,l.alive)
assert(l.waves[2].state=="completed" and l.state~="finished")
advance(3.1);service.enemies:kill(l,l.alive)
assert(l.state=="finished")
Config.wavePeriod=45
Config.waves={{count=1,interval=0.6}}
l=restart();advance(Config.prepareSeconds+0.1)
local walker=units[#units]
local recoveriesBefore=recoveryCount
moveUnits=true;advance(260);moveUnits=false
assert(walker.turns>2*#l.route.points and l.alive==1 and l.state=="fighting")
assert(recoveryCount==recoveriesBefore, "moving enemy was incorrectly recovered")
assert(walker.pathing==false and walker.orderCalls<=walker.turns+2, "normal walking repeatedly received move orders")
local outer={}
for index=l.route.loopStart+1,#l.route.points do
    local p=l.route.points[index];outer[p.x..","..p.y]=true
end
for index=#l.route.points+1,#walker.targets do
    local p=walker.targets[index]
    assert(outer[p.x..","..p.y], "outer-loop enemy returned to inner road")
end
local ordersBefore=walker.orderCalls
walker.orderId=0;moveUnits=true;advance(1.25);moveUnits=false
assert(walker.orderId==851986 and walker.orderCalls>ordersBefore, "interrupted move was not recovered")
Config.waves=plans

-- 预告期重测或离开：旧的提前建门回调不能创建新玩家的门。
activePlayers={[0]=true,[1]=true}
restart();advance(1)
activePlayers[1]=nil;restart();advance(2.1)
assert(#effects==1 and not service.portals:has(1), "stale restart callback created a portal")
activePlayers[1]=true;restart();advance(1)
triggerPlayer=1;activePlayers[1]=nil;triggers[1].action();advance(2.1)
assert(#effects==1 and not service.portals:has(1), "departed player received a portal")

-- 四路镜像、出怪方向，失败/离开互不影响。
activePlayers={[0]=true,[1]=true,[2]=true,[3]=true}
restart()
advance(Config.prepareSeconds-Config.portalLeadSeconds+0.01)
assert(#effects==4 and lane(0).alive==0 and lane(1).alive==0 and lane(2).alive==0 and lane(3).alive==0)
advance(Config.portalLeadSeconds+0.09)
assert(#effects==4 and service.lanes.size==4)
for id=0,3 do
    local r=Config:route(id)
    assert(r.facing==((id==1 or id==3) and 180 or 0))
    local e=effects[id+1]
    assert(e.x==r.spawn.x and e.y==r.spawn.y and e.yaw==r.facing)
    local last=units[#units-3+id]
    assert(last.facing==r.facing and last.targetX==r.points[1].x)
end
local departed=lane(1)
triggerPlayer=1;activePlayers[1]=nil;triggers[1].action()
assert(departed.state=="failed" and departed.alive==0 and lane(0).alive==1)
advance(12)
assert(lane(0).alive==20 and departed.alive==0)
service:fail(lane(0), "manual-test")
assert(lane(2).alive==20 and lane(3).alive==20)
for id=0,3 do balanced(lane(id)) end

-- 创建失败无幽灵计数，预先生成的门保留；非调试局只提交一次原生失败结果。
activePlayers={[0]=true};l=restart();failCreation=true
advance(Config.prepareSeconds+0.1)
assert(l.state=="failed" and l.alive==0 and l.waves[1].spawned==0)
balanced(l)
failCreation=false;isDebug=false;l=restart()
advance(Config.prepareSeconds+167)
assert(l.state=="failed" and defeatCount==1)
service:fail(l,"again")
assert(defeatCount==1)

-- 调试指令只作用于发言玩家；循环捕获稳定；重开仅首位在场玩家可发起。
isDebug=true;activePlayers={[0]=true,[1]=true};restart();advance(Config.prepareSeconds+0.1)
local lib=require("lualib_bundle")
lib.__TS__New(require("game.test.M1Probe").default,service)
chats["-jt m1 kill"]({triggerPlayer=1})
assert(lane(1).alive==0 and lane(0).alive==1)
advance(1)
chats["-jt m1 clear"]({triggerPlayer=1})
assert(lane(1).alive==0 and lane(0).alive>0)
local unchanged=lane(0)
chats["-jt m1 restart"]({triggerPlayer=1})
assert(lane(0)==unchanged)
chats["-jt m1 restart"]({triggerPlayer=0})
assert(lane(0)~=unchanged and lane(0).alive==0)
print("PASS: M1 Lua 5.3 lifecycle, counts, 79/80 boundary, generations, waves, repeated laps, four lanes, portals, leave, creation failure, native defeat, chat authority")

-- HUD读模型使用正式波次时刻、按观察玩家取80上限，保留其他玩家独立行。
local Hud=require("game.ui.M1HudModel").default
assert(Hud:formatTime(0)=="00:00" and Hud:formatTime(79.8)=="01:19")
local snapshot=Hud:read(service,0,clock)
assert(snapshot.time=="时间 "..Hud:formatTime(clock) and snapshot.monsters=="怪物 0/80")
assert(#snapshot.rows==2 and snapshot.rows[1].name=="Player0" and snapshot.rows[2].name=="Player1")
assert(snapshot.rows[1].state==nil, "removed state column leaked into HUD")
assert(snapshot.rows[1].sect=="未选择")
lane(0).sectName="测试门派"
assert(Hud:read(service,0,clock).rows[1].sect=="测试门派")
assert(snapshot.wave:find("普通模式",1,true) and snapshot.wave:find("N1",1,true))
assert(snapshot.countdown:find(Config.prepareSeconds.."秒",1,true))
advance(Config.prepareSeconds+1)
service.enemies:kill(lane(1),1)
snapshot=Hud:read(service,1,clock)
assert(snapshot.rows[2].kills=="1" and snapshot.rows[1].kills=="0")
assert(snapshot.monsters=="怪物 "..lane(1).alive.."/80")
assert(Hud:read(service,3,clock).countdown=="观战中")
local nextAt=lane(0).nextWaveAt
local aliveBefore=lane(0).alive

-- 只模拟Frame的数据接线，不声称验证字体/渲染；全部Frame必须鼠标穿透。
local frames={}
local Frame={}
local methods={}
local function create(parent)
    local f=setmetatable({handle=#frames+1,parent=parent},{__index=methods})
    frames[#frames+1]=f;return f
end
function Frame:createBackDrop(parent) return create(parent) end
function Frame:createTEXT(parent) return create(parent) end
function Frame:createTEXTBUTTON(parent) local f=create(parent);f.button=true;return f end
function methods:setTexture(path) self.texture=path end
function methods:setSize(w,h) self.w=w;self.h=h end
function methods:setAbsPoint(_,x,y) self.x=x;self.y=y end
function methods:setFont(size) self.font=size end
function methods:setTextAlignment(align) self.align=align end
function methods:setText(value) self.text=value end
function methods:setAlpha(value) self.alpha=value end
function methods:setVisible(value) self.visible=value end
function methods:setOnClick(fn) self.click=fn end
function DzGetColor(r,g,b,a) return {r=r,g=g,b=b,a=a} end
function DzFrameSetVertexColor(handle,color) frames[handle].color=color end
function DzFrameSetIgnoreTrackEvents(handle, flag) frames[handle].ignore=flag end
FRAMEPOINT_TOPLEFT=0
package.loaded["solar.solar-common.w3ts.handles.frame"]={Frame=Frame}
lib.__TS__New(require("game.ui.M1Panel").default,service)
assert(lane(0).alive==aliveBefore and lane(0).nextWaveAt==nextAt, "HUD changed gameplay")
local timeFound,monsterFound,countdownFound,skinFound=false,false,false,false
local toggle,body,header,firstLine,secondLine,arrow
for _,f in ipairs(frames) do
    assert(f.ignore==true or f.button, "HUD blocks mouse")
    assert(f.x>=0 and f.x+(f.w or 0)<=0.8 and f.y<=0.6, "HUD outside screen")
    if f.text and f.text:find("时间 ",1,true) then timeFound=f.x>0.5 end
    if f.text and f.text:find("怪物 ",1,true) then monsterFound=f.x>0.5 end
    if f.text and f.text:find("进攻倒计时",1,true) then countdownFound=f.x>0.3 and f.x<0.5;secondLine=f end
    if f.text and f.text:find("普通模式",1,true) then firstLine=f end
    if f.texture and f.texture:find("jzr_ui",1,true) then skinFound=true end
    if f.texture and f.texture:find("arrow_up",1,true) then arrow=f end
    if f.button then toggle=f end
    if f.x==0.548 and f.y==0.541 then body=f end
    if f.x==0.548 and f.y==0.568 then header=f end
end
assert(timeFound and monsterFound and countdownFound and skinFound, "HUD data/location mismatch")
assert(math.abs(body.h-0.065)<0.0001, "player table did not adapt to two rows")
assert(firstLine.y>secondLine.y)
toggle.click()
assert(body.visible==false and header.visible~=false and lane(0).alive==aliveBefore)
assert(arrow.texture:find("arrow_down.tga",1,true) and arrow.parent==header.handle and arrow.visible~=false,
    "arrow="..tostring(arrow.texture).." parent="..tostring(arrow.parent).." header="..tostring(header.handle))
toggle.click();assert(body.visible==true and arrow.texture:find("arrow_up.tga",1,true))
activePlayers[1]=nil
advance(0.3)
assert(#Hud:read(service,0,clock).rows==1 and math.abs(body.h-0.048)<0.0001, "solo table contains empty slots")
for _,f in ipairs(frames) do assert(f.text~="状态" and not (f.text or ""):find("空位",1,true)) end
-- 危险红字与顶部计数在收起时也继续刷新。
lane(0).alive=80;lane(0).overloadUntil=clock+20
local danger=Hud:read(service,0,clock)
assert(danger.monsterColor=="|cffff4040" and danger.warning:find("20秒",1,true))
lane(0).alive=aliveBefore;lane(0).overloadUntil=0
print("PASS: grace/reset, countdown, outer loop, actual-player rows, no status column, persistent texture arrows, native rolling red warnings")
