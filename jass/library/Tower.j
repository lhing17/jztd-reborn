globals
    constant integer ELEMENT_GOLD = 1 // 金 加赏金
    constant integer ELEMENT_WOOD = 2 // 木 加经验
    constant integer ELEMENT_ICE = 3  // 冰 加减速
    constant integer ELEMENT_FIRE = 4 // 火 加暴击伤害
    constant integer ELEMENT_EARTH = 5 // 土 加眩晕
    constant integer ELEMENT_LIGHTENING = 6 // 雷 加不稳定伤害
    constant integer ELEMENT_WIND = 7 // 风 加攻速

endglobals

library TowerLibrary
    function IsBuilder takes integer id returns boolean
        return id == 'u00C' or id == 'u00D' or id == 'u00E' or id == 'u00F' or id == 'u00W' or id == 'U00X'
    endfunction
    
    struct Tower
        unit u = null
        static method create takes unit u, integer item_num returns Tower
            local Tower tw = Tower.allocate()
            set tw.u = u
            call tw.setAbility()
            call tw.setItemNum(item_num)

            // if not IsBuilder(GetUnitTypeId(u)) and GetUnitTypeId(u) != 'o00R' then
            //     call UnitAddAbility(u, 'A0B0')
            //     call UnitMakeAbilityPermanent(u, true, 'A0B0')
            // endif
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
            if LoadInteger(YDHT, GetHandleId(u) * 2, i) == 'A00R' then
                call UnitRemoveAbility(u, 'A00Q')
                call UnitAddAbility(u, 'A00Q')
                call SetPlayerAbilityAvailableBJ(false, 'A00Q', GetOwningPlayer(u))
                call SetUnitAbilityLevel(u, 'A00O', LoadInteger(YDHT, GetHandleId(u) * 3, i))
                call SetUnitAbilityLevel(u, 'A00P', LoadInteger(YDHT, GetHandleId(u) * 3, i))
            endif
            if LoadInteger(YDHT, GetHandleId(u) * 2, i) == 'A03P' then
                call UnitRemoveAbility(u, 'A03S')
                call UnitAddAbility(u, 'A03S')
                call SetPlayerAbilityAvailableBJ(false, 'A03S', GetOwningPlayer(u))
                call SetUnitAbilityLevel(u, 'A03S', LoadInteger(YDHT, GetHandleId(u) * 3, i))
            endif
            
        endmethod
        method ResetCD takes integer i returns nothing
            call UnitRemoveAbility(u, LoadInteger(YDHT, GetHandleId(u) * 2, i))
            call UnitAddAbility(u, LoadInteger(YDHT, GetHandleId(u) * 2, i))
            call SetUnitAbilityLevel(u, LoadInteger(YDHT, GetHandleId(u) * 2, i), LoadInteger(YDHT, GetHandleId(u) * 3, i))
        endmethod
        method setAbility takes nothing returns nothing
            local integer i = 1
            local integer id = 0
            local integer tower_id = GetUnitTypeId(u)

            if IsUnitType(u, UNIT_TYPE_HERO) and not IsBuilder(tower_id) then
                call UnitAddAbility(u, 'A09K')
                call UnitMakeAbilityPermanent(u, true, 'A09K')
                call UnitAddAbility(u, 'A000')
                call UnitMakeAbilityPermanent(u, true, 'A000')
            endif
               

            if LoadStr(NHT, tower_id, 1) == "少林" then
                set id = 'A001'
            elseif LoadStr(NHT, tower_id, 1) == "武当" then
                set id = 'A00L'
            elseif LoadStr(NHT, tower_id, 1) == "峨眉" then
                set id = 'A03L'
            elseif LoadStr(NHT, tower_id, 1) == "丐帮" then
                set id = 'A02T'
            elseif LoadStr(NHT, tower_id, 1) == "全真" then
                set id = 'A04O'
            endif
            if id != 0 then
                call UnitAddAbility(u, id)
                call SaveInteger(YDHT, GetHandleId(u) * 2, 0, id)
                call SaveInteger(YDHT, GetHandleId(u) * 3, 0, 1)
            endif

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


    // 保存塔的元素属性
    function saveTowerElementAttr takes integer towerId, integer elementId, integer value returns nothing
        call SaveInteger(YDHT, towerId * 5, elementId, value)
    endfunction



    function SaveTowerAbility_1 takes integer tower_id, integer spell_id, integer level returns nothing
        local integer i = 1
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

        // O100 少林四代弟子 少林童子功	
        call SaveTowerAbility_1('O100', 'A006', 1)

        // O101 达摩院弟子 达摩棍法	
        call SaveTowerAbility_1('O101', 'A002', 1)

        // O102 戒律院弟子 拈花擒拿手	
        call SaveTowerAbility_1('O102', 'A007', 1)

        // O103 藏经阁弟子 大力金刚指	
        call SaveTowerAbility_1('O103', 'A01T', 1)

        // O104 罗汉堂弟子 达摩八法	
        call SaveTowerAbility_1('O104', 'A00F', 1)

        // O105 般若堂弟子 龙象般若功	
        call SaveTowerAbility_1('O105', 'A009', 1)

        // O106 菩提院弟子 菩提心法	
        call SaveTowerAbility_1('O106', 'A00A', 1)

        // O107 醉世 罗汉伏魔功	
        call SaveTowerAbility_1('O107', 'A00B', 1)

        // O108 少林掌门 少林罗汉阵	
        call SaveTowerAbility_1('O108', 'A00D', 1)

        // O109 武当三代弟子 柔云掌	
        call SaveTowerAbility_1('O109', 'A00H', 1)

        // O10A 知客道人 绕指柔剑法	
        call SaveTowerAbility_1('O10A', 'A00J', 1)

        // O10B 莫声谷 太极拳法	
        call SaveTowerAbility_1('O10B', 'A00R', 1)

        // O10C 殷梨亭 武当剑法	
        call SaveTowerAbility_1('O10C', 'A00K', 1)

        // O10D 张翠山 铁画银钩	
        call SaveTowerAbility_1('O10D', 'A00N', 1)

        // O10E 张松溪 内家拳法	
        call SaveTowerAbility_1('O10E', 'A00V', 1)

        // O10F 俞岱岩 纯阳无极功	
        call SaveTowerAbility_1('O10F', 'A00T', 1)

        // O10G 俞莲舟 虎爪绝户手	武当心法
        call SaveTowerAbility_1('O10G', 'A00X', 1)
        call SaveTowerAbility_1('O10G', 'A00W', 1)

        // O10H 宋远桥 真武七截阵	
        call SaveTowerAbility_1('O10H', 'A010', 1)

        // O10I 武当掌门 武当身法	
        call SaveTowerAbility_1('O10I', 'A00I', 1)

        // O10J 峨眉小师太 峨眉入门剑法
        call SaveTowerAbility_1('O10J', 'A01R', 1)

        // O10K 纪晓芙 四象掌	
        call SaveTowerAbility_1('O10K', 'A01Q', 1)

        // O10L 静慧 金顶绵掌	
        call SaveTowerAbility_1('O10L', 'A01V', 1)

        // O10M 苏梦清 天罡指穴法	
        call SaveTowerAbility_1('O10M', 'A022', 1)

        // O10N 静空 佛光普照	
        call SaveTowerAbility_1('O10N', 'A024', 1)

        // O10O 贝锦仪 峨眉身法
        call SaveTowerAbility_1('O10O', 'A026', 1)
        	
        // O10P 静虚 回风拂柳剑	
        call SaveTowerAbility_1('O10P', 'A027', 1)

        // O10Q 丁敏君 灭剑	
        call SaveTowerAbility_1('O10Q', 'A02C', 1)

        // O10R 静玄 绝剑	
        call SaveTowerAbility_1('O10R', 'A02D', 1)

        // O10S 周芷若 九阴白骨爪
        call SaveTowerAbility_1('O10S', 'A02H', 1)

        // O10T 峨眉掌门 灭绝剑法	截手九式
        call SaveTowerAbility_1('O10T', 'A02E', 1)
        call SaveTowerAbility_1('O10T', 'A02F', 1)

        // O10U 丐帮白莲使者 莲花掌	
        call SaveTowerAbility_1('O10U', 'A02M', 1)

        // O10V 大勇分舵舵主 丐帮心法	
        call SaveTowerAbility_1('O10V', 'A031', 1)

        // O10W 大信分舵舵主 丐帮入门棍法	
        call SaveTowerAbility_1('O10W', 'A02K', 1)

        // O10X 大智分舵舵主 太祖长拳	
        call SaveTowerAbility_1('O10X', 'A02I', 1)

        // O10Y 大礼分舵舵主 青竹镖	
        call SaveTowerAbility_1('O10Y', 'A02N', 1)

        // O10Z 大义分舵舵主 六合刀法
        call SaveTowerAbility_1('O10Z', 'A02Q', 1)

        // O110 大仁分舵舵主 铜锤手	
        call SaveTowerAbility_1('O110', 'A02R', 1)

        // O111 护法长老 疯魔杖法	
        call SaveTowerAbility_1('O111', 'A02V', 1)

        // O112 执法长老 逍遥游	
        call SaveTowerAbility_1('O112', 'A02Y', 1)

        // O113 传功长老 丐帮身法
        call SaveTowerAbility_1('O113', 'A037', 1)

        // O114 丐帮帮主 降龙十八掌	打狗棒法
        call SaveTowerAbility_1('O114', 'A032', 1)
        call SaveTowerAbility_1('O114', 'A034', 1)

        // O115 全真大道士 破冰掌法	
        call SaveTowerAbility_1('O115', 'A050', 1)

        // O116 苗道一 空明拳
        call SaveTowerAbility_1('O116', 'A04T', 1)

        // O117 尹志平 昊天掌
        call SaveTowerAbility_1('O117', 'A04P', 1)

        // O118 孙不二 三花聚顶	
        call SaveTowerAbility_1('O118', 'A04Y', 1)

        // O119 郝大通 全真剑法	
        call SaveTowerAbility_1('O119', 'A04N', 1)

        // O11A 谭处端 金雁功	
        call SaveTowerAbility_1('O11A', 'A054', 1)

        // O11B 刘处玄 东方第一剑	
        call SaveTowerAbility_1('O11B', 'A04U', 1)

        // O11C 王处一 后发先至	
        call SaveTowerAbility_1('O11C', 'A04S', 1)

        // O11D 丘处机 一气化三清
        call SaveTowerAbility_1('O11D', 'A04V', 1)

        // O11E 马钰 天罡北斗阵	
        call SaveTowerAbility_1('O11E', 'A04X', 1)

        // O11F 周伯通 空明拳	双手互搏
        // call SaveTowerAbility_1('O11F', 'A04T', 1)
        call SaveTowerAbility_1('O11F', 'A04Q', 1)

        // O11G 全真掌教 先天功	金雁功
        call SaveTowerAbility_1('O11G', 'A04W', 1)
        // call SaveTowerAbility_1('O11G', 'A053', 1)

        // O11H 江湖巨侠 虾米神拳	
        call SaveTowerAbility_1('O11H', 'A045', 1)

        // O11I 茅盈 五雷咒	玄冰咒 谷衣心法
        call SaveTowerAbility_1('O11I', 'A048', 1)
        call SaveTowerAbility_1('O11I', 'A049', 1)
        call SaveTowerAbility_1('O11I', 'A04A', 1)

        // O11J 韦小宝 乾坤一掷	神行百变
        call SaveTowerAbility_1('O11J', 'A047', 1)
        // call SaveTowerAbility_1('O11J', 'A00D', 1)

        // O11K 云中鹤 擒龙控鹤	
        call SaveTowerAbility_1('O11K', 'A04B', 1)

        // O11L 虚竹子 天山折梅手	生死符
        call SaveTowerAbility_1('O11L', 'A098', 1)
        // call SaveTowerAbility_1('O11L', 'A00D', 1)



    endfunction
endlibrary