// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_vp._0gB

package _vp {
import _1L3._0xm;
import _1L3._IG;

import _r7.Command;

public class _0gB extends Command {

    [Inject]
    public var _15w:int;
    [Inject]
    public var _e2:_IG;
    [Inject]
    public var _1pn:_1Zd;
    [Inject]
    public var _Iv:_0xm;


    override public function execute():void {
        if (this._15w < 0) {
            this._e2._0Fr();
        } else {
            this._e2._WZ(this._e2._1a8(this._15w));
        }
        ;
        this._Iv._1uw = (((this._15w < 0)) ? null : this._Iv._1uw = this._e2._1a8(this._15w));
    }


}
}//package _vp

