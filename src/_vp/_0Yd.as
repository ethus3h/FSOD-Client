// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_vp._0Yd

package _vp {
import _0ld.NewAbility;

import _0tk.Command;

import _1L3._0dF;

import __Nj._M4;

public class _0Yd extends Command {

    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _1Iv:_0dF;
    [Inject]
    public var _z:int;


    override public function execute():void {
        var _local1:NewAbility = new NewAbility(this._1Iv._4E(this._z));
        this._nU.dispatch(_local1);
    }


}
}//package _vp

