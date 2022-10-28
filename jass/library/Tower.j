library TowerLibrary
    struct Tower
        unit u = null
        static method create takes unit u, integer item_num returns Tower
            local Tower tw = Tower.allocate()
            set tw.u = u
            call tw.setAbility()
            return tw
        endmethod
        method IncAbility takes integer i returns nothing
            call IncUnitAbilityLevel(u, LoadInteger(YDHT, GetHandleId(u) * 2, i))
            call SaveInteger(YDHT, GetHandleId(u) * 3, i, LoadInteger(YDHT, GetHandleId(u) * 3, i) + 1)
            call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, GetUnitName(u) + "的" + GetAbilityName(LoadInteger(YDHT, GetHandleId(u) * 2, i)) + "已升级")
            if LoadInteger(YDHT, GetHandleId(u) * 2, i) == 'A009' then
                call PauseUnit(u, true)
                call PauseUnit(u, false)
            endif
        endmethod
        method ResetCD takes integer i returns nothing
            call UnitRemoveAbility(u, LoadInteger(YDHT, GetHandleId(u) * 2, i))
            call UnitAddAbility(u, LoadInteger(YDHT, GetHandleId(u) * 2, i))
            call SetUnitAbilityLevel(u, LoadInteger(YDHT, GetHandleId(u) * 2, i), LoadInteger(YDHT, GetHandleId(u) * 3, i))
        endmethod
        method setAbility takes nothing returns nothing
            local integer i = 0
            local integer tower_id = GetUnitTypeId(u)
            loop
                exitwhen i >= 11
                if LoadInteger(YDHT, tower_id * 2, i) != 0 then
                    if GetUnitAbilityLevel(u, LoadInteger(YDHT, tower_id * 2, i)) == 0 then
                        call UnitAddAbility(u, LoadInteger(YDHT, tower_id * 2, i))
                    endif
                    call SetUnitAbilityLevel(u, LoadInteger(YDHT, tower_id * 2, i), LoadInteger(YDHT, tower_id * 3, i))
                    call SaveInteger(YDHT, GetHandleId(u) * 2, i, LoadInteger(YDHT, tower_id * 2, i))
                    call SaveInteger(YDHT, GetHandleId(u) * 3, i, LoadInteger(YDHT, tower_id * 3, i))
                    if LoadInteger(YDHT, tower_id * 2, i) == 'A00R' then
                        call UnitRemoveAbility(u, 'A00Q')
                        call UnitAddAbility(u, 'A00Q')
                        call SetPlayerAbilityAvailableBJ(false, 'A00Q', GetOwningPlayer(u))
                        call SetUnitAbilityLevel(u, 'A00O', LoadInteger(YDHT, tower_id * 3, i))
                        call SetUnitAbilityLevel(u, 'A00P', LoadInteger(YDHT, tower_id * 3, i))
                    endif
                    if LoadInteger(YDHT, tower_id * 2, i) == 'A009' then
                        call PauseUnit(u, true)
                        call PauseUnit(u, false)
                    endif
                endif
                set i = i + 1
            endloop
        endmethod
        method setItemNum takes integer item_num returns nothing
            if item_num > 0 then
                call UnitAddAbility(u, 'A011')
                call SetUnitAbilityLevel(u, 'A011', item_num)
                call UnitMakeAbilityPermanent(u, true, 'A011')
            endif
        endmethod
        method getItemNum takes nothing returns integer
            return GetUnitAbilityLevel(u, 'A011')
        endmethod
        method getUnit takes nothing returns unit
            return u
        endmethod
    endstruct

    function getTowerInstance takes unit u returns integer
        local integer i = 0
        loop
            exitwhen i > tower_num
            if s__Tower_u[tower[i]] == u then
                return tower[i]
            endif
            set i = i + 1
        endloop
        return 0
    endfunction
    function SaveTowerAbility_1 takes integer tower_id, integer spell_id, integer level returns nothing
        local integer i = 0
        loop
            exitwhen i >= 11
            if LoadInteger(YDHT, tower_id * 2, i) == 0 then
                call SaveInteger(YDHT, tower_id * 2, i, spell_id)
                call SaveInteger(YDHT, tower_id * 3, i, level)
                exitwhen true
            endif
            set i = i + 1
        endloop
    endfunction
    function SaveTowerAbility takes nothing returns nothing
        call SaveTowerAbility_1('o000', 'A006', 1)
        call SaveTowerAbility_1('o00B', 'A001', 1)
        call SaveTowerAbility_1('o001', 'A001', 2)
        call SaveTowerAbility_1('o00C', 'A001', 3)
        call SaveTowerAbility_1('o00D', 'A001', 4)
        call SaveTowerAbility_1('n000', 'A002', 1)
        call SaveTowerAbility_1('n011', 'A002', 2)
        call SaveTowerAbility_1('n017', 'A002', 3)
        call SaveTowerAbility_1('n001', 'A007', 1)
        call SaveTowerAbility_1('n012', 'A007', 2)
        call SaveTowerAbility_1('n00Y', 'A001', 3)
        call SaveTowerAbility_1('n00Y', 'A01T', 1)
        call SaveTowerAbility_1('n014', 'A001', 3)
        call SaveTowerAbility_1('n014', 'A01T', 2)
        call SaveTowerAbility_1('n00Z', 'A001', 3)
        call SaveTowerAbility_1('n00Z', 'A00F', 1)
        call SaveTowerAbility_1('n015', 'A001', 3)
        call SaveTowerAbility_1('n015', 'A00F', 2)
        call SaveTowerAbility_1('n010', 'A009', 1)
        call SaveTowerAbility_1('n013', 'A009', 2)
        call SaveTowerAbility_1('n002', 'A00A', 1)
        call SaveTowerAbility_1('n002', 'A00F', 2)
        call SaveTowerAbility_1('n016', 'A00A', 2)
        call SaveTowerAbility_1('n016', 'A00F', 2)
        call SaveTowerAbility_1('o002', 'A001', 5)
        call SaveTowerAbility_1('o002', 'A01T', 2)
        call SaveTowerAbility_1('o002', 'A00B', 1)
        call SaveTowerAbility_1('O003', 'A00D', 1)
        call SaveTowerAbility_1('O003', 'A001', 5)
        call SaveTowerAbility_1('h001', 'A00H', 1)
        call SaveTowerAbility_1('h00B', 'A00H', 2)
        call SaveTowerAbility_1('h00F', 'A00H', 3)
        call SaveTowerAbility_1('h00G', 'A00I', 1)
        call SaveTowerAbility_1('h00C', 'A00I', 2)
        call SaveTowerAbility_1('h00H', 'A00I', 3)
        call SaveTowerAbility_1('n007', 'A00J', 1)
        call SaveTowerAbility_1('n018', 'A00J', 2)
        call SaveTowerAbility_1('n018', 'A00K', 1)
        call SaveTowerAbility_1('n019', 'A00K', 2)
        call SaveTowerAbility_1('n019', 'A00L', 2)
        call SaveTowerAbility_1('n008', 'A00R', 1)
        call SaveTowerAbility_1('n01A', 'A00R', 1)
        call SaveTowerAbility_1('n01A', 'A00L', 1)
        call SaveTowerAbility_1('n01B', 'A00R', 2)
        call SaveTowerAbility_1('n01B', 'A00L', 2)
        call SaveTowerAbility_1('n01C', 'A00N', 1)
        call SaveTowerAbility_1('n01D', 'A00N', 2)
        call SaveTowerAbility_1('n01E', 'A00N', 3)
        call SaveTowerAbility_1('n01E', 'A00T', 1)
        call SaveTowerAbility_1('n01F', 'A00V', 1)
        call SaveTowerAbility_1('n01G', 'A00V', 2)
        call SaveTowerAbility_1('n01H', 'A00V', 3)
        call SaveTowerAbility_1('n01H', 'A00R', 2)
        call SaveTowerAbility_1('n01K', 'A00T', 1)
        call SaveTowerAbility_1('n01I', 'A00T', 2)
        call SaveTowerAbility_1('n01J', 'A00T', 3)
        call SaveTowerAbility_1('n01J', 'A00W', 1)
        call SaveTowerAbility_1('n01L', 'A00X', 1)
        call SaveTowerAbility_1('n01M', 'A00X', 2)
        call SaveTowerAbility_1('n01N', 'A00X', 3)
        call SaveTowerAbility_1('n01N', 'A00W', 2)
        call SaveTowerAbility_1('n01N', 'A00R', 1)
        call SaveTowerAbility_1('n01O', 'A00X', 3)
        call SaveTowerAbility_1('n01O', 'A00W', 3)
        call SaveTowerAbility_1('n01O', 'A010', 1)
        call SaveTowerAbility_1('H004', 'A00R', 3)
        call SaveTowerAbility_1('H004', 'A00L', 3)
        call SaveTowerAbility_1('H004', 'A00I', 2)
        call SaveTowerAbility_1('e000', 'A01Q', 1)
        call SaveTowerAbility_1('e000', 'A01R', 1)
        call SaveTowerAbility_1('e00A', 'A01Q', 2)
        call SaveTowerAbility_1('e00A', 'A01R', 2)
        call SaveTowerAbility_1('e00B', 'A01Q', 3)
        call SaveTowerAbility_1('e00B', 'A01R', 2)
        call SaveTowerAbility_1('e001', 'A01Q', 1)
        call SaveTowerAbility_1('e001', 'A03L', 1)
        call SaveTowerAbility_1('e00D', 'A01Q', 2)
        call SaveTowerAbility_1('e00D', 'A03L', 2)
        call SaveTowerAbility_1('e00C', 'A01Q', 2)
        call SaveTowerAbility_1('e00C', 'A03L', 3)
        call SaveTowerAbility_1('n003', 'A01Q', 2)
        call SaveTowerAbility_1('n003', 'A01V', 1)
        call SaveTowerAbility_1('n01Q', 'A01Q', 2)
        call SaveTowerAbility_1('n01Q', 'A01V', 2)
        call SaveTowerAbility_1('n01R', 'A01Q', 2)
        call SaveTowerAbility_1('n01R', 'A01V', 3)
        call SaveTowerAbility_1('n01S', 'A01Q', 2)
        call SaveTowerAbility_1('n01S', 'A022', 1)
        call SaveTowerAbility_1('n01T', 'A01Q', 2)
        call SaveTowerAbility_1('n01T', 'A022', 2)
        call SaveTowerAbility_1('n01U', 'A01Q', 3)
        call SaveTowerAbility_1('n01U', 'A024', 1)
        call SaveTowerAbility_1('n01V', 'A01Q', 3)
        call SaveTowerAbility_1('n01V', 'A024', 2)
        call SaveTowerAbility_1('n01W', 'A01Q', 3)
        call SaveTowerAbility_1('n01W', 'A024', 3)
        call SaveTowerAbility_1('n01X', 'A01Q', 3)
        call SaveTowerAbility_1('n01X', 'A026', 1)
        call SaveTowerAbility_1('n01Y', 'A01Q', 4)
        call SaveTowerAbility_1('n01Y', 'A026', 2)
        call SaveTowerAbility_1('n01Z', 'A01Q', 2)
        call SaveTowerAbility_1('n01Z', 'A027', 1)
        call SaveTowerAbility_1('n020', 'A01Q', 3)
        call SaveTowerAbility_1('n020', 'A027', 2)
        call SaveTowerAbility_1('n021', 'A01Q', 4)
        call SaveTowerAbility_1('n021', 'A027', 2)
        call SaveTowerAbility_1('n022', 'A01Q', 3)
        call SaveTowerAbility_1('n022', 'A02C', 1)
        call SaveTowerAbility_1('n023', 'A01Q', 4)
        call SaveTowerAbility_1('n023', 'A02C', 2)
        call SaveTowerAbility_1('n024', 'A01Q', 3)
        call SaveTowerAbility_1('n024', 'A02D', 1)
        call SaveTowerAbility_1('n025', 'A01Q', 4)
        call SaveTowerAbility_1('n025', 'A02D', 2)
        call SaveTowerAbility_1('n026', 'A01Q', 5)
        call SaveTowerAbility_1('n026', 'A02E', 2)
        call SaveTowerAbility_1('n027', 'A01Q', 5)
        call SaveTowerAbility_1('n027', 'A029', 1)
        call SaveTowerAbility_1('n027', 'A02H', 2)
        call SaveTowerAbility_1('H000', 'A01Q', 6)
        call SaveTowerAbility_1('H000', 'A02F', 1)
        call SaveTowerAbility_1('H000', 'A02E', 3)
        call SaveTowerAbility_1('n00A', 'A02K', 1)
        call SaveTowerAbility_1('n028', 'A02K', 2)
        call SaveTowerAbility_1('n029', 'A02K', 3)
        call SaveTowerAbility_1('n02A', 'A02K', 4)
        call SaveTowerAbility_1('n02B', 'A02K', 5)
        call SaveTowerAbility_1('n02C', 'A02T', 1)
        call SaveTowerAbility_1('n02D', 'A02T', 1)
        call SaveTowerAbility_1('n02E', 'A02T', 2)
        call SaveTowerAbility_1('n00C', 'A02I', 1)
        call SaveTowerAbility_1('n02F', 'A02I', 2)
        call SaveTowerAbility_1('n02G', 'A02M', 2)
        call SaveTowerAbility_1('n00B', 'A02K', 2)
        call SaveTowerAbility_1('n00B', 'A02N', 1)
        call SaveTowerAbility_1('n02H', 'A02K', 3)
        call SaveTowerAbility_1('n02H', 'A02Q', 1)
        call SaveTowerAbility_1('n02I', 'A02K', 4)
        call SaveTowerAbility_1('n02I', 'A02R', 1)
        call SaveTowerAbility_1('n02J', 'A02K', 5)
        call SaveTowerAbility_1('n02J', 'A02N', 2)
        call SaveTowerAbility_1('n02K', 'A02T', 1)
        call SaveTowerAbility_1('n02K', 'A02Y', 1)
        call SaveTowerAbility_1('n02L', 'A02T', 1)
        call SaveTowerAbility_1('n02L', 'A037', 1)
        call SaveTowerAbility_1('n02M', 'A02T', 1)
        call SaveTowerAbility_1('n02M', 'A031', 1)
        call SaveTowerAbility_1('n00E', 'A02T', 1)
        call SaveTowerAbility_1('n00E', 'A02V', 1)
        call SaveTowerAbility_1('n02N', 'A02T', 2)
        call SaveTowerAbility_1('n02N', 'A02Q', 3)
        call SaveTowerAbility_1('n02O', 'A02T', 2)
        call SaveTowerAbility_1('n02O', 'A02Y', 2)
        call SaveTowerAbility_1('n02P', 'A02R', 4)
        call SaveTowerAbility_1('n02Q', 'A02T', 2)
        call SaveTowerAbility_1('n02Q', 'A02V', 2)
        call SaveTowerAbility_1('n02R', 'A02T', 2)
        call SaveTowerAbility_1('n02R', 'A037', 2)
        call SaveTowerAbility_1('n02S', 'A02T', 2)
        call SaveTowerAbility_1('n02S', 'A031', 2)
        call SaveTowerAbility_1('n02S', 'A034', 1)
        call SaveTowerAbility_1('N00G', 'A02T', 3)
        call SaveTowerAbility_1('N00G', 'A031', 3)
        call SaveTowerAbility_1('N00G', 'A034', 2)
        call SaveTowerAbility_1('N00G', 'A032', 1)
        call SaveTowerAbility_1('h00O', 'A050', 1)
        call SaveTowerAbility_1('h00P', 'A050', 2)
        call SaveTowerAbility_1('h00Q', 'A050', 3)
        call SaveTowerAbility_1('h00R', 'A04W', 1)
        call SaveTowerAbility_1('h00S', 'A04W', 2)
        call SaveTowerAbility_1('h00T', 'A04W', 3)
        call SaveTowerAbility_1('h00U', 'A04P', 1)
        call SaveTowerAbility_1('h00V', 'A04P', 2)
        call SaveTowerAbility_1('h00V', 'A04O', 1)
        call SaveTowerAbility_1('h00W', 'A04P', 2)
        call SaveTowerAbility_1('h00W', 'A04O', 2)
        call SaveTowerAbility_1('h00X', 'A04P', 3)
        call SaveTowerAbility_1('h00X', 'A04O', 2)
        call SaveTowerAbility_1('h00Y', 'A04N', 1)
        call SaveTowerAbility_1('h00Z', 'A04X', 1)
        call SaveTowerAbility_1('h010', 'A04U', 1)
        call SaveTowerAbility_1('h011', 'A04U', 2)
        call SaveTowerAbility_1('h011', 'A04S', 1)
        call SaveTowerAbility_1('h012', 'A04V', 1)
        call SaveTowerAbility_1('h013', 'A04V', 2)
        call SaveTowerAbility_1('h014', 'A04V', 3)
        call SaveTowerAbility_1('h015', 'A04Q', 1)
        call SaveTowerAbility_1('h015', 'A04T', 1)
        call SaveTowerAbility_1('H017', 'A04N', 4)
        call SaveTowerAbility_1('H017', 'A04Y', 1)
        call SaveTowerAbility_1('H017', 'A054', 1)
        call SaveTowerAbility_1('o00S', 'A045', 1)
        call SaveTowerAbility_1('o00T', 'A045', 2)
        call SaveTowerAbility_1('o00U', 'A045', 3)
        call SaveTowerAbility_1('o00V', 'A045', 4)
        call SaveTowerAbility_1('o00W', 'A045', 5)
        call SaveTowerAbility_1('O00X', 'A045', 6)
        call SaveTowerAbility_1('O00Y', 'A048', 1)
        call SaveTowerAbility_1('O00Y', 'A049', 1)
        call SaveTowerAbility_1('O00Y', 'A04A', 1)
        call SaveTowerAbility_1('o00Z', 'A04B', 1)
        call SaveTowerAbility_1('o010', 'A047', 1)
    endfunction
endlibrary