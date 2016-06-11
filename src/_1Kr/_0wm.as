// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Kr._0wm

package _1Kr {
import _U1._1O0;

import com.company.rotmg.graphics.ScreenGraphic;

import flash.display.Sprite;
import flash.geom.Rectangle;

public class _0wm extends Sprite {

    private static const _0H8:Number = 550;
    private static const _Di:int = 20;
    public static const CENTER:String = "CENTER";
    public static const RIGHT:String = "RIGHT";
    public static const LEFT:String = "LEFT";

    private const _1zP:Array = [];
    private const _b2:Array = [];

    public function _0wm() {
        this._xT();
    }
    private var _1v:ScreenGraphic;

    public function _ab(_arg1:_1O0, _arg2:String):void {
        this._1v.addChild(_arg1);
        switch (_arg2) {
            case CENTER:
                this._1zP[0] = (this._b2[0] = _arg1);
                _arg1.x = (this._1v.width / 2);
                _arg1.y = _0H8;
                return;
            case LEFT:
                this._03d(this._1zP[(this._1zP.length - 1)], _arg1);
                this._1zP.push(_arg1);
                _arg1._Vf.add(this._0Rm);
                return;
            case RIGHT:
                this._0qo(this._b2[(this._b2.length - 1)], _arg1);
                this._b2.push(_arg1);
                _arg1._Vf.add(this._06S);
                return;
        }
    }

    private function _xT():void {
        this._1v = new ScreenGraphic();
        addChild(this._1v);
    }

    private function _0Rm():void {
        var _local1:int = 1;
        while (_local1 < this._1zP.length) {
            this._03d(this._1zP[(_local1 - 1)], this._1zP[_local1]);
            _local1++;
        }
        ;
    }

    private function _03d(_arg1:_1O0, _arg2:_1O0):void {
        var _local3:Rectangle = _arg1.getBounds(_arg1);
        var _local4:Rectangle = _arg2.getBounds(_arg2);
        _arg2.x = (((_arg1.x + _local3.left) - _local4.right) - _Di);
        _arg2.y = _0H8;
    }

    private function _06S():void {
        var _local1:int = 1;
        while (_local1 < this._b2.length) {
            this._0qo(this._b2[(_local1 - 1)], this._b2[_local1]);
            _local1++;
        }
        ;
    }

    private function _0qo(_arg1:_1O0, _arg2:_1O0):void {
        var _local3:Rectangle = _arg1.getBounds(_arg1);
        var _local4:Rectangle = _arg2.getBounds(_arg2);
        _arg2.x = (((_arg1.x + _local3.right) - _local4.left) + _Di);
        _arg2.y = _0H8;
    }


}
}//package _1Kr

