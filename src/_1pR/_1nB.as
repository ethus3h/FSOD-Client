// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1pR._1nB

package _1pR {
import _1RN._BC;

import _pz._1Oo;

public class _1nB {

    [Inject]
    public var register:_BC;
    [Inject]
    public var _1n:_7G;


    public function execute():void {
        var _local1:_1Oo;
        _local1 = new _1Oo();
        _local1.name = "reskin";
        _local1.description = "opens the reskin UI";
        this.register.dispatch(_local1, this._1n);
    }


}
}//package _1pR

