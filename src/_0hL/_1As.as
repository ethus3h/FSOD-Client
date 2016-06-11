// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._1As

package _0hL {
import flash.utils.getQualifiedClassName;

public class _1As {

    private static var _0HY:uint;


    public static function create(_arg1 = null):String {
        if ((_arg1 is Class)) {
            _arg1 = getQualifiedClassName(_arg1).split("::").pop();
        }
        ;
        return ((((((_arg1) ? (_arg1 + "-") : "") + _0HY++.toString(16)) + "-") + (Math.random() * 0xFF).toString(16))
    )
        ;
    }


}
}//package _0hL

