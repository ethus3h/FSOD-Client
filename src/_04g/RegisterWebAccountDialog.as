// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04g.RegisterWebAccountDialog

package _04g {
import _085._LQ;

import _0Mc.Frame;
import _0Mc._eR;
import _0Mc._w1;

import _0Mr._5R;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.util._yJ;

import flash.events.MouseEvent;

public class RegisterWebAccountDialog extends Frame {

    public function RegisterWebAccountDialog() {
        this.register = new _sy(_LQ);
        this.cancel = new _sy();
        super(_TG._nx, _TG._yp, _TG._06v, "/kongregateRegisterAccount");
        this._1rh();
        this._1Bm();
        this.addEventListeners();
    }
    public var register:_sy;
    public var cancel:_sy;
    private var _1K6:_eR;
    private var _1k6:_eR;
    private var _1a1:_eR;
    private var checkbox:_w1;

    public function _08D(_arg1:String):void {
        this._1K6._044(_arg1);
    }

    private function addEventListeners():void {
        _4j.addEventListener(MouseEvent.CLICK, this.onCancel);
        _01h.addEventListener(MouseEvent.CLICK, this._jy);
    }

    private function _1rh():void {
        this._1K6 = new _eR(_TG._Uv, false);
        _0qq(this._1K6);
        this._1k6 = new _eR(_TG._F, true);
        _0qq(this._1k6);
        this._1a1 = new _eR(_TG._0Jr, true);
        _0qq(this._1a1);
        this.checkbox = new _w1("", false);
        var _local1 = (('<font color="#7777EE"><a href="' + Parameters._FJ) + '" target="_blank">');
        var _local2 = "</a></font>.";
        this.checkbox._1Sf(new _5R().setParams(_TG._0SP, {
            link: _local1,
            _link: _local2
        }));
        _Z1(this.checkbox);
    }

    private function _1Bm():void {
        this._1K6.inputText_.tabIndex = 1;
        this._1k6.inputText_.tabIndex = 2;
        this._1a1.inputText_.tabIndex = 3;
        this.checkbox._0Lj.tabIndex = 4;
        _4j.tabIndex = 6;
        _01h.tabIndex = 5;
        this._1K6.inputText_.tabEnabled = true;
        this._1k6.inputText_.tabEnabled = true;
        this._1a1.inputText_.tabEnabled = true;
        this.checkbox._0Lj.tabEnabled = true;
        _4j.tabEnabled = true;
        _01h.tabEnabled = true;
    }

    private function _1Ag():Boolean {
        var _local1:Boolean = this.checkbox._15A();
        if (!_local1) {
            this.checkbox._044(_TG._12I);
        }
        ;
        return (_local1);
    }

    private function _Dr():Boolean {
        var _local1:Boolean = _yJ._0sW(this._1K6.text());
        if (!_local1) {
            this._1K6._044(_TG._20M);
        }
        ;
        return (_local1);
    }

    private function _kR():Boolean {
        var _local1 = (this._1k6.text().length >= 5);
        if (!_local1) {
            this._1k6._044(_TG._1FQ);
        }
        ;
        return (_local1);
    }

    private function _0hO():Boolean {
        var _local1 = (this._1k6.text() == this._1a1.text());
        if (!_local1) {
            this._1a1._044(_TG._0V6);
        }
        ;
        return (_local1);
    }

    private function onCancel(_arg1:MouseEvent):void {
        this.cancel.dispatch();
    }

    private function _jy(_arg1:MouseEvent):void {
        var _local2:_LQ;
        if (((((((this._Dr()) && (this._kR()))) && (this._0hO()))) && (this._1Ag()))) {
            _local2 = new _LQ();
            _local2.username = this._1K6.text();
            _local2.password = this._1k6.text();
            this.register.dispatch(_local2);
        }
        ;
    }


}
}//package _04g

