// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_54._0Hs

package _54 {
import _03u._0MI;

import _1PE.Account;

import _1T3._1cZ;

import _Ny.*;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util._be;
import com.company.assembleegameclient.util.offer.Offer;
import com.company.assembleegameclient.util.offer.Offers;

import flash.net.URLRequest;
import flash.net.navigateToURL;

public class _0Hs extends _0MI implements _1PD {

    [Inject]
    public var account:Account;
    [Inject]
    public var offer:Offer;
    [Inject]
    public var _1E6:_1cZ;
    [Inject]
    public var paymentMethod:String;


    override protected function startTask():void {
        Parameters.data_.paymentMethod = this.paymentMethod;
        Parameters.save();
        var _local1:Offers = this._1E6._0eR;
        var _local2:_be = _be._0ju(this.paymentMethod);
        var _local3:String = _local2._1ZB(_local1.tok, _local1.exp, this.offer);
        navigateToURL(new URLRequest(_local3), "_blank");
        _Ug(true);
    }


}
}//package _54

