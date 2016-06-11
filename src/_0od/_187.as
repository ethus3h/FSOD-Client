// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._187

package _0od {
import _085._LQ;

import _0Mc.Frame;
import _0Mc._eR;

import _0Mr._1M;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.ui._Wt;
import com.company.util._1N;

import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;

public class _187 extends Frame {

    public function _187(_arg1:Boolean = false) {
        super(_TG._0qj, "", _TG._1Cb, "/signIn");
        this._0ZZ();
        if (_arg1) {
            addChild(this._4D("Attention!", -165, -85).setColor(0xFF0000));
            addChild(this._4D("A new password was sent to your Sign In Email Address.", -165, -65));
            addChild(this._4D("Please use the new password to Sign In.", -165, -45));
        }
        ;
        this.forgot = new _0q(this._NY, MouseEvent.CLICK);
        this.register = new _0q(this._1RY, MouseEvent.CLICK);
        this._ck = new _sy(_LQ);
    }
    public var _ck:_sy;
    public var forgot:_sy;
    public var register:_sy;
    public var email:_eR;
    private var password:_eR;
    private var _NY:_Wt;
    private var _1RY:_Wt;

    public function _044(_arg1:String):void {
        this.password._044(_arg1);
    }

    public function _4D(_arg1:String, _arg2:int, _arg3:int):_06T {
        var _local4:_06T = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth(600);
        _local4.setBold(true);
        _local4.setStringBuilder(new _1M(_arg1));
        _local4.setSize(16).setColor(0xFFFFFF);
        _local4.setWordWrap(true);
        _local4.setMultiLine(true);
        _local4.setAutoSize(TextFieldAutoSize.CENTER);
        _local4.setHorizontalAlign(TextFormatAlign.CENTER);
        _local4.filters = [new DropShadowFilter(0, 0, 0)];
        _local4.x = _arg2;
        _local4.y = _arg3;
        return (_local4);
    }

    private function _0ZZ():void {
        this.email = new _eR(_TG._1nM, false);
        _0qq(this.email);
        this.password = new _eR(_TG._1Mb, true);
        _0qq(this.password);
        this._NY = new _Wt(12, false, _TG._0pH);
        _Kd(this._NY);
        this._1RY = new _Wt(12, false, _TG._1Og);
        _Kd(this._1RY);
        _01h.addEventListener(MouseEvent.CLICK, this._Km);
        addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    private function _1mD():void {
        var _local1:_LQ;
        if (((this._Dr()) && (this._kR()))) {
            _local1 = new _LQ();
            _local1.username = this.email.text();
            _local1.password = this.password.text();
            this._ck.dispatch(_local1);
        }
        ;
    }

    private function _kR():Boolean {
        var _local1 = !((this.password.text() == ""));
        if (!_local1) {
            this.password._044(_TG._1xt);
        }
        ;
        return (_local1);
    }

    private function _Dr():Boolean {
        var _local1 = !((this.email.text() == ""));
        if (!_local1) {
            this.email._044(_TG._1DN);
        }
        ;
        return (_local1);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if (_arg1.keyCode == _1N.ENTER) {
            this._1mD();
        }
        ;
    }

    private function _Km(_arg1:MouseEvent):void {
        this._1mD();
    }


}
}//package _0od

