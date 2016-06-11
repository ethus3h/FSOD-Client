// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._NL

package _0PF {
import _0cA._0bz;

import _0ld._1yV;

import _11j._8p;

import _1L3._0lX;
import _1L3._0xm;
import _1L3._1FO;
import _1L3._IG;

import _1TC._01A;

import __Nj._M4;

import _r7._17v;

import _vp._0bO;
import _vp._1AF;

public class _NL extends _17v {

    [Inject]
    public var view:_15v;
    [Inject]
    public var _e2:_IG;
    [Inject]
    public var _Iv:_0xm;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _NX:_1AF;
    [Inject]
    public var _wt:_0bO;
    [Inject]
    public var _sk:_0bz;


    override public function initialize():void {
        this.view.init();
        var _local1:_1FO = ((this._Iv._1uw) ? this._Iv._1uw : this._e2._0ER());
        this.view._1ZV(((_local1) ? _local1._1mo : null), ((_local1) ? _local1._1oB() : 0));
        this.view._1S3.add(this._0xI);
        this.view.closed.add(this._0zc);
        this.view._1tX.add(this._1i9);
        this.view._1VT.add(this._1Fy);
        this._NX.add(this._08u);
    }

    override public function destroy():void {
        this.view._1S3.remove(this._0xI);
        this.view._1tX.remove(this._1i9);
        this.view._1VT.remove(this._1Fy);
    }

    private function _08u():void {
        this.view._1xR();
    }

    private function _0zc():void {
        this._Iv.clear();
        this.view.closed.remove(this._0zc);
    }

    private function _0xI():void {
        this._Iv.caller = _15v;
        this._nU.dispatch(this._sk.getInstance(_1yV));
    }

    private function _1i9(_arg1:int):void {
        var _local2:_8p;
        _local2 = new _8p();
        _local2.objectId_ = this._Iv._1N0;
        _local2.objectType_ = this._Iv._1XH;
        _local2._18N = this._Iv._Ux;
        var _local3:_0lX = new _0lX(this._Iv._1uw._4E(), _local2, _01A._0Bc);
        this._wt.dispatch(_local3);
    }

    private function _1Fy(_arg1:int):void {
        var _local2:_8p = new _8p();
        _local2.objectId_ = this._Iv._1N0;
        _local2.objectType_ = this._Iv._1XH;
        _local2._18N = this._Iv._Ux;
        var _local3:_0lX = new _0lX(this._Iv._1uw._4E(), _local2, _01A._0Yj);
        this._wt.dispatch(_local3);
    }


}
}//package _0PF

