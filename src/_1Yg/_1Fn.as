// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Yg._1Fn

package _1Yg {
import _1PE.Account;

import _1Sm._sy;

import _1T3._1cZ;

import com.company.assembleegameclient.util._07S;
import com.company.assembleegameclient.util.offer.Offer;

public class _1Fn {

    private static const _1J:int = 2600;

    public function _1Fn() {
        this._0HX = new _sy();
        super();
    }
    [Inject]
    public var account:Account;
    [Inject]
    public var model:_1cZ;
    public var _0HX:_sy;
    private var _0u0:Number;

    public function _0rb():Boolean {
        return ((this._0u0 > 0));
    }

    public function _0WA(_arg1:Number):void {
        this._0u0 = _arg1;
    }

    public function _hR():Number {
        return (this._0u0);
    }

    public function _0DH():Number {
        return (Math.ceil(_07S._D6(this._hR())));
    }

    public function _0ku():Offer {
        var _local1:Offer;
        if (!this.model._0eR) {
            return (null);
        }
        ;
        for each (_local1 in this.model._0eR.offerList) {
            if (_local1.realmGold_ == _1J) {
                return (_local1);
            }
            ;
        }
        ;
        return (null);
    }

    public function _0Pn():void {
        this._0WA(-1);
        this._0HX.dispatch();
    }


}
}//package _1Yg

