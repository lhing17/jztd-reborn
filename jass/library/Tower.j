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
            if LoadInteger(YDHT, GetHandleId(u) * 2, i) == $41303039 then
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
                    if LoadInteger(YDHT, tower_id * 2, i) == $41303052 then
                        call UnitRemoveAbility(u, $41303051)
                        call UnitAddAbility(u, $41303051)
                        call SetPlayerAbilityAvailableBJ(false, $41303051, GetOwningPlayer(u))
                        call SetUnitAbilityLevel(u, $4130304F, LoadInteger(YDHT, tower_id * 3, i))
                        call SetUnitAbilityLevel(u, $41303050, LoadInteger(YDHT, tower_id * 3, i))
                    endif
                    if LoadInteger(YDHT, tower_id * 2, i) == $41303039 then
                        call PauseUnit(u, true)
                        call PauseUnit(u, false)
                    endif
                endif
                set i = i + 1
            endloop
        endmethod
        method setItemNum takes integer item_num returns nothing
            if item_num > 0 then
                call UnitAddAbility(u, $41303131)
                call SetUnitAbilityLevel(u, $41303131, item_num)
                call UnitMakeAbilityPermanent(u, true, $41303131)
            endif
        endmethod
        method getItemNum takes nothing returns integer
            return GetUnitAbilityLevel(u, $41303131)
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
        call SaveTowerAbility_1($6F303030, $41303036, 1)
        call SaveTowerAbility_1($6F303042, $41303031, 1)
        call SaveTowerAbility_1($6F303031, $41303031, 2)
        call SaveTowerAbility_1($6F303043, $41303031, 3)
        call SaveTowerAbility_1($6F303044, $41303031, 4)
        call SaveTowerAbility_1($6E303030, $41303032, 1)
        call SaveTowerAbility_1($6E303131, $41303032, 2)
        call SaveTowerAbility_1($6E303137, $41303032, 3)
        call SaveTowerAbility_1($6E303031, $41303037, 1)
        call SaveTowerAbility_1($6E303132, $41303037, 2)
        call SaveTowerAbility_1($6E303059, $41303031, 3)
        call SaveTowerAbility_1($6E303059, $41303154, 1)
        call SaveTowerAbility_1($6E303134, $41303031, 3)
        call SaveTowerAbility_1($6E303134, $41303154, 2)
        call SaveTowerAbility_1($6E30305A, $41303031, 3)
        call SaveTowerAbility_1($6E30305A, $41303046, 1)
        call SaveTowerAbility_1($6E303135, $41303031, 3)
        call SaveTowerAbility_1($6E303135, $41303046, 2)
        call SaveTowerAbility_1($6E303130, $41303039, 1)
        call SaveTowerAbility_1($6E303133, $41303039, 2)
        call SaveTowerAbility_1($6E303032, $41303041, 1)
        call SaveTowerAbility_1($6E303032, $41303046, 2)
        call SaveTowerAbility_1($6E303136, $41303041, 2)
        call SaveTowerAbility_1($6E303136, $41303046, 2)
        call SaveTowerAbility_1($6F303032, $41303031, 5)
        call SaveTowerAbility_1($6F303032, $41303154, 2)
        call SaveTowerAbility_1($6F303032, $41303042, 1)
        call SaveTowerAbility_1($4F303033, $41303044, 1)
        call SaveTowerAbility_1($4F303033, $41303031, 5)
        call SaveTowerAbility_1($68303031, $41303048, 1)
        call SaveTowerAbility_1($68303042, $41303048, 2)
        call SaveTowerAbility_1($68303046, $41303048, 3)
        call SaveTowerAbility_1($68303047, $41303049, 1)
        call SaveTowerAbility_1($68303043, $41303049, 2)
        call SaveTowerAbility_1($68303048, $41303049, 3)
        call SaveTowerAbility_1($6E303037, $4130304A, 1)
        call SaveTowerAbility_1($6E303138, $4130304A, 2)
        call SaveTowerAbility_1($6E303138, $4130304B, 1)
        call SaveTowerAbility_1($6E303139, $4130304B, 2)
        call SaveTowerAbility_1($6E303139, $4130304C, 2)
        call SaveTowerAbility_1($6E303038, $41303052, 1)
        call SaveTowerAbility_1($6E303141, $41303052, 1)
        call SaveTowerAbility_1($6E303141, $4130304C, 1)
        call SaveTowerAbility_1($6E303142, $41303052, 2)
        call SaveTowerAbility_1($6E303142, $4130304C, 2)
        call SaveTowerAbility_1($6E303143, $4130304E, 1)
        call SaveTowerAbility_1($6E303144, $4130304E, 2)
        call SaveTowerAbility_1($6E303145, $4130304E, 3)
        call SaveTowerAbility_1($6E303145, $41303054, 1)
        call SaveTowerAbility_1($6E303146, $41303056, 1)
        call SaveTowerAbility_1($6E303147, $41303056, 2)
        call SaveTowerAbility_1($6E303148, $41303056, 3)
        call SaveTowerAbility_1($6E303148, $41303052, 2)
        call SaveTowerAbility_1($6E30314B, $41303054, 1)
        call SaveTowerAbility_1($6E303149, $41303054, 2)
        call SaveTowerAbility_1($6E30314A, $41303054, 3)
        call SaveTowerAbility_1($6E30314A, $41303057, 1)
        call SaveTowerAbility_1($6E30314C, $41303058, 1)
        call SaveTowerAbility_1($6E30314D, $41303058, 2)
        call SaveTowerAbility_1($6E30314E, $41303058, 3)
        call SaveTowerAbility_1($6E30314E, $41303057, 2)
        call SaveTowerAbility_1($6E30314E, $41303052, 1)
        call SaveTowerAbility_1($6E30314F, $41303058, 3)
        call SaveTowerAbility_1($6E30314F, $41303057, 3)
        call SaveTowerAbility_1($6E30314F, $41303130, 1)
        call SaveTowerAbility_1($48303034, $41303052, 3)
        call SaveTowerAbility_1($48303034, $4130304C, 3)
        call SaveTowerAbility_1($48303034, $41303049, 2)
        call SaveTowerAbility_1($65303030, $41303151, 1)
        call SaveTowerAbility_1($65303030, $41303152, 1)
        call SaveTowerAbility_1($65303041, $41303151, 2)
        call SaveTowerAbility_1($65303041, $41303152, 2)
        call SaveTowerAbility_1($65303042, $41303151, 3)
        call SaveTowerAbility_1($65303042, $41303152, 2)
        call SaveTowerAbility_1($65303031, $41303151, 1)
        call SaveTowerAbility_1($65303031, $4130334C, 1)
        call SaveTowerAbility_1($65303044, $41303151, 2)
        call SaveTowerAbility_1($65303044, $4130334C, 2)
        call SaveTowerAbility_1($65303043, $41303151, 2)
        call SaveTowerAbility_1($65303043, $4130334C, 3)
        call SaveTowerAbility_1($6E303033, $41303151, 2)
        call SaveTowerAbility_1($6E303033, $41303156, 1)
        call SaveTowerAbility_1($6E303151, $41303151, 2)
        call SaveTowerAbility_1($6E303151, $41303156, 2)
        call SaveTowerAbility_1($6E303152, $41303151, 2)
        call SaveTowerAbility_1($6E303152, $41303156, 3)
        call SaveTowerAbility_1($6E303153, $41303151, 2)
        call SaveTowerAbility_1($6E303153, $41303232, 1)
        call SaveTowerAbility_1($6E303154, $41303151, 2)
        call SaveTowerAbility_1($6E303154, $41303232, 2)
        call SaveTowerAbility_1($6E303155, $41303151, 3)
        call SaveTowerAbility_1($6E303155, $41303234, 1)
        call SaveTowerAbility_1($6E303156, $41303151, 3)
        call SaveTowerAbility_1($6E303156, $41303234, 2)
        call SaveTowerAbility_1($6E303157, $41303151, 3)
        call SaveTowerAbility_1($6E303157, $41303234, 3)
        call SaveTowerAbility_1($6E303158, $41303151, 3)
        call SaveTowerAbility_1($6E303158, $41303236, 1)
        call SaveTowerAbility_1($6E303159, $41303151, 4)
        call SaveTowerAbility_1($6E303159, $41303236, 2)
        call SaveTowerAbility_1($6E30315A, $41303151, 2)
        call SaveTowerAbility_1($6E30315A, $41303237, 1)
        call SaveTowerAbility_1($6E303230, $41303151, 3)
        call SaveTowerAbility_1($6E303230, $41303237, 2)
        call SaveTowerAbility_1($6E303231, $41303151, 4)
        call SaveTowerAbility_1($6E303231, $41303237, 2)
        call SaveTowerAbility_1($6E303232, $41303151, 3)
        call SaveTowerAbility_1($6E303232, $41303243, 1)
        call SaveTowerAbility_1($6E303233, $41303151, 4)
        call SaveTowerAbility_1($6E303233, $41303243, 2)
        call SaveTowerAbility_1($6E303234, $41303151, 3)
        call SaveTowerAbility_1($6E303234, $41303244, 1)
        call SaveTowerAbility_1($6E303235, $41303151, 4)
        call SaveTowerAbility_1($6E303235, $41303244, 2)
        call SaveTowerAbility_1($6E303236, $41303151, 5)
        call SaveTowerAbility_1($6E303236, $41303245, 2)
        call SaveTowerAbility_1($6E303237, $41303151, 5)
        call SaveTowerAbility_1($6E303237, $41303239, 1)
        call SaveTowerAbility_1($6E303237, $41303248, 2)
        call SaveTowerAbility_1($48303030, $41303151, 6)
        call SaveTowerAbility_1($48303030, $41303246, 1)
        call SaveTowerAbility_1($48303030, $41303245, 3)
        call SaveTowerAbility_1($6E303041, $4130324B, 1)
        call SaveTowerAbility_1($6E303238, $4130324B, 2)
        call SaveTowerAbility_1($6E303239, $4130324B, 3)
        call SaveTowerAbility_1($6E303241, $4130324B, 4)
        call SaveTowerAbility_1($6E303242, $4130324B, 5)
        call SaveTowerAbility_1($6E303243, $41303254, 1)
        call SaveTowerAbility_1($6E303244, $41303254, 1)
        call SaveTowerAbility_1($6E303245, $41303254, 2)
        call SaveTowerAbility_1($6E303043, $41303249, 1)
        call SaveTowerAbility_1($6E303246, $41303249, 2)
        call SaveTowerAbility_1($6E303247, $4130324D, 2)
        call SaveTowerAbility_1($6E303042, $4130324B, 2)
        call SaveTowerAbility_1($6E303042, $4130324E, 1)
        call SaveTowerAbility_1($6E303248, $4130324B, 3)
        call SaveTowerAbility_1($6E303248, $41303251, 1)
        call SaveTowerAbility_1($6E303249, $4130324B, 4)
        call SaveTowerAbility_1($6E303249, $41303252, 1)
        call SaveTowerAbility_1($6E30324A, $4130324B, 5)
        call SaveTowerAbility_1($6E30324A, $4130324E, 2)
        call SaveTowerAbility_1($6E30324B, $41303254, 1)
        call SaveTowerAbility_1($6E30324B, $41303259, 1)
        call SaveTowerAbility_1($6E30324C, $41303254, 1)
        call SaveTowerAbility_1($6E30324C, $41303337, 1)
        call SaveTowerAbility_1($6E30324D, $41303254, 1)
        call SaveTowerAbility_1($6E30324D, $41303331, 1)
        call SaveTowerAbility_1($6E303045, $41303254, 1)
        call SaveTowerAbility_1($6E303045, $41303256, 1)
        call SaveTowerAbility_1($6E30324E, $41303254, 2)
        call SaveTowerAbility_1($6E30324E, $41303251, 3)
        call SaveTowerAbility_1($6E30324F, $41303254, 2)
        call SaveTowerAbility_1($6E30324F, $41303259, 2)
        call SaveTowerAbility_1($6E303250, $41303252, 4)
        call SaveTowerAbility_1($6E303251, $41303254, 2)
        call SaveTowerAbility_1($6E303251, $41303256, 2)
        call SaveTowerAbility_1($6E303252, $41303254, 2)
        call SaveTowerAbility_1($6E303252, $41303337, 2)
        call SaveTowerAbility_1($6E303253, $41303254, 2)
        call SaveTowerAbility_1($6E303253, $41303331, 2)
        call SaveTowerAbility_1($6E303253, $41303334, 1)
        call SaveTowerAbility_1($4E303047, $41303254, 3)
        call SaveTowerAbility_1($4E303047, $41303331, 3)
        call SaveTowerAbility_1($4E303047, $41303334, 2)
        call SaveTowerAbility_1($4E303047, $41303332, 1)
        call SaveTowerAbility_1($6830304F, $41303530, 1)
        call SaveTowerAbility_1($68303050, $41303530, 2)
        call SaveTowerAbility_1($68303051, $41303530, 3)
        call SaveTowerAbility_1($68303052, $41303457, 1)
        call SaveTowerAbility_1($68303053, $41303457, 2)
        call SaveTowerAbility_1($68303054, $41303457, 3)
        call SaveTowerAbility_1($68303055, $41303450, 1)
        call SaveTowerAbility_1($68303056, $41303450, 2)
        call SaveTowerAbility_1($68303056, $4130344F, 1)
        call SaveTowerAbility_1($68303057, $41303450, 2)
        call SaveTowerAbility_1($68303057, $4130344F, 2)
        call SaveTowerAbility_1($68303058, $41303450, 3)
        call SaveTowerAbility_1($68303058, $4130344F, 2)
        call SaveTowerAbility_1($68303059, $4130344E, 1)
        call SaveTowerAbility_1($6830305A, $41303458, 1)
        call SaveTowerAbility_1($68303130, $41303455, 1)
        call SaveTowerAbility_1($68303131, $41303455, 2)
        call SaveTowerAbility_1($68303131, $41303453, 1)
        call SaveTowerAbility_1($68303132, $41303456, 1)
        call SaveTowerAbility_1($68303133, $41303456, 2)
        call SaveTowerAbility_1($68303134, $41303456, 3)
        call SaveTowerAbility_1($68303135, $41303451, 1)
        call SaveTowerAbility_1($68303135, $41303454, 1)
        call SaveTowerAbility_1($48303137, $4130344E, 4)
        call SaveTowerAbility_1($48303137, $41303459, 1)
        call SaveTowerAbility_1($48303137, $41303534, 1)
        call SaveTowerAbility_1($6F303053, $41303435, 1)
        call SaveTowerAbility_1($6F303054, $41303435, 2)
        call SaveTowerAbility_1($6F303055, $41303435, 3)
        call SaveTowerAbility_1($6F303056, $41303435, 4)
        call SaveTowerAbility_1($6F303057, $41303435, 5)
        call SaveTowerAbility_1($4F303058, $41303435, 6)
        call SaveTowerAbility_1($4F303059, $41303438, 1)
        call SaveTowerAbility_1($4F303059, $41303439, 1)
        call SaveTowerAbility_1($4F303059, $41303441, 1)
        call SaveTowerAbility_1($6F30305A, $41303442, 1)
        call SaveTowerAbility_1($6F303130, $41303437, 1)
    endfunction
endlibrary