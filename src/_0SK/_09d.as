// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0SK._09d

package _0SK {
import _04g.RegisterWebAccountDialog;

import _085._LQ;

import _0hi._0Dl;

import _r7._17v;

public class _09d extends _17v {

    [Inject]
    public var view:RegisterWebAccountDialog;
    [Inject]
    public var register:_0Dl;


    override public function initialize():void {
        this.view.register.add(this._jy);
    }

    override public function destroy():void {
        this.view.register.remove(this._jy);
    }

    private function _jy(_arg1:_LQ):void {
        this.register.dispatch(_arg1);
    }


}
}//package _0SK

