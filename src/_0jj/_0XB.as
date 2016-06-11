// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0jj._0XB

package _0jj {
import _0Rk._0Vz;

import _0cZ.PackageOfferDialog;

import __Nj._M4;

import _r7.Command;

import _rB._1P7;

public class _0XB extends Command {

    [Inject]
    public var _1ia:_M4;
    [Inject]
    public var _1m4:_1P7;
    [Inject]
    public var packageId:int;
    [Inject]
    public var _1rn:_Oj;


    override public function execute():void {
        var _local1:_0Vz;
        if (this._1m4._0BW(this.packageId)) {
            _local1 = this._1m4._06D(this.packageId);
            this._1ia.dispatch(new PackageOfferDialog().setPackage(_local1));
        } else {
            this._1rn.dispatch();
        }
        ;
    }


}
}//package _0jj

