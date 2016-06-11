// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._JJ

package _n {
import com.company.rotmg.graphics.StarGraphic;

import flash.display.Graphics;
import flash.display.Sprite;
import flash.geom.ColorTransform;

public class _JJ extends Sprite {

    private static const _du:int = 5;
    private static const _vQ:int = 4;
    private static const _07:int = 15;
    private static const _1QI:uint = 0x252525;
    private static const _1rr:uint = 0x838383;
    private static const _et:uint = 0xFFFFFF;

    private const stars:Vector.<StarGraphic> = _tH();
    private const background:Sprite = _0kH();

    public function setStars(_arg1:int):void {
        var _local2:int;
        while (_local2 < _du) {
            this._1By(_local2, _arg1);
            _local2++;
        }
        ;
    }

    private function _tH():Vector.<StarGraphic> {
        var _local1:Vector.<StarGraphic> = this._hn();
        this._1aX(_local1);
        return (_local1);
    }

    private function _hn():Vector.<StarGraphic> {
        var _local1:Vector.<StarGraphic> = new Vector.<StarGraphic>(_du, true);
        var _local2:int;
        while (_local2 < _du) {
            _local1[_local2] = new StarGraphic();
            addChild(_local1[_local2]);
            _local2++;
        }
        ;
        return (_local1);
    }

    private function _1aX(_arg1:Vector.<StarGraphic>):void {
        var _local2:int;
        while (_local2 < _du) {
            _arg1[_local2].x = (_vQ + (_arg1[0].width * _local2));
            _arg1[_local2].y = _vQ;
            _local2++;
        }
        ;
    }

    private function _0kH():Sprite {
        var _local1:Sprite = new Sprite();
        this._QO(_local1.graphics);
        addChildAt(_local1, 0);
        return (_local1);
    }

    private function _QO(_arg1:Graphics):void {
        var _local2:StarGraphic = this.stars[0];
        var _local3:int = ((_local2.width * _du) + (2 * _vQ));
        var _local4:int = (_local2.height + (2 * _vQ));
        _arg1.clear();
        _arg1.beginFill(_1QI);
        _arg1.drawRoundRect(0, 0, _local3, _local4, _07, _07);
        _arg1.endFill();
    }

    private function _1By(_arg1:int, _arg2:int):void {
        var _local3:StarGraphic = this.stars[_arg1];
        var _local4:ColorTransform = _local3.transform.colorTransform;
        _local4.color = (((_arg1 < _arg2)) ? _et : _1rr);
        _local3.transform.colorTransform = _local4;
    }


}
}//package _n-

