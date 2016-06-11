// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._1w9

package _0PF {
import _0cA._0bz;

import _0ld._1yV;

import _1L3._0xm;
import _1L3._1Nl;

import _1TC._01A;

import _Vb.ErrorDialog;

import __Nj._M4;

import _r7._17v;

import _vp._0bO;

public class _1w9 extends _17v {

    private const native:String = "Pets.fuseError";

    [Inject]
    public var view:_0ru;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _Iv:_0xm;
    [Inject]
    public var _wt:_0bO;
    [Inject]
    public var _sk:_0bz;


    override public function initialize():void {
        this.view.init(this._Iv);
        this.view._1S3.add(this._0xI);
        this.view._1tX.add(this._1i9);
        this.view._1VT.add(this._1Fy);
        this.view.closed.addOnce(this._0zc);
    }

    override public function destroy():void {
        this.view._1S3.remove(this._0xI);
        this.view._1tX.remove(this._1i9);
        this.view._1VT.remove(this._1Fy);
    }

    private function _0xI(_arg1:String):void {
        this._Iv.caller = _0ru;
        this._Iv.selected = _arg1;
        this._nU.dispatch(this._sk.getInstance(_1yV));
    }

    private function _1Fy(_arg1:int):void {
        var _local2:_1Nl;
        if (this._Iv._7U()) {
            _local2 = new _1Nl(this._Iv._1uw._4E(), this._Iv._1V._4E(), _01A._0Yj);
            this._0zc();
            this._wt.dispatch(_local2);
        } else {
            this._nU.dispatch(new ErrorDialog(this.native));
        }
        ;
    }

    private function _1i9(_arg1:int):void {
        var _local2:_1Nl;
        if (this._Iv._7U()) {
            _local2 = new _1Nl(this._Iv._1uw._4E(), this._Iv._1V._4E(), _01A._0Bc);
            this._0zc();
            this._wt.dispatch(_local2);
        } else {
            this._nU.dispatch(new ErrorDialog(this.native));
        }
        ;
    }

    private function _0zc():void {
        this._Iv.clear();
    }


}
}//package _0PF

