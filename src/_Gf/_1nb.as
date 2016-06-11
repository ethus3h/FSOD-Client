// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Gf._1nb

package _Gf {
import _1RN._BC;

import _pz._1Oo;

public class _1nb {

    [Inject]
    public var register:_BC;
    [Inject]
    public var setFocus:_GC;


    public function execute():void {
        var _local1:_1Oo;
        _local1 = new _1Oo();
        _local1.name = "follow";
        _local1.description = "follow a game object (by name)";
        this.register.dispatch(_local1, this.setFocus);
    }


}
}//package _Gf

