// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._14L

package _n {
import _1E1.*;

import _1Sm._sy;

import flash.display.Sprite;

public class _14L extends Sprite implements _1Db {

    public static const WIDTH:int = 20;
    public static const BEVEL:int = 4;
    public static const _1U6:int = 0;

    public const _dL:_3j = new _3j();
    public const _0c5:_0KO = new _0KO();

    public function _14L() {
        addChild(this._dL);
        addChild(this._0c5);
        this._lF();
    }
    private var _1xp:_sy;
    private var position:Number = 0;
    private var range:int;
    private var _1Gm:Number;
    private var isEnabled:Boolean = true;

    public function get _Ir():_sy {
        return ((this._1xp = ((this._1xp) || (new _sy(Number)))));
    }

    public function _1uO():Boolean {
        return (this.isEnabled);
    }

    public function _1gg(_arg1:Boolean):void {
        if (this.isEnabled != _arg1) {
            this.isEnabled = _arg1;
            if (_arg1) {
                this._lF();
            } else {
                this._1Rs();
            }
            ;
        }
        ;
    }

    public function setSize(_arg1:int, _arg2:int):void {
        this._0c5.rect.height = _arg1;
        this._dL.rect.height = _arg2;
        this.range = ((_arg2 - _arg1) - (_1U6 * 2));
        this._1Gm = (1 / this.range);
        this._dL.redraw();
        this._0c5.redraw();
        this.setPosition(this._091());
    }

    public function _0SQ():int {
        return (this._0c5.rect.height);
    }

    public function _NC():int {
        return (this._dL.rect.height);
    }

    public function _091():Number {
        return (this.position);
    }

    public function setPosition(_arg1:Number):void {
        if (_arg1 < 0) {
            _arg1 = 0;
        } else {
            if (_arg1 > 1) {
                _arg1 = 1;
            }
            ;
        }
        ;
        this.position = _arg1;
        this._0c5.y = (_1U6 + (this.range * this.position));
        ((this._1xp) && (this._1xp.dispatch(this.position)));
    }

    public function _AZ(_arg1:Number):void {
        var _local2:Number = (this.position + _arg1);
        this.setPosition(_local2);
    }

    private function _lF():void {
        this._dL._lF();
        this._dL.clicked.add(this._fT);
        this._0c5._lF();
        this._0c5._1kl.add(this._111);
        this._0c5._1sA.add(this._AZ);
    }

    private function _1Rs():void {
        this._dL._1Rs();
        this._dL.clicked.remove(this._fT);
        this._0c5._1Rs();
        this._0c5._1kl.remove(this._111);
        this._0c5._1sA.remove(this._AZ);
    }

    private function _111(_arg1:int):void {
        this.setPosition(((_arg1 - _1U6) * this._1Gm));
    }

    private function _fT(_arg1:int):void {
        var _local2:int = this._0c5.rect.height;
        var _local3:int = (_arg1 - (_local2 * 0.5));
        var _local4:int = (this._dL.rect.height - _local2);
        this.setPosition((_local3 / _local4));
    }


}
}//package _n-

