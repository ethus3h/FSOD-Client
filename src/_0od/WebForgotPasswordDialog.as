// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od.WebForgotPasswordDialog

package _0od {
import _0Mc.Frame;
import _0Mc._eR;

import _0Ql._0q;

import _1Sm._sy;

import com.company.assembleegameclient.ui._Wt;

import flash.events.MouseEvent;

public class WebForgotPasswordDialog extends Frame {

    public function WebForgotPasswordDialog() {
        super("WebForgotPasswordDialog.title", "WebForgotPasswordDialog.leftButton", "WebForgotPasswordDialog.rightButton", "/forgotPassword");
        this._1K6 = new _eR("WebForgotPasswordDialog.email", false);
        _0qq(this._1K6);
        this._1RY = new _Wt(12, false, "WebForgotPasswordDialog.register");
        _Kd(this._1RY);
        _01h.addEventListener(MouseEvent.CLICK, this._1qI);
        this.cancel = new _0q(_4j, MouseEvent.CLICK);
        this.register = new _0q(this._1RY, MouseEvent.CLICK);
        this.submit = new _sy(String);
    }
    public var cancel:_sy;
    public var submit:_sy;
    public var register:_sy;
    private var _1K6:_eR;
    private var _1RY:_Wt;

    public function _08D(_arg1:String):void {
        this._1K6._044(_arg1);
    }

    private function _Dr():Boolean {
        var _local1 = !((this._1K6.text() == ""));
        if (!_local1) {
            this._1K6._044("Not a valid email address");
        }
        ;
        return (_local1);
    }

    private function _1qI(_arg1:MouseEvent):void {
        if (this._Dr()) {
            disable();
            this.submit.dispatch(this._1K6.text());
        }
        ;
    }


}
}//package _0od

