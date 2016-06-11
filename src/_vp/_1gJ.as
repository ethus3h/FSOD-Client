// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_vp._1gJ

package _vp {
import _1RN._BC;

import _pz._1Oo;

public class _1gJ {

    [Inject]
    public var register:_BC;
    [Inject]
    public var _1bL:_0zI;


    public function execute():void {
        var _local1:_1Oo;
        _local1 = new _1Oo();
        _local1.name = "caretaker";
        _local1.description = "opens the pets caretaker query UI";
        this.register.dispatch(_local1, this._1bL);
    }


}
}//package _vp

