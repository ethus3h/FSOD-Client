// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_12-._kv

package _12 {
import _FT._0Rf;

import flash.external.ExternalInterface;

public class _kv {

    [Inject]
    public var _0sy:_0Rf;


    public function _f():void {
        if (ExternalInterface.available) {
            ExternalInterface.addCallback("updatePlayerCredits", this.updatePlayerCredits);
        }
        ;
    }

    private function updatePlayerCredits():void {
        this._0sy.dispatch();
    }


}
}//package _12-

