function GetMaxLevel takes integer spell_id returns integer
    return LoadInteger(YDHT, spell_id * 3, 0)
endfunction
function SaveMaxLevel_1 takes integer spell_id, integer max_level returns nothing
    call SaveInteger(YDHT, spell_id * 3, 0, max_level)
endfunction
function SaveMaxLevel takes nothing returns nothing
    call SaveInteger(YDHT, $41303058 * 3, 0, 3)
    call SaveInteger(YDHT, $41303237 * 3, 0, 3)
    call SaveInteger(YDHT, $41303056 * 3, 0, 3)
    call SaveInteger(YDHT, $41303052 * 3, 0, 3)
    call SaveInteger(YDHT, $4130304E * 3, 0, 3)
    call SaveInteger(YDHT, $4130304B * 3, 0, 3)
    call SaveInteger(YDHT, $41303057 * 3, 0, 3)
    call SaveInteger(YDHT, $41303239 * 3, 0, 3)
    call SaveInteger(YDHT, $41303246 * 3, 0, 3)
    call SaveInteger(YDHT, $41303156 * 3, 0, 3)
    call SaveInteger(YDHT, $41303244 * 3, 0, 3)
    call SaveInteger(YDHT, $41303243 * 3, 0, 3)
    call SaveInteger(YDHT, $41303245 * 3, 0, 3)
    call SaveInteger(YDHT, $41303334 * 3, 0, 3)
    call SaveInteger(YDHT, $41303256 * 3, 0, 3)
    call SaveInteger(YDHT, $4130324B * 3, 0, 5)
    call SaveInteger(YDHT, $41303251 * 3, 0, 3)
    call SaveInteger(YDHT, $41303254 * 3, 0, 3)
    call SaveInteger(YDHT, $41303259 * 3, 0, 3)
    call SaveInteger(YDHT, $41303042 * 3, 0, 3)
    call SaveInteger(YDHT, $41303041 * 3, 0, 3)
    call SaveInteger(YDHT, $41303031 * 3, 0, 5)
    call SaveInteger(YDHT, $41303337 * 3, 0, 3)
    call SaveInteger(YDHT, $41303054 * 3, 0, 3)
    call SaveInteger(YDHT, $4130304A * 3, 0, 3)
    call SaveInteger(YDHT, $41303048 * 3, 0, 3)
    call SaveInteger(YDHT, $4130304C * 3, 0, 3)
    call SaveInteger(YDHT, $41303049 * 3, 0, 3)
    call SaveInteger(YDHT, $41303130 * 3, 0, 3)
    call SaveInteger(YDHT, $41303151 * 3, 0, 6)
    call SaveInteger(YDHT, $41303152 * 3, 0, 3)
    call SaveInteger(YDHT, $41303236 * 3, 0, 3)
    call SaveInteger(YDHT, $41303234 * 3, 0, 3)
    call SaveInteger(YDHT, $41303248 * 3, 0, 3)
    call SaveInteger(YDHT, $4130334C * 3, 0, 3)
    call SaveInteger(YDHT, $41303232 * 3, 0, 3)
    call SaveInteger(YDHT, $41303331 * 3, 0, 3)
    call SaveInteger(YDHT, $41303332 * 3, 0, 3)
    call SaveInteger(YDHT, $4130324D * 3, 0, 3)
    call SaveInteger(YDHT, $4130324E * 3, 0, 4)
    call SaveInteger(YDHT, $41303249 * 3, 0, 3)
    call SaveInteger(YDHT, $41303252 * 3, 0, 4)
    call SaveInteger(YDHT, $41303046 * 3, 0, 3)
    call SaveInteger(YDHT, $41303032 * 3, 0, 3)
    call SaveInteger(YDHT, $41303154 * 3, 0, 3)
    call SaveInteger(YDHT, $41303039 * 3, 0, 3)
    call SaveInteger(YDHT, $41303037 * 3, 0, 3)
    call SaveInteger(YDHT, $41303044 * 3, 0, 3)
    call SaveInteger(YDHT, $41303036 * 3, 0, 1)
    call SaveInteger(YDHT, $41303530 * 3, 0, 3)
    call SaveInteger(YDHT, $4130344F * 3, 0, 3)
    call SaveInteger(YDHT, $41303450 * 3, 0, 3)
    call SaveInteger(YDHT, $41303457 * 3, 0, 3)
    call SaveInteger(YDHT, $4130344E * 3, 0, 10)
    call SaveInteger(YDHT, $41303458 * 3, 0, 7)
    call SaveInteger(YDHT, $41303455 * 3, 0, 4)
    call SaveInteger(YDHT, $41303453 * 3, 0, 3)
    call SaveInteger(YDHT, $41303456 * 3, 0, 3)
    call SaveInteger(YDHT, $41303451 * 3, 0, 3)
    call SaveInteger(YDHT, $41303454 * 3, 0, 3)
    call SaveInteger(YDHT, $41303459 * 3, 0, 3)
    call SaveInteger(YDHT, $41303534 * 3, 0, 3)
    call SaveInteger(YDHT, $41303438 * 3, 0, 3)
    call SaveInteger(YDHT, $41303439 * 3, 0, 3)
    call SaveInteger(YDHT, $41303442 * 3, 0, 3)
    call SaveInteger(YDHT, $41303437 * 3, 0, 3)
    call SaveInteger(YDHT, $41303441 * 3, 0, 3)
    call SaveInteger(YDHT, $41303435 * 3, 0, 6)
endfunction


function pointChange takes integer i, integer jf returns nothing
    set udg_pointMax[i] = udg_pointMax[i] + jf
    set udg_point[i] = udg_point[i] - jf
    call DzAPI_Map_StoreInteger(Player(i - 1), "point", udg_point[i])
endfunction

function Challenge takes integer player_i, integer challenge_num, integer item_id returns nothing
    local player p = Player(player_i - 1)
    local location array udl_loc
    local location array target
    set udl_loc[0] = GetRectCenter(gg_rct_spawn1)
    set udl_loc[1] = GetRectCenter(gg_rct_spawn2)
    set udl_loc[2] = GetRectCenter(gg_rct_spawn3)
    set udl_loc[3] = GetRectCenter(gg_rct_spawn4)
    set target[0] = GetRectCenter(nodeRects[22])
    set target[1] = GetRectCenter(nodeRects[23])
    set target[2] = GetRectCenter(nodeRects[24])
    set target[3] = GetRectCenter(nodeRects[21])
    if item_id == challenge_item_id[challenge_num] then
        if challenge_num <= 4 then
            call CreateNUnitsAtLoc(1, challenge_id[challenge_num], Player(5), udl_loc[player_i - 1], bj_UNIT_FACING)
            call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[player_i - 1])
            call RemoveLocation(target[player_i - 1])
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933挑战开始|r")
        elseif challenge_num == 5 then
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933该挑战尚未开放|r")
            call AdjustPlayerStateBJ(3, p, PLAYER_STATE_RESOURCE_LUMBER)
        elseif challenge_num == 6 then
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933该挑战尚未开放|r")
            call AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_LUMBER)
        endif
    endif
    set p = null
endfunction

function GoldLumberExChange takes integer player_i, integer item_id, unit u returns nothing
    local player p = Player(player_i - 1)
    if item_id == $49303143 then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= 4000 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 1)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) - 4000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933黄金不足|r")
        endif
    endif
    if item_id == $49303144 then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) >= 1 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) - 1)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 2000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933珍稀币不足|r")
        endif
    endif
    if item_id == $49303238 then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= 40000 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 10)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) - 40000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933黄金不足|r")
        endif
    endif
    if item_id == $49303237 then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) >= 10 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) - 10)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 20000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933珍稀币不足|r")
        endif
    endif
    if item_id == $49303159 then
        call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + 2)
    endif
    if item_id == $4930315A then
        if RequestExtraBooleanData(44, p, null, null, false, 0, 0, 0) or udg_isTest[player_i] then
            if remake_present[player_i] != 1 then
                set remake_present[player_i] = 1
                call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933恭喜玩家" + I2S(player_i) + "领取了小型资源包")
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 3000)
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 2)
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + 5)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您未购买重制版WAR3|r")
        endif
    endif
    if item_id == $49303230 then
        if udg_point[player_i] >= 5 and udg_pointMax[player_i] + 5 <= MAX_POINT then
            if point2lumber[player_i] != 1 then
                set point2lumber[player_i] = 1
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 3)
                call DisplayTimedTextToPlayer(p, 0, 0, 5, "|cFF66CC00珍稀币+3，扣除5积分")
                call pointChange(player_i, 5)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
        endif
    endif
    if item_id == $49303231 then
        if udg_point[player_i] >= 5 and udg_pointMax[player_i] + 5 <= MAX_POINT then
            if point2gold[player_i] != 1 then
                set point2gold[player_i] = 1
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 8000)
                call DisplayTimedTextToPlayer(p, 0, 0, 5, "|cFF66CC00金币+8000，扣除5积分")
                call pointChange(player_i, 5)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
        endif
    endif
    if item_id == $4930324D then
        if udg_point[player_i] >= 5 and udg_pointMax[player_i] + 5 <= MAX_POINT then
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + 5)
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|cFF66CC00可用人口+5，扣除5积分")
            call pointChange(player_i, 5)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
        endif
    endif
    if item_id == $49303239 then
        if middle_gold_flag[player_i] == 1 then
            if middle_gold[player_i] != 1 then
                if wave >= 15 then
                    set middle_gold[player_i] = 1
                    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933恭喜玩家" + I2S(player_i) + "领取了中型金币包")
                    call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 20000)
                else
                    call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933限第15波以后领取|r")
                endif
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您未解锁中型金币包|r")
        endif
    endif
    if item_id == $49303241 then
        if middle_lumber_flag[player_i] == 1 then
            if middle_lumber[player_i] != 1 then
                if wave >= 15 then
                    set middle_lumber[player_i] = 1
                    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933恭喜玩家" + I2S(player_i) + "领取了中型珍稀币包")
                    call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 8)
                else
                    call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933限第15波以后领取|r")
                endif
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您未解锁中型珍稀币包|r")
        endif
    endif
    set p = null
endfunction


function CheckHolyWeapon takes integer player_i, integer item_id returns nothing
    local player p = Player(player_i - 1)
    local string s = ""
    local integer i = 1
    if item_id == $49303157 then
        loop
            exitwhen i > open_shenqi
            set s = s + GetObjectName(random_shenqi[i]) + "\n"
            set i = i + 1
        endloop
        call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933本局开放神器：\n" + s + "|r")
    endif
endfunction
function SynHolyWeapon takes integer player_i, integer item_id returns nothing
    call YDWENewItemsFormula($49303044, 1, $49303136, 1, $4930314C, 1, $63686573, 0, $63686573, 0, $63686573, 0, $49303132)
    call YDWENewItemsFormula($49303044, 1, $49303136, 1, $4930314B, 1, $63686573, 0, $63686573, 0, $63686573, 0, $49303043)
    call YDWENewItemsFormula($49303037, 1, $49303136, 1, $4930314D, 1, $63686573, 0, $63686573, 0, $63686573, 0, $4930304E)
    call YDWENewItemsFormula($49303037, 1, $49303136, 1, $4930314E, 1, $63686573, 0, $63686573, 0, $63686573, 0, $49303052)
    call YDWENewItemsFormula($4930304B, 1, $49303136, 1, $49303152, 1, $63686573, 0, $63686573, 0, $63686573, 0, $4930304C)
    call YDWENewItemsFormula($4930304B, 1, $49303136, 1, $49303151, 1, $63686573, 0, $63686573, 0, $63686573, 0, $4930304D)
    call YDWENewItemsFormula($49303131, 1, $49303136, 1, $4930314F, 1, $63686573, 0, $63686573, 0, $63686573, 0, $49303055)
    call YDWENewItemsFormula($49303131, 1, $49303136, 1, $49303150, 1, $63686573, 0, $63686573, 0, $63686573, 0, $49303133)
    call YDWENewItemsFormula($49303054, 1, $49303136, 1, $49303155, 1, $63686573, 0, $63686573, 0, $63686573, 0, $49303056)
    call YDWENewItemsFormula($49303054, 1, $49303136, 1, $49303153, 1, $63686573, 0, $63686573, 0, $63686573, 0, $49303046)
    call YDWENewItemsFormula($49303054, 1, $49303136, 1, $49303154, 1, $63686573, 0, $63686573, 0, $63686573, 0, $49303057)
endfunction

function LearnJiangHu takes integer player_i, integer jianghu_num, integer item_id returns nothing
    local player p = Player(player_i - 1)
    if item_id == jianghu_item_id[jianghu_num] then
        if jianghu_num == 1 then
            if udg_jiuyang[player_i] == 0 then
                set udg_jiuyang[player_i] = 1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜贵派成功修习九阳神功|r")
                call SaveInteger(YDHT, $41303244 * 3, 0, 4)
                call SaveInteger(YDHT, $41303243 * 3, 0, 4)
                call SaveInteger(YDHT, $41303245 * 3, 0, 4)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933贵派已经修习过该武功了|r")
                call AdjustPlayerStateBJ(10, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        elseif jianghu_num == 2 then
            if udg_jiuyin[player_i] == 0 then
                set udg_jiuyin[player_i] = 1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜贵派成功修习九阴真经|r")
                call SaveInteger(YDHT, $41303046 * 3, 0, 4)
                call SaveInteger(YDHT, $41303039 * 3, 0, 4)
                call SaveInteger(YDHT, $41303052 * 3, 0, 4)
                call SaveInteger(YDHT, $4130304E * 3, 0, 4)
                call SaveInteger(YDHT, $41303236 * 3, 0, 4)
                call SaveInteger(YDHT, $41303234 * 3, 0, 4)
                call SaveInteger(YDHT, $41303334 * 3, 0, 4)
                call SaveInteger(YDHT, $41303337 * 3, 0, 4)
                call SaveInteger(YDHT, $41303457 * 3, 0, 4)
                call SaveInteger(YDHT, $41303451 * 3, 0, 4)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933贵派已经修习过该武功了|r")
                call AdjustPlayerStateBJ(10, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        elseif jianghu_num == 3 then
            if udg_douzhuan[player_i] == 0 then
                set udg_douzhuan[player_i] = 1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜贵派成功修习斗转星移|r")
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933贵派已经修习过该武功了|r")
                call AdjustPlayerStateBJ(5, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        elseif jianghu_num == 4 then
            if udg_xixing[player_i] == 0 then
                set udg_xixing[player_i] = 1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜贵派成功修习吸星大法|r")
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933贵派已经修习过该武功了|r")
                call AdjustPlayerStateBJ(5, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        elseif jianghu_num == 5 then
            if udg_huagong[player_i] == 0 then
                set udg_huagong[player_i] = 1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜贵派成功修习化功大法|r")
                call SaveInteger(YDHT, $41303041 * 3, 0, 4)
                call SaveInteger(YDHT, $41303058 * 3, 0, 4)
                call SaveInteger(YDHT, $41303237 * 3, 0, 4)
                call SaveInteger(YDHT, $41303252 * 3, 0, 5)
                call SaveInteger(YDHT, $41303454 * 3, 0, 4)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933贵派已经修习过该武功了|r")
                call AdjustPlayerStateBJ(5, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        endif
    endif
    set p = null
endfunction
function JoinMenPai takes integer player_i, integer menpai_num, integer item_id returns nothing
    local player p = Player(player_i - 1)
    local unit array selector
    set selector[1] = gg_unit_e00H_0022
    set selector[2] = gg_unit_e00H_0023
    set selector[3] = gg_unit_e00H_0024
    set selector[4] = gg_unit_e00H_0025
    if item_id == menpai_item_id[menpai_num] then
        if menpai_num > OPEN_DOMINATION_NUM then
            call DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFFFF0000该门派尚未开放")
        else
            if join_menpai_flag[player_i] == 0 then
                set join_menpai_flag[player_i] = menpai_num
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜加入" + menpai_name[menpai_num] + "|r")
                call SetPlayerName(p, menpai_name[menpai_num] + GetPlayerName(p))
                call CreateNUnitsAtLoc(1, menpai_builder_id[menpai_num], p, born_loc[player_i], bj_UNIT_FACING)
                set builder[player_i] = bj_lastCreatedUnit
                call UnitAddAbility(builder[player_i], 'AInv')
                call PanCameraToTimedLocForPlayer(p, born_loc[player_i], 0)
                call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933玩家" + I2S(player_i) + "选择了" + menpai_name[menpai_num])
                call KillUnit(selector[player_i])
                call RemoveUnit(selector[player_i])
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经加入过门派了|r")
                call AddItemToStockBJ(item_id, gg_unit_o00A_0019, 1, 1)
            endif
        endif
    endif
    set p = null
endfunction

function InitBornLoc takes nothing returns nothing
    set born_loc[1] = Location(- 2226, 1621)
    set born_loc[2] = Location(1600, 2330)
    set born_loc[3] = Location(2250, - 1835)
    set born_loc[4] = Location(- 1742, - 2330)
endfunction

function InitMenPai takes nothing returns nothing
    set menpai_name[1] = "〓少林派〓"
    set menpai_name[2] = "〓武当派〓"
    set menpai_name[3] = "〓峨眉派〓"
    set menpai_name[4] = "〓丐帮〓"
    set menpai_name[5] = "〓全真教〓"
    set menpai_item_id[1] = $49303030
    set menpai_item_id[2] = $49303031
    set menpai_item_id[3] = $49303032
    set menpai_item_id[4] = $49303033
    set menpai_item_id[5] = $4930324B
    set menpai_builder_id[1] = $75303043
    set menpai_builder_id[2] = $75303044
    set menpai_builder_id[3] = $75303045
    set menpai_builder_id[4] = $75303046
    set menpai_builder_id[5] = $75303057
    set jianghu_item_id[1] = $49303135
    set jianghu_item_id[2] = $49303137
    set jianghu_item_id[3] = $49303138
    set jianghu_item_id[4] = $49303139
    set jianghu_item_id[5] = $49303141
    set challenge_item_id[1] = $49303146
    set challenge_item_id[2] = $49303147
    set challenge_item_id[3] = $49303148
    set challenge_item_id[4] = $49303236
    set challenge_item_id[5] = $49303145
    set challenge_item_id[6] = $49303149
    set challenge_id[1] = $48303045
    set challenge_id[2] = $48303049
    set challenge_id[3] = $4830304A
    set challenge_id[4] = $55303055
    set challenge_id[5] = $48303044
    set challenge_id[6] = $48303032
endfunction

function InitSavePlayerName takes nothing returns nothing
    loop
        exitwhen bj_forLoopAIndex >= 4
        if GetPlayerController(Player(bj_forLoopAIndex)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(bj_forLoopAIndex)) == PLAYER_SLOT_STATE_PLAYING then
            call SaveStr(YDHT, GetHandleId(Player(bj_forLoopAIndex)), GetHandleId(Player(bj_forLoopAIndex)), GetPlayerName(Player(bj_forLoopAIndex)))
            call SaveStr(YDHT, GetHandleId(Player(bj_forLoopAIndex)), GetHandleId(Player(bj_forLoopAIndex)) * 2, GetPlayerName(Player(bj_forLoopAIndex)))
        endif
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction

function PickupItem_Conditions takes nothing returns boolean
    local item it = GetManipulatedItem()
    local unit u = GetTriggerUnit()
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    local integer award = 0
    local real rand = 0
    call GoldLumberExChange(i, GetItemTypeId(it), u)
    call CheckHolyWeapon(i, GetItemTypeId(it))
    call SynHolyWeapon(i, GetItemTypeId(it))
    call Challenge(i, 1, GetItemTypeId(it))
    call Challenge(i, 2, GetItemTypeId(it))
    call Challenge(i, 3, GetItemTypeId(it))
    call Challenge(i, 4, GetItemTypeId(it))
    call Challenge(i, 5, GetItemTypeId(it))
    call Challenge(i, 6, GetItemTypeId(it))
    call LearnJiangHu(i, 1, GetItemTypeId(it))
    call LearnJiangHu(i, 2, GetItemTypeId(it))
    call LearnJiangHu(i, 3, GetItemTypeId(it))
    call LearnJiangHu(i, 4, GetItemTypeId(it))
    call LearnJiangHu(i, 5, GetItemTypeId(it))
    call JoinMenPai(i, 1, GetItemTypeId(it))
    call JoinMenPai(i, 2, GetItemTypeId(it))
    call JoinMenPai(i, 3, GetItemTypeId(it))
    call JoinMenPai(i, 4, GetItemTypeId(it))
    call JoinMenPai(i, 5, GetItemTypeId(it))
    if GetItemTypeId(it) == $4930324A then
        set rand = GetRandomReal(0, 100)
        if rand < RMinBJ(15, 10 + luck[i] * .025) then
            set award = $49303245
        elseif rand < RMinBJ(45, 30 + luck[i] * .075) then
            set award = $49303244
        elseif rand < RMinBJ(90, 60 + luck[i] * .175) then
            set award = $49303243
        else
            set award = $49303242
        endif
        call UnitAddItemById(u, award)
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933" + GetPlayerName(Player(i - 1)) + "在断指轩辕处抽取武魂石，获得了" + GetObjectName(award))
    endif
    set it = null
    set u = null
    set p = null
    return false
endfunction
function PickupItem takes nothing returns nothing
    local trigger t = CreateTrigger()
    call InitBornLoc()
    call InitMenPai()
    call InitSavePlayerName()
    call SaveMaxLevel()
    set Ih = CreateSound("Abilities\\Spells\\Items\\ResourceItems\\ReceiveGold.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(Ih, "ReceiveGold")
    call SetSoundDuration(Ih, 589)
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(t, Condition(function PickupItem_Conditions))
    set t = null
endfunction
