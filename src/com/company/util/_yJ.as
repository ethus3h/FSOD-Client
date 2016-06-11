// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util._yJ

package com.company.util {
public class _yJ {

    public static const _1v5:RegExp = /^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\.)+[A-Z]{2,4}$/i;


    public static function _0sW(_arg1:String):Boolean {
        return (Boolean(_arg1.match(_1v5)));
    }


}
}//package com.company.util

