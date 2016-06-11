// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od.WebAccountDetailDialog

package _0od {
import _0Mc.Frame;

import _0Mr._1M;
import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import com.company.assembleegameclient.ui._Wt;

import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class WebAccountDetailDialog extends Frame {

    public function WebAccountDetailDialog() {
        super("WebAccountDetailDialog.title", "", "WebAccountDetailDialog.rightButton", "/currentLogin");
        this._1FC();
        this._16M();
        h_ = (h_ + 88);
        this.cancel = new _0q(_01h, MouseEvent.CLICK);
        this.change = new _sy();
        this.logout = new _sy();
        this.verify = new _sy();
    }
    public var cancel:_sy;
    public var change:_sy;
    public var logout:_sy;
    public var verify:_sy;
    private var loginText:_06T;
    private var _0M1:_06T;
    private var _uk:_Wt;
    private var _X6:_Wt;
    private var _0Wu:_Wt;

    public function _0GB(_arg1:String, _arg2:Boolean):void {
        this._0M1.setStringBuilder(new _1M(_arg1));
        if (!_arg2) {
            this._Cx();
        }
        ;
        this._1RO();
        this._0gw();
    }

    private function _Cx():void {
        if (this._uk != null) {
            removeChild(this._uk);
        }
        ;
        this._uk = new _Wt(12, false, "WebAccountDetailDialog.verify");
        _Kd(this._uk);
        this._uk.addEventListener(MouseEvent.CLICK, this._oW);
    }

    private function _1RO():void {
        if (this._X6 != null) {
            removeChild(this._X6);
        }
        ;
        this._X6 = new _Wt(12, false, "WebAccountDetailDialog.changePassword");
        this._X6.addEventListener(MouseEvent.CLICK, this._1PA);
        _Kd(this._X6);
    }

    private function _0gw():void {
        if (this._0Wu != null) {
            removeChild(this._0Wu);
        }
        ;
        this._0Wu = new _Wt(12, false, "WebAccountDetailDialog.logout");
        this._0Wu.addEventListener(MouseEvent.CLICK, this._Xz);
        _Kd(this._0Wu);
    }

    private function _1FC():void {
        this.loginText = new _06T().setSize(18).setColor(0xB3B3B3);
        this.loginText.setBold(true);
        this.loginText.setStringBuilder(new _5R().setParams("WebAccountDetailDialog.loginText"));
        this.loginText.filters = [new DropShadowFilter(0, 0, 0)];
        this.loginText.y = (h_ - 60);
        this.loginText.x = 17;
        addChild(this.loginText);
    }

    private function _16M():void {
        this._0M1 = new _06T().setSize(16).setColor(0xB3B3B3);
        this._0M1.y = (h_ - 30);
        this._0M1.x = 17;
        addChild(this._0M1);
    }

    private function _1PA(_arg1:MouseEvent):void {
        this.change.dispatch();
    }

    private function _Xz(_arg1:MouseEvent):void {
        this.logout.dispatch();
    }

    private function _oW(_arg1:MouseEvent):void {
        this.verify.dispatch();
        this._uk._1wK("WebAccountDetailDialog.sent");
    }


}
}//package _0od

