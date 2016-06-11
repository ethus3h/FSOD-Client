// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Hk._Mq

package __Hk {
import _04g.RegisterWebAccountDialog;

import _085._LQ;

import _0hi._0Dl;

import __Nj._0ay;

import _r7._17v;

public class _Mq extends _17v {

    [Inject]
    public var view:RegisterWebAccountDialog;
    [Inject]
    public var register:_0Dl;
    [Inject]
    public var _YY:_0ay;


    override public function initialize():void {
        this.view.register.add(this._jy);
        this.view.cancel.add(this._0mM);
    }

    override public function destroy():void {
        this.view.register.remove(this._jy);
    }

    private function _jy(_arg1:_LQ):void {
        this.register.dispatch(_arg1);
    }

    private function _0mM():void {
        this._YY.dispatch();
    }


}
}//package _Hk

