function GetMaxLevel takes integer spell_id returns integer
    return LoadInteger(YDHT, spell_id * 3, 0)
endfunction
function SaveMaxLevel_1 takes integer spell_id, integer max_level returns nothing
    call SaveInteger(YDHT, spell_id * 3, 0, max_level)
endfunction
function SaveMaxLevel takes nothing returns nothing
    call SaveInteger(YDHT, 'A00X' * 3, 0, 3)
    call SaveInteger(YDHT, 'A027' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00V' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00R' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00N' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00K' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00W' * 3, 0, 3)
    call SaveInteger(YDHT, 'A029' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02F' * 3, 0, 3)
    call SaveInteger(YDHT, 'A01V' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02D' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02C' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02E' * 3, 0, 3)
    call SaveInteger(YDHT, 'A034' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02V' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02K' * 3, 0, 5)
    call SaveInteger(YDHT, 'A02Q' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02T' * 3, 0, 5)
    call SaveInteger(YDHT, 'A02Y' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00B' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00A' * 3, 0, 3)
    call SaveInteger(YDHT, 'A001' * 3, 0, 8)
    call SaveInteger(YDHT, 'A037' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00T' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00J' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00H' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00L' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00I' * 3, 0, 3)
    call SaveInteger(YDHT, 'A010' * 3, 0, 3)
    call SaveInteger(YDHT, 'A01Q' * 3, 0, 6)
    call SaveInteger(YDHT, 'A01R' * 3, 0, 3)
    call SaveInteger(YDHT, 'A026' * 3, 0, 3)
    call SaveInteger(YDHT, 'A024' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02H' * 3, 0, 3)
    call SaveInteger(YDHT, 'A03L' * 3, 0, 3)
    call SaveInteger(YDHT, 'A022' * 3, 0, 3)
    call SaveInteger(YDHT, 'A031' * 3, 0, 3)
    call SaveInteger(YDHT, 'A032' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02M' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02N' * 3, 0, 4)
    call SaveInteger(YDHT, 'A02I' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02R' * 3, 0, 4)
    call SaveInteger(YDHT, 'A00F' * 3, 0, 3)
    call SaveInteger(YDHT, 'A002' * 3, 0, 3)
    call SaveInteger(YDHT, 'A01T' * 3, 0, 3)
    call SaveInteger(YDHT, 'A009' * 3, 0, 3)
    call SaveInteger(YDHT, 'A007' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00D' * 3, 0, 3)
    call SaveInteger(YDHT, 'A006' * 3, 0, 1)
    call SaveInteger(YDHT, 'A050' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04O' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04P' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04W' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04N' * 3, 0, 10)
    call SaveInteger(YDHT, 'A04X' * 3, 0, 7)
    call SaveInteger(YDHT, 'A04U' * 3, 0, 4)
    call SaveInteger(YDHT, 'A04S' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04V' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04Q' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04T' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04Y' * 3, 0, 3)
    call SaveInteger(YDHT, 'A054' * 3, 0, 3)
    call SaveInteger(YDHT, 'A048' * 3, 0, 3)
    call SaveInteger(YDHT, 'A049' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04B' * 3, 0, 3)
    call SaveInteger(YDHT, 'A047' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04A' * 3, 0, 3)
    call SaveInteger(YDHT, 'A045' * 3, 0, 6)
    call SaveInteger(YDHT, 'A03N' * 3, 0, 5)
    call SaveInteger(YDHT, 'A03Q' * 3, 0, 5)
    call SaveInteger(YDHT, 'A03P' * 3, 0, 5)
    call SaveInteger(YDHT, 'A03R' * 3, 0, 5)
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
            // 记录是谁刷的怪
            call SaveInteger(YDHT, GetHandleId(bj_lastCreatedUnit), StringHash("owner"), player_i)
            // 难六以上，有概率出现变异怪
            if udg_difficulty > 5 and GetRandomInt(1, 50) <= udg_difficulty then
                call mutatedAttacker(bj_lastCreatedUnit)
            endif

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
    if item_id == 'I01C' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= 4000 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 1)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) - 4000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933黄金不足|r")
        endif
    endif
    if item_id == 'I01D' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) >= 1 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) - 1)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 2000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933珍稀币不足|r")
        endif
    endif
    if item_id == 'I028' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= 40000 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 10)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) - 40000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933黄金不足|r")
        endif
    endif
    if item_id == 'I027' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) >= 10 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) - 10)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 20000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933珍稀币不足|r")
        endif
    endif
    if item_id == 'I01Y' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) < 100 then
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + 2)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933人口上限已达上限，无法继续购买|r")
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 1)
        endif
    endif
    if item_id == 'I01Z' then
        if DzAPI_Map_Returns(p, 16) or udg_isTest[player_i] then
            if save_present[player_i] != 1 then
                set save_present[player_i] = 1
                call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933恭喜玩家" + I2S(player_i) + "领取了小型资源包")
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 3000)
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 1)
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + 5)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您未收藏游戏|r")
        endif
    endif
    if item_id == 'I020' then
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
    if item_id == 'I021' then
        if udg_point[player_i] >= 5 and udg_pointMax[player_i] + 5 <= MAX_POINT then
            if point2gold[player_i] != 1 then
                set point2gold[player_i] = 1
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 5000)
                call DisplayTimedTextToPlayer(p, 0, 0, 5, "|cFF66CC00金币+8000，扣除5积分")
                call pointChange(player_i, 5)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
        endif
    endif
    if item_id == 'I02M' then
        if udg_point[player_i] >= 5 and udg_pointMax[player_i] + 5 <= MAX_POINT then
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + 5)
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|cFF66CC00可用人口+5，扣除5积分")
            call pointChange(player_i, 5)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
        endif
    endif
    if item_id == 'I029' then
        if middle_gold_flag[player_i] == 1 then
            if middle_gold[player_i] != 1 then
                if wave >= 15 then
                    set middle_gold[player_i] = 1
                    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933恭喜玩家" + I2S(player_i) + "领取了中型金币包")
                    call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 10000)
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
    if item_id == 'I02A' then
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
    if item_id == 'I01W' then
        loop
            exitwhen i > open_shenqi
            set s = s + GetObjectName(random_shenqi[i]) + "\n"
            set i = i + 1
        endloop
        call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933本局开放神器：\n" + s + "|r")
    endif
endfunction
function SynHolyWeapon takes nothing returns nothing
    call YDWENewItemsFormula('I00D', 1, 'I016', 1, 'I01L', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I012')
    call YDWENewItemsFormula('I00D', 1, 'I016', 1, 'I01K', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I00C')
    call YDWENewItemsFormula('I007', 1, 'I016', 1, 'I01M', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I00N')
    call YDWENewItemsFormula('I007', 1, 'I016', 1, 'I01N', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I00R')
    call YDWENewItemsFormula('I00K', 1, 'I016', 1, 'I01R', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I00L')
    call YDWENewItemsFormula('I00K', 1, 'I016', 1, 'I01Q', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I00M')
    call YDWENewItemsFormula('I011', 1, 'I016', 1, 'I01O', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I00U')
    call YDWENewItemsFormula('I011', 1, 'I016', 1, 'I01P', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I013')
    call YDWENewItemsFormula('I00T', 1, 'I016', 1, 'I01U', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I00V')
    call YDWENewItemsFormula('I00T', 1, 'I016', 1, 'I01S', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I00F')
    call YDWENewItemsFormula('I00T', 1, 'I016', 1, 'I01T', 1, 'ches', 0, 'ches', 0, 'ches', 0, 'I00W')
endfunction

function LearnJiangHu takes integer player_i, integer jianghu_num, integer item_id returns nothing
    local player p = Player(player_i - 1)
    if item_id == jianghu_item_id[jianghu_num] then
        if jianghu_num == 1 then
            if udg_jiuyang[player_i] == 0 then
                set udg_jiuyang[player_i] = 1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜贵派成功修习九阳神功|r")
                call SaveInteger(YDHT, 'A02D' * 3, 0, 4)
                call SaveInteger(YDHT, 'A02C' * 3, 0, 4)
                call SaveInteger(YDHT, 'A02E' * 3, 0, 4)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933贵派已经修习过该武功了|r")
                call AdjustPlayerStateBJ(7, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        elseif jianghu_num == 2 then
            if udg_jiuyin[player_i] == 0 then
                set udg_jiuyin[player_i] = 1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜贵派成功修习九阴真经|r")
                call SaveInteger(YDHT, 'A00F' * 3, 0, 4)
                call SaveInteger(YDHT, 'A009' * 3, 0, 4)
                call SaveInteger(YDHT, 'A00R' * 3, 0, 4)
                call SaveInteger(YDHT, 'A00N' * 3, 0, 4)
                call SaveInteger(YDHT, 'A026' * 3, 0, 4)
                call SaveInteger(YDHT, 'A024' * 3, 0, 4)
                call SaveInteger(YDHT, 'A034' * 3, 0, 4)
                call SaveInteger(YDHT, 'A037' * 3, 0, 4)
                call SaveInteger(YDHT, 'A04W' * 3, 0, 4)
                call SaveInteger(YDHT, 'A04Q' * 3, 0, 4)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933贵派已经修习过该武功了|r")
                call AdjustPlayerStateBJ(5, p, PLAYER_STATE_RESOURCE_LUMBER)
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
                call SaveInteger(YDHT, 'A00A' * 3, 0, 4)
                call SaveInteger(YDHT, 'A00X' * 3, 0, 4)
                call SaveInteger(YDHT, 'A027' * 3, 0, 4)
                call SaveInteger(YDHT, 'A02R' * 3, 0, 5)
                call SaveInteger(YDHT, 'A04T' * 3, 0, 4)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933贵派已经修习过该武功了|r")
                call AdjustPlayerStateBJ(3, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        endif
    endif
    set p = null
endfunction
function JoinMenPai takes integer player_i, integer menpai_num, integer item_id returns nothing
    local player p = Player(player_i - 1)
    local unit array selector
    set selector[1] = gg_unit_e00H_0023
    set selector[2] = gg_unit_e00H_0024
    set selector[3] = gg_unit_e00H_0025
    set selector[4] = gg_unit_e00H_0026
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
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03U')
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03V')
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03W')
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03X')
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A04I')

                // call UnitAddAbility(builder[player_i], 'AInv')
                call PanCameraToTimedLocForPlayer(p, born_loc[player_i], 0)
                call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933玩家" + I2S(player_i) + "选择了" + menpai_name[menpai_num])
                call KillUnit(selector[player_i])
                call RemoveUnit(selector[player_i])
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经加入过门派了|r")
                call AddItemToStockBJ(item_id, gg_unit_o00A_0014, 1, 1)
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
    set menpai_item_id[1] = 'I000'
    set menpai_item_id[2] = 'I001'
    set menpai_item_id[3] = 'I002'
    set menpai_item_id[4] = 'I003'
    set menpai_item_id[5] = 'I02K'
    set menpai_builder_id[1] = 'u00C'
    set menpai_builder_id[2] = 'u00D'
    set menpai_builder_id[3] = 'u00E'
    set menpai_builder_id[4] = 'u00F'
    set menpai_builder_id[5] = 'u00W'
    set jianghu_item_id[1] = 'I015'
    set jianghu_item_id[2] = 'I017'
    set jianghu_item_id[3] = 'I018'
    set jianghu_item_id[4] = 'I019'
    set jianghu_item_id[5] = 'I01A'
    set challenge_item_id[1] = 'I01F'
    set challenge_item_id[2] = 'I01G'
    set challenge_item_id[3] = 'I01H'
    set challenge_item_id[4] = 'I026'
    set challenge_item_id[5] = 'I01E'
    set challenge_item_id[6] = 'I01I'
    set challenge_id[1] = 'H00E'
    set challenge_id[2] = 'H00I'
    set challenge_id[3] = 'H00J'
    set challenge_id[4] = 'U00U'
    set challenge_id[5] = 'H00D'
    set challenge_id[6] = 'H002'
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
    local integer attr = 0
    local integer value = 0
    local item it2 = null
    local integer j
    call GoldLumberExChange(i, GetItemTypeId(it), u)
    call CheckHolyWeapon(i, GetItemTypeId(it))
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
    if GetItemTypeId(it) == 'I02J' then
        set award = getRandomSoulStone(i)
        call UnitAddItemById(u, award)
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933" + GetPlayerName(Player(i - 1)) + "在断指轩辕处抽取武魂石，获得了" + GetObjectName(award))
    endif

    // 普通武器
    if GetItemTypeId(it) == 'I062' then
        set award = normal_drops[GetRandomInt(1, MAX_NORMAL_DROP)]
        set it2 = CreateItem( award, GetUnitX(builder[i]), GetUnitY(builder[i]) )
        call generateRandomAttr(it2)
        call tryUnitAddItem(builder[i], it2)
    endif
    if GetItemTypeId(it) == 'I063' then
        set award = rare_drops[GetRandomInt(1, MAX_RARE_DROP)]
        set it2 = CreateItem( award, GetUnitX(builder[i]), GetUnitY(builder[i]) )
        call generateRandomAttr(it2)
        call tryUnitAddItem(builder[i], it2)
    endif
    if GetItemTypeId(it) == 'I064' then
        set award = valuable_drops[GetRandomInt(1, MAX_VALUABLE_DROP)]
        set it2 = CreateItem( award, GetUnitX(builder[i]), GetUnitY(builder[i]) )
        call generateRandomAttr(it2)
        call tryUnitAddItem(builder[i], it2)
    endif
    if GetItemTypeId(it) == 'I066' then
        set award = ancient_drops[GetRandomInt(1, MAX_ANCIENT_DROP)]
        set it2 = CreateItem( award, GetUnitX(builder[i]), GetUnitY(builder[i]) )
        call generateRandomAttr(it2)
        call tryUnitAddItem(builder[i], it2)
    endif
    if GetItemTypeId(it) == 'I065' then
        set award = epic_drops[GetRandomInt(1, MAX_EPIC_DROP)]
        set it2 = CreateItem(award, GetUnitX(builder[i]), GetUnitY(builder[i]))
        call generateRandomAttr(it2)
        call tryUnitAddItem(builder[i], it2)
    endif

    // 物品堆叠 对于可充的物品生效
    if GetItemType(it) == ITEM_TYPE_CHARGED then
        set j = 1
        loop
            exitwhen j > 6
                if GetItemTypeId(it) == GetItemTypeId(UnitItemInSlotBJ(u, j)) and it != UnitItemInSlotBJ(u, j) then
                    set award = GetItemCharges(it)
                    call SetItemCharges(UnitItemInSlotBJ(u, j), GetItemCharges(UnitItemInSlotBJ(u, j)) + award)
                    call RemoveItem(it)
                    exitwhen true
                endif
            set j = j + 1
        endloop
    endif

    call addExtraAttr(u, it)

    set it = null
    set u = null
    set p = null
    set it2 = null
    return false
endfunction

function DropItem_Conditions takes nothing returns boolean
    local item it = GetManipulatedItem()
    local unit u = GetTriggerUnit()
    local integer attr = 0
    local integer value = 0

    // 额外属性效果
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
        call equipAddition(u, attr, - value)
    endif

    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
        call equipAddition(u, attr, - value)
    endif

    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
        call equipAddition(u, attr, - value)
    endif

    set it = null
    set u = null
    return false
endfunction

function YDWESystemItemCombineAction takes nothing returns nothing
    local item it = GetLastCombinedItem()
    call generateRandomAttr(it)
    call addExtraAttr(GetTriggerUnit(), it)
    set it = null
endfunction

function PickupItem takes nothing returns nothing
    local trigger t = CreateTrigger()
    call InitBornLoc()
    call InitMenPai()
    call InitSavePlayerName()
    call SaveMaxLevel()
    call SynHolyWeapon()
    set Ih = CreateSound("Abilities\\Spells\\Items\\ResourceItems\\ReceiveGold.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(Ih, "ReceiveGold")
    call SetSoundDuration(Ih, 589)
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(t, Condition(function PickupItem_Conditions))

    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
    call TriggerAddCondition(t, Condition(function DropItem_Conditions))

    set t = CreateTrigger()
    call YDWESyStemItemCombineRegistTrigger(t)
    call TriggerAddAction(t, function YDWESystemItemCombineAction)
    set t = null
endfunction
