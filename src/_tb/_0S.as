// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_tb._0S

package _tb {
import _03u._1hp;
import _03u._BW;
import _03u._Fk;

import _0MO._0ua;

import _Ny._bX;

public class _0S {

    [Inject]
    public var login:_bX;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var refresh:_0ua;


    public function execute():void {
        var _local1:_Fk = new _Fk(this.login);
        _local1._1Pr(new _1hp(this.refresh));
        this._1ZX.add(_local1);
        _local1.start();
    }


}
}//package _tb

