﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._0Uw

package _07g {
import _0hi._dK;

import __Nj._0ay;

import _r7._17v;

public class _0Uw extends _17v {

    [Inject]
    public var view:_v2;
    [Inject]
    public var _0M3:_dK;
    [Inject]
    public var close:_0ay;


    override public function initialize():void {
        this.view.cancel.add(this.onCancel);
        this.view.register.add(this._jy);
    }

    override public function destroy():void {
        this.view.cancel.remove(this.onCancel);
        this.view.register.remove(this._jy);
    }

    private function _jy():void {
        this._0M3.dispatch();
    }

    private function onCancel():void {
        this.close.dispatch();
    }


}
}//package _07g

