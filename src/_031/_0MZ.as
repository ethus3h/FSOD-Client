// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_031._0MZ

package _031 {
import _1PE.Account;

import _1fj._0Iw;

public class _0MZ {

    [Inject]
    public var _03O:XML;
    [Inject]
    public var account:Account;


    public function execute():void {
        var _local2:XML;
        var _local1:_0Iw = (this.account as _0Iw);
        if (this._03O.hasOwnProperty("KabamPaymentInfo")) {
            _local2 = XML(this._03O.KabamPaymentInfo);
            _local1.signedRequest = _local2.signedRequest;
            _local1._19n = _local2.naid;
        }
        ;
    }


}
}//package _031

