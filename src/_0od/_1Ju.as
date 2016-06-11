// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._1Ju

package _0od {
import _03u._wP;

import _085._09W;

import _1i0._1aE;

import _6u._TG;

import __Nj._M4;

import _nb._0Ff;

import _r7._17v;

public class _1Ju extends _17v {

    [Inject]
    public var view:WebChangePasswordDialog;
    [Inject]
    public var change:_0Ff;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _X8:_1aE;


    override public function initialize():void {
        this.view.change.add(this._1PA);
        this.view.cancel.add(this.onCancel);
        this._X8.add(this._31);
    }

    override public function destroy():void {
        this.view.change.remove(this._1PA);
        this.view.cancel.remove(this.onCancel);
        this._X8.remove(this._31);
    }

    private function onCancel():void {
        this._nU.dispatch(new WebAccountDetailDialog());
    }

    private function _1PA():void {
        var _local1:_09W;
        if (((((this._xN()) && (this._1M5()))) && (this._15V()))) {
            this.view.disable();
            this.view._1p9();
            _local1 = new _09W();
            _local1._kT = this.view.password_.text();
            _local1.newPassword = this.view._0sa.text();
            this.change.dispatch(_local1);
        }
        ;
    }

    private function _xN():Boolean {
        var _local1 = (this.view.password_.text().length >= 5);
        if (!_local1) {
            this.view.password_._044(_TG._0MJ);
        }
        ;
        return (_local1);
    }

    private function _1M5():Boolean {
        var _local1 = (this.view._0sa.text().length >= 10);
        if (!_local1) {
            this.view._0sa._044(_TG._1FQ);
        }
        ;
        return (_local1);
    }

    private function _15V():Boolean {
        var _local1 = (this.view._0sa.text() == this.view._0zL.text());
        if (!_local1) {
            this.view._0zL._044(_TG._0V6);
        }
        ;
        return (_local1);
    }

    private function _31(_arg1:_wP):void {
        this.view._044(_arg1.error);
        this.view._bx();
    }


}
}//package _0od

