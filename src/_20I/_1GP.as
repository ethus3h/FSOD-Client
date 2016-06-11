// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_20I._1GP

package _20I {
import _1Sm._sy;

import kabam.rotmg.assets.model._1ZZ;

public class _1GP {

    public const _Vf:_sy = new _sy(_1GP);

    public function _1GP() {
        this.state = _0Hi.NULL;
        super();
    }
    public var id:int = 0;
    public var name:String = "";
    public var unlockLevel:int;
    public var _1Ux:String;
    public var _164:_1ZZ;
    public var cost:int;
    public var limited:Boolean = false;
    public var _1cQ:Boolean = true;
    private var state:_0Hi;
    private var _tg:Boolean;

    public function _09b():Boolean {
        return (this._tg);
    }

    public function _1dU(_arg1:Boolean):void {
        if (this._tg != _arg1) {
            this._tg = _arg1;
            this._Vf.dispatch(this);
        }
        ;
    }

    public function _1b7():_0Hi {
        return (this.state);
    }

    public function setState(_arg1:_0Hi):void {
        if (this.state != _arg1) {
            this.state = _arg1;
            this._Vf.dispatch(this);
        }
        ;
    }


}
}//package _20I

