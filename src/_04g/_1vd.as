// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04g._1vd

package _04g {
import _085._LQ;

import _0CT._8w;

import _0Mc.Frame;
import _0Mc._eR;

import _0Mr._5R;

import _0Sj._05E;

import _0tf._0yo;

import _0y9._06T;

import _1PE.Account;

import _1Sm._sy;

import _6u._TG;

import com.company.util._0CM;
import com.company.util._yJ;

import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _1vd extends Frame {

    public function _1vd() {
        this.register = new _sy(_LQ);
        super(_TG._13q, _TG._yp, _TG._with);
        this._18F();
        removeChild(_4j);
        this.account = _8w._1Sz().getInstance(Account);
        this._1rh();
        this._1Bm();
        this.addEventListeners();
    }
    public var register:_sy;
    public var cancel:_sy;
    private var _1K6:_eR;
    private var account:Account;
    private var _Mt:_05E;
    private var _UF:Boolean = false;

    private function addEventListeners():void {
        _01h.addEventListener(MouseEvent.CLICK, this._mO);
        this._Mt.addEventListener(MouseEvent.CLICK, this.onCancel);
    }

    private function _1rh():void {
        this._1K6 = new _eR(_TG._Uv, false);
        if (_yJ._0sW(this.account.getUserId())) {
            this._1K6.inputText_._1Nq(this.account.getUserId());
        } else {
            this._1K6.inputText_._1Nq("");
            this._UF = true;
        }
        ;
        _0qq(this._1K6);
        this._Mt = new _05E();
        this._Mt.y = -2;
        this._Mt.x = ((w_ - this._Mt.width) - 8);
        addChild(this._Mt);
    }

    private function _1Bm():void {
        this._1K6.tabIndex = 1;
        _01h.tabIndex = 2;
        this._1K6.tabEnabled = true;
        _01h.tabEnabled = true;
    }

    private function close():void {
        if (((parent) && (parent.contains(this)))) {
            parent.removeChild(this);
        }
        ;
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._1RL();
        } else {
            this._31(_arg2);
        }
        ;
        _01h.addEventListener(MouseEvent.CLICK, this._mO);
    }

    private function _1RL():void {
        var _local1:Account = _8w._1Sz().getInstance(Account);
        if (!this._UF) {
            _local1._05b(this._1K6.text(), _local1._f5());
        }
        ;
        removeChild(_zj);
        _zj = new _06T().setSize(12).setColor(0xB3B3B3);
        _zj.setStringBuilder(new _5R().setParams("WebAccountDetailDialog.sent"));
        _zj.filters = [new DropShadowFilter(0, 0, 0)];
        _zj.x = 5;
        _zj.y = 3;
        _zj.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        addChild(_zj);
    }

    private function _31(_arg1:String):void {
        removeChild(_zj);
        _zj = new _06T().setSize(12).setColor(16549442);
        _zj.setStringBuilder(new _5R().setParams(_arg1));
        _zj.filters = [new DropShadowFilter(0, 0, 0)];
        _zj.x = 5;
        _zj.y = 3;
        _zj.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        addChild(_zj);
    }

    private function _Dr():Boolean {
        var _local1:Boolean = _yJ._0sW(this._1K6.text());
        if (!_local1) {
            this._1K6._044(_TG._20M);
        }
        ;
        return (_local1);
    }

    private function _18F():void {
        this.x = ((WebMain._0b2.stageWidth / 2) - (this.w_ / 2));
        this.y = ((WebMain._0b2.stageHeight / 2) - (this.h_ / 2));
    }

    private function onCancel(_arg1:MouseEvent):void {
        this.close();
    }

    private function _mO(_arg1:MouseEvent):void {
        var _local2:_0yo;
        var _local3:Object;
        if (this._Dr()) {
            _local2 = _8w._1Sz().getInstance(_0yo);
            _local2.complete.addOnce(this.onComplete);
            _local3 = {newGuid: this._1K6.text()};
            _0CM._0lh(_local3, this.account._1iT());
            _local2.sendRequest("account/changeEmail", _local3);
            _01h.removeEventListener(MouseEvent.CLICK, this._mO);
        }
        ;
    }


}
}//package _04g

