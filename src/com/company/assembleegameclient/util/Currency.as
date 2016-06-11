// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.Currency

package com.company.assembleegameclient.util {
public class Currency {

    public static const INVALID:int = -1;
    public static const _1mE:int = 0;
    public static const FAME:int = 1;
    public static const _vZ:int = 2;
    public static const _0mN:int = 3;


    public static function _1sg(_arg1:int):String {
        switch (_arg1) {
            case _1mE:
                return ("Gold");
            case FAME:
                return ("Fame");
            case _vZ:
                return ("Guild Fame");
            case _0mN:
                return ("Fortune Token");
        }
        ;
        return ("");
    }


}
}//package com.company.assembleegameclient.util

