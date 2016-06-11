// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-._1CJ

package _4 {
import _07g._2v;

import _0CT._8w;

import _0Ql._0q;

import _0no._fY;

import _0y9._06T;

import _10a._FU;

import _1Ea._1rP;

import _1Kr._1E8;

import _1Sm._sy;

import _U1._1O0;
import _U1._Y5;

import com.company.rotmg.graphics.ScreenGraphic;

import flash.display.Shape;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextFieldAutoSize;

public class _1CJ extends Sprite {

    private const base:_1E8 = _0NM();
    private const account:_Y5 = _Yu();
    private const _08l:Shape = _1gh();
    private const _0P5:_fY = _0bX();
    private const _RA:ScreenGraphic = _xT();
    private const _0zV:_1O0 = _6C();
    private const _11D:_1O0 = _3w();
    private const list:_0Qj = _0hz();
    private const _12X:ClassDetailView = _0sH();
    public const play:_sy = new _0q(_0zV, MouseEvent.CLICK);
    public const back:_sy = new _0q(_11D, MouseEvent.CLICK);
    public const _qH:_2v = _Do();

    public function _1WZ(_arg1:Boolean):void {
        if (!_arg1) {
            this._0zV.deactivate();
        }
        ;
    }

    private function _0NM():_1E8 {
        var _local1:_1E8 = new _1E8();
        addChild(_local1);
        return (_local1);
    }

    private function _Yu():_Y5 {
        var _local1:_Y5 = new _Y5();
        addChild(_local1);
        return (_local1);
    }

    private function _0bX():_fY {
        var _local1:_fY;
        _local1 = new _fY(null, true, true);
        var _local2:_FU = _8w._1Sz().getInstance(_FU);
        if (_local2 != null) {
            _local1.draw(_local2._1fB(), _local2._00f(), _local2._06o());
        }
        ;
        _local1.x = 800;
        _local1.y = 20;
        addChild(_local1);
        return (_local1);
    }

    private function _1gh():Shape {
        var _local1:Shape = new Shape();
        _local1.graphics.clear();
        _local1.graphics.lineStyle(2, 0x545454);
        _local1.graphics.moveTo(0, 105);
        _local1.graphics.lineTo(800, 105);
        _local1.graphics.moveTo(346, 105);
        _local1.graphics.lineTo(346, 526);
        addChild(_local1);
        return (_local1);
    }

    private function _xT():ScreenGraphic {
        var _local1:ScreenGraphic = new ScreenGraphic();
        addChild(_local1);
        return (_local1);
    }

    private function _6C():_1O0 {
        var _local1:_1O0;
        _local1 = new _1O0(_1rP._1Ga, 36, false);
        _local1.setAutoSize(TextFieldAutoSize.CENTER);
        _local1.setVerticalAlign(_06T.MIDDLE);
        _local1.x = (400 - (_local1.width / 2));
        _local1.y = 550;
        addChild(_local1);
        return (_local1);
    }

    private function _3w():_1O0 {
        var _local1:_1O0;
        _local1 = new _1O0(_1rP.BACK, 22, false);
        _local1.setVerticalAlign(_06T.MIDDLE);
        _local1.x = 30;
        _local1.y = 550;
        addChild(_local1);
        return (_local1);
    }

    private function _0hz():_0Qj {
        var _local1:_0Qj;
        _local1 = new _0Qj();
        _local1.x = 351;
        _local1.y = 110;
        addChild(_local1);
        return (_local1);
    }

    private function _0sH():ClassDetailView {
        var _local1:ClassDetailView;
        _local1 = new ClassDetailView();
        _local1.x = 5;
        _local1.y = 110;
        addChild(_local1);
        return (_local1);
    }

    private function _Do():_2v {
        var _local1:_2v = new _2v();
        _local1.push(this._0zV._Vf);
        _local1.complete.add(this._0sB);
        return (_local1);
    }

    private function _0sB():void {
        this._0zV.x = (stage.stageWidth / 2);
    }


}
}//package _4-

