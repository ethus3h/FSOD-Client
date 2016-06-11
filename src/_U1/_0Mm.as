// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._0Mm

package _U1 {
import _10a._FU;

import com.company.assembleegameclient.screens.charrects.CharacterRectList;

import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;

public class _0Mm extends Sprite {

    public static const WIDTH:int = 760;
    public static const HEIGHT:int = 415;
    public static const _w6:int = 1;
    public static const _1BM:int = 2;

    public function _0Mm(_arg1:_FU, _arg2:int) {
        var _local3:Shape;
        var _local4:Graphics;
        super();
        switch (_arg2) {
            case _w6:
                this._SB = new CharacterRectList();
                break;
            case _1BM:
                this._SB = new _1sr(_arg1);
                break;
            default:
                this._SB = new Sprite();
        }
        ;
        addChild(this._SB);
        if (height > 400) {
            _local3 = new Shape();
            _local4 = _local3.graphics;
            _local4.beginFill(0);
            _local4.drawRect(0, 0, WIDTH, HEIGHT);
            _local4.endFill();
            addChild(_local3);
            mask = _local3;
        }
        ;
    }
    public var _SB:Sprite;

    public function _Vn(_arg1:Number):void {
        this._SB.y = _arg1;
    }


}
}//package _U1

