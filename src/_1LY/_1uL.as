// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1LY._1uL

package _1LY {
import _07g.ChooseNameRegisterDialog;

import _0Mc.NewChooseNameFrame;

import _1PE.Account;

import __Nj._M4;

import flash.display.Sprite;

public class _1uL {

    [Inject]
    public var account:Account;
    [Inject]
    public var _nU:_M4;


    public function execute():void {
        var _local1:Sprite;
        if (this.account._vD()) {
            _local1 = new NewChooseNameFrame();
        } else {
            _local1 = new ChooseNameRegisterDialog();
        }
        ;
        this._nU.dispatch(_local1);
    }


}
}//package _1LY

