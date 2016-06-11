// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TZ._0Hn

package _1TZ {
import _03u._0MI;

import _0SK._Qo;

import _FT._0Rf;

import _Ny.*;

import com.company.assembleegameclient.util.offer.Offer;

public class _0Hn extends _0MI implements _1PD {

    [Inject]
    public var offer:Offer;
    [Inject]
    public var _C:_Qo;
    [Inject]
    public var _0sy:_0Rf;


    override protected function startTask():void {
        var _local1:Object = {
            identifier: this.offer.id_,
            data: this.offer.data_
        };
        this._C._1ba.addOnce(this._0k);
        this._C.purchaseItems(_local1);
    }

    private function _0k(_arg1:Object):void {
        this._0sy.dispatch();
        _Ug(true);
    }


}
}//package _1TZ

