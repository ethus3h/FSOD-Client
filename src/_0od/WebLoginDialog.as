// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od.WebLoginDialog

package _0od {
import _085._LQ;

import _0Mc.Frame;
import _0Mc._eR;

import _0Ql._0q;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.ui._Wt;
import com.company.util._1N;

import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;

public class WebLoginDialog extends Frame {

    public function WebLoginDialog() {
        super(_TG._0qj, _TG._1Tq, _TG._1Cb, "/signIn");
        this._0ZZ();
        this.forgot = new _0q(this._NY, MouseEvent.CLICK);
        this.register = new _0q(this._1RY, MouseEvent.CLICK);
        this.cancel = new _0q(_4j, MouseEvent.CLICK);
        this.signIn = new _sy(_LQ);
    }
    public var cancel:_sy;
    public var signIn:_sy;
    public var forgot:_sy;
    public var register:_sy;
    private var email:_eR;
    private var password:_eR;
    private var _NY:_Wt;
    private var _1RY:_Wt;

    public function _044(_arg1:String):void {
        this.password._044(_arg1);
    }

    public function _zr(_arg1:String):void {
        this.email.inputText_.text = _arg1;
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
            this.signIn.dispatch(_local1);
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

    private function onCancel(_arg1:MouseEvent):void {
        this.cancel.dispatch();
    }

    private function _Km(_arg1:MouseEvent):void {
        this._1mD();
    }


}
}//package _0od

