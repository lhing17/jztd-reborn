/** @noSelfInFile **/
const ffi: FfiType = _require('ffi');
declare global {
    interface FfiType {
        C: {
            GetModuleHandleA(this: void, args: string);
            GetProcAddress(this: void, lib: number, name: string);
            memset(this: void, address: number, data: any, size: number): any;
        }
        cast: (this: void, arg: string, arg2: any) => any;
        cdef: (this: void, arg: string) => any;

    }
}

/**
 * 施工中...
 */
export default class UnsafeUtil {
    static gameModule: number;
    static jassModule: number;
    static objectToHandle: (this: void, arg: any) => handle;


    static _sl_init() {
        let code = `
        typedef void (*ffi_anyfunc)();
        ffi_anyfunc GetProcAddress(int lib, const char* name);
        int GetModuleHandleA(const char* lpModuleName);
        typedef uint32_t (*__stdcall object_to_handle)(uintptr_t obj);
        
        
        
        
        `;
        UnsafeUtil.cdef(code);
        let gameModule = ffi.C.GetModuleHandleA("game.dll")
        let jassModule = ffi.C.GetModuleHandleA('jass.dll')
        UnsafeUtil.gameModule = gameModule;
        UnsafeUtil.jassModule = jassModule;
        print("gameModule=" + tostring(gameModule))
        print("jassModule=" + tostring(jassModule))

        let ad = ffi.C.GetProcAddress(jassModule, ffi.cast('const char*', 456))


        // print("ad=" + tostring(ad))
        //
        UnsafeUtil.objectToHandle = ffi.cast('object_to_handle', ad);
        //
        //
        // print("objectToHandle=" + tostring(objectToHandle))


    }


    static readMemory(address: number): any {
        let ptr = ffi.cast("int *", address);
        let value = ptr[0]
        return value;
    }

    static writeMemory(address: number, data: any, size: number) {
        ffi.C.memset(address, data, size);
    }


    //bad
    // static GetRealSelectItem(): item {
    //     let ptr = ffi.cast("int *", UnsafeUtil.gameModule + 0x00BBA0F8)[0]
    //     ptr = ffi.cast("int *", ptr + 0x4)[0]
    //     ptr = ffi.cast("int *", ptr + 0x8)[0]
    //     ptr = ffi.cast("int *", ptr + 0x14)[0]
    //     ptr = ffi.cast("int *", ptr + 0xC)[0]
    //     ptr = ffi.cast("int *", ptr + 0x124)[0]
    //     let object = ptr
    //     //不是选择的物品
    //     if (object == 0) {
    //         return 0 as unknown as item;
    //     }
    //     return UnsafeUtil.objectToHandle(object) as unknown as item
    // }


    static cdef(code: string) {
        ffi.cdef(code);
    }

}