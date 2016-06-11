// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_vp._0WT

package _vp {
import _0cA._0bz;

import _0tk.Command;

import _1TC._0zf;

import _1kt.EvolveDialog;

import __Nj._M4;

public class _0WT extends Command {

    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _1nC:_0zf;
    [Inject]
    public var _sk:_0bz;


    override public function execute():void {
        var _local1:EvolveDialog = this._sk.getInstance(EvolveDialog);
        this._nU.dispatch(_local1);
        _local1._1SM._1KA(this._1nC);
    }


}
}//package _vp

