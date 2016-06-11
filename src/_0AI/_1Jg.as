// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0AI._1Jg

package _0AI {
import _0CT._8w;

import _0y9._06T;

import _6u._00t;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.text.TextField;

public class _1Jg extends Sprite {

    public static const _Uk:int = 22;
    public static const _3a:int = 26;

    private static function _1ov(_arg1:TextField):void {
        _arg1.mouseWheelEnabled = false;
    }

    public function _1Jg(_arg1:String, _arg2:String) {
        var _local3:TextField;
        super();
        this.doubleClickEnabled = false;
        this.mouseEnabled = false;
        _local3 = new TextField();
        var _local4:_00t = _8w._1Sz().getInstance(_00t);
        _local4.apply(_local3, 16, 15792127, false, true);
        _local3.width = (_Uj._1CS - (_3a * 2));
        _local3.height = (_Uj._1aw - 101);
        _local3.multiline = true;
        _local3.wordWrap = true;
        _local3.htmlText = _arg2;
        _local3.x = _3a;
        _local3.y = 53;
        _local3.filters = [new DropShadowFilter(0, 0, 0)];
        _1ov(_local3);
        addChild(_local3);
        var _local5:_06T = _Uj._4D(_arg1, _Uk, 6, true);
        addChild(_local5);
    }


}
}//package _0AI

