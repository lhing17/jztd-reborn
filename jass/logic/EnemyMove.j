function registerNextNodeChoice takes region whichNode, region choice0, region choice1, region choice2 returns nothing
    call SaveRegionHandle(YDHT, GetHandleId(whichNode), 1, choice0)
    if choice1 != null then
        call SaveRegionHandle(YDHT, GetHandleId(whichNode), 2, choice1)
    endif
    if choice2 != null then
        call SaveRegionHandle(YDHT, GetHandleId(whichNode), 3, choice2)
    endif
endfunction
function getRandomRegion takes region choice0, region choice1 returns region
    if choice1 == null or GetRandomInt(0, 100) <= 50 then
        return choice0
    endif
    return choice1
endfunction
function chooseNextNodeForRegion takes region currentNode, region previousNode returns region
    local region choice0 = LoadRegionHandle(YDHT, GetHandleId(currentNode), 1)
    local region choice1 = LoadRegionHandle(YDHT, GetHandleId(currentNode), 2)
    local region choice2 = LoadRegionHandle(YDHT, GetHandleId(currentNode), 3)
    if previousNode == null then
        return getRandomRegion(choice0, choice1)
    endif
    if GetHandleId(choice0) == GetHandleId(previousNode) then
        return getRandomRegion(choice1, choice2)
    endif
    if GetHandleId(choice1) == GetHandleId(previousNode) then
        return getRandomRegion(choice0, choice2)
    endif
    if choice2 != null and GetHandleId(choice2) == GetHandleId(previousNode) then
        return getRandomRegion(choice0, choice1)
    endif
    return getRandomRegion(choice0, choice1)
endfunction
function moveToNextNode takes unit whichUnit, region whichNode returns nothing
    local rect r = LoadRectHandle(YDHT, GetHandleId(whichNode), 0)
    local real x = GetRectCenterX(r)
    local real y = GetRectCenterY(r)
    call SaveReal(YDHT, GetHandleId(whichUnit), 61440, x)
    call SaveReal(YDHT, GetHandleId(whichUnit), 61441, y)
    call IssuePointOrderById(whichUnit, 851986, x, y)
    set r = null
endfunction
function isEnemy takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(), Player(0))
endfunction
function chooseNextNode takes nothing returns nothing
    local region currentNode = GetTriggeringRegion()
    local unit u = GetEnteringUnit()
    local region previousNode = LoadRegionHandle(YDHT, GetHandleId(u), NODE)
    local region nextNode = chooseNextNodeForRegion(currentNode, previousNode)
    call moveToNextNode(u, nextNode)
    call SaveRegionHandle(YDHT, GetHandleId(u), NODE, currentNode)
    set currentNode = null
    set u = null
    set previousNode = null
    set nextNode = null
endfunction
function registerNextChoices takes nothing returns nothing
    call registerNextNodeChoice(nodes[1], nodes[2], nodes[8], null)
    call registerNextNodeChoice(nodes[2], nodes[1], nodes[3], nodes[12])
    call registerNextNodeChoice(nodes[3], nodes[2], nodes[4], null)
    call registerNextNodeChoice(nodes[4], nodes[3], nodes[5], nodes[15])
    call registerNextNodeChoice(nodes[5], nodes[4], nodes[6], null)
    call registerNextNodeChoice(nodes[6], nodes[5], nodes[7], nodes[18])
    call registerNextNodeChoice(nodes[7], nodes[6], nodes[8], null)
    call registerNextNodeChoice(nodes[8], nodes[1], nodes[7], nodes[9])
    call registerNextNodeChoice(nodes[9], nodes[8], nodes[10], nodes[20])
    call registerNextNodeChoice(nodes[10], nodes[9], nodes[11], null)
    call registerNextNodeChoice(nodes[11], nodes[10], nodes[12], null)
    call registerNextNodeChoice(nodes[12], nodes[2], nodes[11], nodes[13])
    call registerNextNodeChoice(nodes[13], nodes[12], nodes[14], null)
    call registerNextNodeChoice(nodes[14], nodes[13], nodes[15], null)
    call registerNextNodeChoice(nodes[15], nodes[4], nodes[14], nodes[16])
    call registerNextNodeChoice(nodes[16], nodes[15], nodes[17], null)
    call registerNextNodeChoice(nodes[17], nodes[16], nodes[18], null)
    call registerNextNodeChoice(nodes[18], nodes[6], nodes[17], nodes[19])
    call registerNextNodeChoice(nodes[19], nodes[18], nodes[20], null)
    call registerNextNodeChoice(nodes[20], nodes[9], nodes[19], null)
    call registerNextNodeChoice(nodes[21], nodes[20], null, null)
    call registerNextNodeChoice(nodes[22], nodes[11], null, null)
    call registerNextNodeChoice(nodes[23], nodes[14], null, null)
    call registerNextNodeChoice(nodes[24], nodes[17], null, null)
endfunction
function initEnemyMove takes nothing returns nothing
    local trigger t = CreateTrigger()
    local integer i = 1
    set nodeRects[1] = gg_rct______________001
    set nodeRects[2] = gg_rct______________002
    set nodeRects[3] = gg_rct______________003
    set nodeRects[4] = gg_rct______________004
    set nodeRects[5] = gg_rct______________005
    set nodeRects[6] = gg_rct______________006
    set nodeRects[7] = gg_rct______________007
    set nodeRects[8] = gg_rct______________008
    set nodeRects[9] = gg_rct______________009
    set nodeRects[10] = gg_rct______________010
    set nodeRects[11] = gg_rct______________011
    set nodeRects[12] = gg_rct______________012
    set nodeRects[13] = gg_rct______________013
    set nodeRects[14] = gg_rct______________014
    set nodeRects[15] = gg_rct______________015
    set nodeRects[16] = gg_rct______________016
    set nodeRects[17] = gg_rct______________017
    set nodeRects[18] = gg_rct______________018
    set nodeRects[19] = gg_rct______________019
    set nodeRects[20] = gg_rct______________020
    set nodeRects[21] = gg_rct______________021
    set nodeRects[22] = gg_rct______________022
    set nodeRects[23] = gg_rct______________023
    set nodeRects[24] = gg_rct______________024
    loop
        exitwhen i > 24
        set nodes[i] = CreateRegion()
        call RegionAddRect(nodes[i], nodeRects[i])
        call SaveRectHandle(YDHT, GetHandleId(nodes[i]), 0, nodeRects[i])
        set i = i + 1
    endloop
    call registerNextChoices()
    set i = 1
    loop
        exitwhen i > 24
        call TriggerRegisterEnterRegionSimple(t, nodes[i])
        set i = i + 1
    endloop
    call TriggerAddCondition(t, Condition(function isEnemy))
    call TriggerAddAction(t, function chooseNextNode)
endfunction
