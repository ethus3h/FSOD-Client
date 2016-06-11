// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_54._0aD

package _54 {
import _03u._0MI;

import _1PE._0Q8;

import _1T3._1cZ;

import _Ny.*;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util._be;

import flash.net.URLRequest;
import flash.net.navigateToURL;

public class _0aD extends _0MI implements _0Vt {

    [Inject]
    public var data:_0Q8;
    [Inject]
    public var model:_1cZ;


    override protected function startTask():void {
        Parameters.data_.paymentMethod = this.data.paymentMethod;
        Parameters.save();
        var _local1:_be = _be._0ju(this.data.paymentMethod);
        var _local2:String = _local1._1ZB(this.model._0eR.tok, this.model._0eR.exp, this.data.offer);
        navigateToURL(new URLRequest(_local2), "_blank");
        _Ug(true);
    }


}
}//package _54

