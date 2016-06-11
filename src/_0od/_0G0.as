// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._0G0

package _0od {
import _0CT._8w;

import _0tf._0yo;

import _1PE.Account;

import _1i0._1aE;

import _6u._TG;

import __Nj._0ay;
import __Nj._M4;

import _nb._0Ff;

import _r7._17v;

public class _0G0 extends _17v {

    [Inject]
    public var view:_0xZ;
    [Inject]
    public var change:_0Ff;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _X8:_1aE;
    [Inject]
    public var account:Account;
    private var newPassword:String;


    override public function initialize():void {
        this.view.change.add(this._1PA);
        this._X8.add(this._31);
    }

    override public function destroy():void {
        this.view.change.remove(this._1PA);
        this._X8.remove(this._31);
    }

    private function _1PA():void {
        var _local1:_0yo;
        var _local2:Object;
        if (((((this._xN()) && (this._1M5()))) && (this._15V()))) {
            this.view._1p9();
            this.view.disable();
            _local1 = _8w._1Sz().getInstance(_0yo);
            _local2 = {};
            _local2.password = this.view.password_.text();
            this.newPassword = this.view._0sa.text();
            _local2.newPassword = this.view._0sa.text();
            _local2.guid = this.account.getUserId();
            _local1.sendRequest("/account/changePassword", _local2);
            _local1.complete.addOnce(this.onComplete);
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

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (!_arg1) {
            this._31(_arg2);
        } else {
            this.account._05b(this.account.getUserId(), this.newPassword);
            this.closeDialogs.dispatch();
        }
        ;
    }

    private function _31(_arg1:String):void {
        this.view._0sa._044(_arg1);
        this.view._bx();
    }


}
}//package _0od

