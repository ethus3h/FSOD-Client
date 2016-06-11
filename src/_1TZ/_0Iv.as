// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TZ._0Iv

package _1TZ {
import _03u._0MI;

import _0SK._Qo;

import _1PE.Account;
import _1PE._0Q8;

import _Ny.*;

import com.company.assembleegameclient.util.offer.Offer;

public class _0Iv extends _0MI implements _0Vt {

    [Inject]
    public var payment:_0Q8;
    [Inject]
    public var account:Account;
    [Inject]
    public var _C:_Qo;


    override protected function startTask():void {
        var _local1:Offer = this.payment.offer;
        var _local2:Object = {
            identifier: _local1.id_,
            data: _local1.data_
        };
        this._C._1ba.addOnce(this._0k);
        this._C.purchaseItems(_local2);
    }

    private function _0k(_arg1:Object):void {
        _Ug(true);
    }


}
}//package _1TZ

