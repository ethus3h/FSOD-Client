// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._0hH

package _0hL {
import _0cA._0bz;

import _0zW.allOf;
import _0zW.not;

import _1PM._1YQ;
import _1PM._1kh;
import _1PM._Ld;
import _1PM._YL;

import _1fY._1rS;

import _hk.instanceOf;

import flash.display.DisplayObject;
import flash.utils.Dictionary;

public class _0hH {

    private static const _0P2:_1rS = allOf(instanceOf(Object), not(instanceOf(Class)), not(instanceOf(DisplayObject)));

    private const _01p:String = _1As.create(_0hH);
    private const _00i:ObjectProcessor = new ObjectProcessor();
    private const _0HF:Dictionary = new Dictionary();
    private const _0wD:Array = [];

    public function _0hH(_arg1:_Ld) {
        this._6y = _arg1._sk;
        this._0gD = _arg1._F4(this);
        this._0Jl(instanceOf(Class), this._dP);
        this._0Jl(_0P2, this._kN);
        _arg1._11b.addEventListener(_1kh._02r, this.initialize, false, -100);
    }
    private var _6y:_0bz;
    private var _0gD:_1YQ;
    private var _1qA:Boolean;

    public function _0rA(_arg1:Object):void {
        if (!this._0HF[_arg1]) {
            this._0HF[_arg1] = true;
            this._00i._0ie(_arg1);
        }
        ;
    }

    public function _0Jl(_arg1:_1rS, _arg2:Function):void {
        this._00i._Wn(_arg1, _arg2);
    }

    public function toString():String {
        return (this._01p);
    }

    private function _dP(_arg1:Class):void {
        if (this._1qA) {
            this._0gD.debug("Already initialized. Instantiating config class {0}", [_arg1]);
            this._0Fp(_arg1);
        } else {
            this._0gD.debug("Not yet initialized. Queuing config class {0}", [_arg1]);
            this._0wD.push(_arg1);
        }
        ;
    }

    private function _kN(_arg1:Object):void {
        if (this._1qA) {
            this._0gD.debug("Already initialized. Injecting into config object {0}", [_arg1]);
            this._0ie(_arg1);
        } else {
            this._0gD.debug("Not yet initialized. Queuing config object {0}", [_arg1]);
            this._0wD.push(_arg1);
        }
        ;
    }

    private function _Ef():void {
        var _local1:Object;
        for each (_local1 in this._0wD) {
            if ((_local1 is Class)) {
                this._0gD.debug("Now initializing. Instantiating config class {0}", [_local1]);
                this._0Fp((_local1 as Class));
            } else {
                this._0gD.debug("Now initializing. Injecting into config object {0}", [_local1]);
                this._0ie(_local1);
            }
            ;
        }
        ;
        this._0wD.length = 0;
    }

    private function _0Fp(_arg1:Class):void {
        var _local2:_YL = (this._6y.getInstance(_arg1) as _YL);
        ((_local2) && (_local2.configure()));
    }

    private function _0ie(_arg1:Object):void {
        this._6y._aU(_arg1);
        var _local2:_YL = (_arg1 as _YL);
        ((_local2) && (_local2.configure()));
    }

    private function initialize(_arg1:_1kh):void {
        if (!this._1qA) {
            this._1qA = true;
            this._Ef();
        }
        ;
    }


}
}//package _0hL

