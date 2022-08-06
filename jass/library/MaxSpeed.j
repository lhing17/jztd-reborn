library MaxSpeed /* v1.2
    *************************************************************************************
    *
    *   任意设置移动速度 突破522
    *   by 茄子
   *   更新 by Cerphy
    *
    *************************************************************************************
    *
    *   */ requires /*
    *       */ optional /*
    *           */ Table /*     hiveworkshop.com/forums/jass-resources-412/snippet-new-table-188084/
    *                       or      wc3c.net/showthread.php?t=101246
    *
    ************************************************************************************
    *
    *   SetUnitMoveSpeed(unit, speed) SetUnitMoveSpeedEx(unit, speed)
    *   设置单位移动速度
   *
    *   GetUnitMoveSpeedEx(unit)
    *   获取单位移动速度
   *
    *   SetUnitLed(unit, bool)
    *   设置单位未暂停眩晕下或被迫移动时是否被牵引，来关闭移动状态
   */
   
        globals
            private constant boolean USE_TABLE = true
            private constant boolean NEW_TABLE = true
            // Vexorian's Table or Bribe's (NEW)
            private constant boolean TEST_MODE = false
            private constant real PERIOD = 0.03125
           //  private constant real MAX_SPEED = 2088.0
           private constant real MAX_SPEED = 1400.0
            // 最大速度限定，超出视为传送。
           private constant real MIN_SPEED = 500.0
            // 判定的最小距离，此项过小或速度过大会使原地打转几率增加，超出则没有加速效果。
           // 测试最大为500刚出头，与522还有些差距
   
       endglobals
   
        module Init
            static if LIBRARY_Table and USE_TABLE then
                private static method onInit takes nothing returns nothing
                    set table = Table.create()
                endmethod
            endif
        endmodule
   
        struct ModSpeed extends array
            //private:
            private static timer tm = CreateTimer()
            private static integer instanceMaxCount = 0
            private thistype prev
            private thistype next
            private unit u
            private real lastX
            private real lastY
            private real speed
            private boolean lead
   
            //temp variables
            private static real x
            private static real y
            private static real dx
            private static real dy
            private static real dist
            private static real rate
   
            static if LIBRARY_Table and USE_TABLE then
                static if NEW_TABLE then
                    private static Table table
                else
                    private static HandleTable table
                endif
            endif
            implement Init
   
            private method destroy takes nothing returns nothing
                set this.speed = 0.
                if (this.next != 0)then
                    set this.next.prev = this.prev
                endif
                set this.prev.next = this.next
                set this.prev = thistype(0).prev
                set thistype(0).prev = this
                if (thistype(0).next == 0) then
                    call PauseTimer(tm)
                    static if TEST_MODE then
                        call BJDebugMsg("maxspeed  timer paused")
                    endif
                endif
                static if LIBRARY_Table and USE_TABLE then
                    static if NEW_TABLE then
                        call table.remove(GetHandleId(this.u))
                    else
                        call table.flush(u)
                    endif
                endif
            endmethod
   
           private method operator moveFilter takes nothing returns boolean
                return GetUnitAbilityLevel(u, 'BSTN') < 1 /*
                */ and GetUnitAbilityLevel(u, 'BPSE') < 1 /*
                */ and GetUnitMoveSpeed(u) > 521.0 /*
                */ and not IsUnitPaused(u) /*
                */ and not lead
            endmethod
   
            private method move takes nothing returns nothing
                if (not moveFilter) then
                    return
                endif
                set x = GetUnitX(u)
                set y = GetUnitY(u)
                set dx = x - lastX
                set dy = y - lastY
                set lastX = x
                set lastY = y
                set dist = SquareRoot(dx * dx + dy * dy) / PERIOD
                if (dist >= MIN_SPEED and dist <= MAX_SPEED) then
                    set rate = (speed - 522.) / dist
                    set lastX = x + dx * rate
                    set lastY = y + dy * rate
                    call SetUnitX(u, lastX)
                    call SetUnitY(u, lastY)
                    static if TEST_MODE then
                        call BJDebugMsg(R2S(rate))
                    endif
                endif
            endmethod
   
            private static method iterate takes nothing returns nothing
                local thistype this = thistype(0)
                loop
                    set this = this.next
                    exitwhen (this == 0)
                    if (GetWidgetLife(this.u) < 0.405) then
                        call this.destroy()
                    else
                        call this.move()
                    endif
                endloop
            endmethod
   
   
            //public:
            static method getInstance takes unit u returns thistype
                local thistype this = thistype(0)
                static if LIBRARY_Table and USE_TABLE then
                    static if NEW_TABLE then
                        if (table.has(GetHandleId(u))) then
                            return thistype(table[GetHandleId(u)])
                        endif
                    else
                        if (table.exists(u)) then
                            return thistype(table[u])
                        endif
                    endif
                else
                    loop
                        set this = this.next
                        exitwhen this == 0
                        if this.u == u then
                            return this
                        endif
                    endloop
                endif
                return thistype(0)
            endmethod
   
            static method setUnitLed takes unit u, boolean b returns nothing
                local ModSpeed this = ModSpeed.getInstance(u)
                if (this > 0) then
                    set this.lead = b
                debug else
                    debug call BJDebugMsg("can not set whether get leading to a null object.")
                endif
            endmethod
   
            static method getSpeed takes unit u returns real
                local thistype this = getInstance(u)
                if (this > 0 and GetUnitMoveSpeed(u) > 521.0) then
                    return this.speed
                endif
                return GetUnitMoveSpeed(u)
            endmethod
   
            static method setSpeed takes unit u, real amount returns nothing
                local thistype this
                if (u == null or GetWidgetLife(u) < 0.405) then
                    return
                endif
                set this = getInstance(u)
                if (amount < 523.) then
                    if (this > 0) then
                        call this.destroy()
                    endif
                    return
                elseif (this == 0) then
                    if (thistype(0).prev == 0)then
                        set instanceMaxCount = instanceMaxCount + 1
                        set this = instanceMaxCount
                    else
                        set this = thistype(0).prev
                        set thistype(0).prev = thistype(0).prev.prev
                    endif
                    if (thistype(0).next == 0)then
                        call TimerStart(tm, PERIOD, true, function thistype.iterate)
                        static if TEST_MODE then
                            call BJDebugMsg("maxspeed timer has started")
                        endif
                    else
                        set thistype(0).next.prev = this
                    endif
                    set this.next = thistype(0).next
                    set thistype(0).next = this
                    set this.prev = thistype(0)
   
                    set this.u = u
                    static if LIBRARY_Table and USE_TABLE then
                        static if NEW_TABLE then
                            set table[GetHandleId(u)] = this
                        else
                            set table[u ] = this
                        endif
                    endif
                endif
                set amount = RMinBJ(amount, MAX_SPEED)
                set this.lastX = GetUnitX(u)
                set this.lastY = GetUnitY(u)
                set this.speed = amount
            endmethod
        endstruct
   
        //interface:
        function SetUnitLed takes unit u, boolean b returns nothing
            call ModSpeed.setUnitLed(u, b)
        endfunction
        function GetUnitMoveSpeedEx takes unit u returns real
            return ModSpeed.getSpeed(u)
        endfunction
        function SetUnitMoveSpeedEx takes unit u, real speed returns nothing
            call ModSpeed.setSpeed(u, speed)
        endfunction
   
        hook SetUnitMoveSpeed SetUnitMoveSpeedEx
   endlibrary
   