// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_19L._g3

package _19L {
import flash.utils.Dictionary;

public class _g3 {


    public static function _jp(_arg1:Dictionary):Array {
        var _local3:Object;
        var _local2:Array = new Array();
        for (_local3 in _arg1) {
            _local2.push(_local3);
        }
        ;
        return (_local2);
    }

    public static function _0rW(_arg1:Dictionary):Array {
        var _local3:Object;
        var _local2:Array = new Array();
        for each (_local3 in _arg1) {
            _local2.push(_local3);
        }
        ;
        return (_local2);
    }


}
}//package _19L

