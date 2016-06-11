// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._0m8

package _n {
import _0Sj._1l_;

import flash.display.DisplayObject;
import flash.display.Sprite;

public class _0m8 extends Sprite {


    public static function make(_arg1:DisplayObject):Sprite {
        var _local4:_1l_;
        if (_arg1 == null) {
            return (null);
        }
        ;
        var _local2:Sprite = new Sprite();
        var _local3:int = 8;
        _arg1.width = (291 - _local3);
        _arg1.height = ((598 - (_local3 * 2)) - 2);
        _local2.addChild(_arg1);
        _local4 = new _1l_();
        _local4.draw(_arg1.width, (_arg1.height + 2), _1l_._1c8);
        _local4.x = _arg1.x;
        _local4.y = (_arg1.y - 1);
        _local2.addChild(_local4);
        return (_local2);
    }


}
}//package _n-

