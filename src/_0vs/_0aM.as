// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0vs._0aM

package _0vs {
import _0Tm._1ck;

import flash.net.LocalConnection;
import flash.system.Security;

public class _0aM {

    private const _Hq:String = "localhost";
    private const _IC:Array = [_1ck._0ZP(-436, 623), "127.0.0.1", "127.0.0.1"];
    private const _Zx:Array = [_1ck._0ZP(-437, 624), "rotmgtesting.appspot.com", "rotmghrdtesting.appspot.com"];
    private const _0Nm:Array = ["rotmgbbtesting.appspot.com"];
    private const _0v:Array = ["xlate.kabam.com"];
    private const _1fF:Array = _IC.AS3::concat(_Zx).AS3::concat(_0v).AS3::concat(_0Nm);

    [Inject]
    public var client:_14I;
    private var _1ac:String;


    public function _1rd():void {
        var _local1:String;
        for each (_local1 in this._1fF) {
            Security.allowDomain(_local1);
        }
        ;
    }

    public function _1Mq():Boolean {
        return (((this.client._h4()) || (this._cT())));
    }

    public function _1da():Boolean {
        var _local1:String = this._0If();
        return (!((this._IC.indexOf(_local1) == -1)));
    }

    private function _cT():Boolean {
        var _local3:String;
        var _local1:String = this._0If();
        var _local2 = (_local1 == this._Hq);
        for each (_local3 in this._1fF) {
            _local2 = ((_local2) || ((_local1 == _local3)));
        }
        ;
        return (_local2);
    }

    private function _0If():String {
        return ((this._1ac = ((this._1ac) || (new LocalConnection().domain))));
    }


}
}//package _0vs

