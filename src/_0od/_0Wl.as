// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._0Wl

package _0od {
import _085._LQ;

import _0Mc.Frame;
import _0Mc._w1;

import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import _7J.DateField;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.util._yJ;

import flash.events.MouseEvent;
import flash.events.TextEvent;
import flash.filters.DropShadowFilter;

public class _0Wl extends Frame {

    private const errors:Array = [];

    public function _0Wl() {
        super(_TG._0k4, "RegisterWebAccountDialog.leftButton", "RegisterWebAccountDialog.rightButton", "/registerAccount", 326);
        this._Ei();
        this._0Ny();
    }
    public var register:_sy;
    public var signIn:_sy;
    public var cancel:_sy;
    private var _1K6:_2d;
    private var _1k6:_2d;
    private var _1a1:_2d;
    private var checkbox:_w1;
    private var _1BV:DateField;
    private var _1uC:_06T;
    private var _1Hb:_06T;
    private var _1gX:String = "</a></font>";

    public function _vL():void {
        this._1uC = new _06T();
        var _local1 = '<font color="#7777EE"><a href="event:flash.events.TextEvent">';
        this._1uC.setStringBuilder(new _5R().setParams(_TG._0vE, {
            signIn: _local1,
            _signIn: this._1gX
        }));
        this._1uC.addEventListener(TextEvent.LINK, this._iU);
        this._BK(this._1uC);
    }

    public function _A5():void {
        this._1Hb = new _06T();
        var _local1 = (('<font color="#7777EE"><a href="' + Parameters._FJ) + '" target="_blank">');
        var _local2 = (('<font color="#7777EE"><a href="' + Parameters._0WZ) + '" target="_blank">');
        this._1Hb.setStringBuilder(new _5R().setParams(_TG._1GG, {
            tou: _local1,
            _tou: this._1gX,
            policy: _local2,
            _policy: this._1gX
        }));
        this._BK(this._1Hb);
    }

    public function _BK(_arg1:_06T):void {
        _arg1.setSize(12).setColor(0xB3B3B3).setBold(true);
        _arg1.setTextWidth(275);
        _arg1.setMultiLine(true).setWordWrap(true).setHTML(true);
        _arg1.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(_arg1);
        positionText(_arg1);
    }

    public function _1Ae():void {
        if (this.errors.length == 0) {
            this._OL();
        } else {
            this._1Z((((this.errors.length == 1)) ? this.errors[0] : _TG._XI));
        }
        ;
    }

    public function _2J(_arg1:String):void {
        this._1Z(_arg1);
    }

    private function _Ei():void {
        this._1K6 = new _2d(_TG._Uv, false, 275);
        this._1k6 = new _2d(_TG._F, true, 275);
        this._1a1 = new _2d(_TG._0Jr, true, 275);
        this._1BV = new DateField();
        this._1BV.setTitle(_TG._w5);
        _1ry(this._1K6);
        _1ry(this._1k6);
        _1ry(this._1a1);
        _1MU(this._1BV, 17);
        _1Me(35);
        this.checkbox = new _w1(_TG._1ci, false, 12);
        _Z1(this.checkbox);
        _1Me(17);
        this._A5();
        _1Me((17 * 2));
        this._vL();
    }

    private function _0Ny():void {
        this.cancel = new _0q(_4j, MouseEvent.CLICK);
        _01h.addEventListener(MouseEvent.CLICK, this._jy);
        this.register = new _sy(_LQ);
        this.signIn = new _sy();
    }

    private function _00x():Boolean {
        this.errors.length = 0;
        var _local1:Boolean = true;
        _local1 = ((this._Dr()) && (_local1));
        _local1 = ((this._kR()) && (_local1));
        _local1 = ((this._0hO()) && (_local1));
        _local1 = ((this.isAgeVerified()) && (_local1));
        _local1 = ((this._0H()) && (_local1));
        return (_local1);
    }

    private function isAgeVerified():Boolean {
        var _local1:uint = _5L._0TN(this._1BV);
        var _local2 = (_local1 >= 13);
        this._1BV._WB(!(_local2));
        if (!_local2) {
            this.errors.push(_TG._Zz);
        }
        ;
        return (_local2);
    }

    private function _0H():Boolean {
        var _local1:Boolean = this._1BV._u6();
        this._1BV._WB(!(_local1));
        if (!_local1) {
            this.errors.push(_TG._lB);
        }
        ;
        return (_local1);
    }

    private function _Dr():Boolean {
        var _local1:Boolean = _yJ._0sW(this._1K6.text());
        this._1K6._WB(!(_local1));
        if (!_local1) {
            this.errors.push(_TG._20M);
        }
        ;
        return (_local1);
    }

    private function _kR():Boolean {
        var _local1 = (this._1k6.text().length >= 5);
        this._1k6._WB(!(_local1));
        if (!_local1) {
            this.errors.push(_TG._1Ox);
        }
        ;
        return (_local1);
    }

    private function _0hO():Boolean {
        var _local1 = (this._1k6.text() == this._1a1.text());
        this._1a1._WB(!(_local1));
        if (!_local1) {
            this.errors.push(_TG._lT);
        }
        ;
        return (_local1);
    }

    private function _OL():void {
        _zj.setStringBuilder(new _5R().setParams(_TG._0k4));
        _zj.setColor(0xB3B3B3);
    }

    private function _1Z(_arg1:String):void {
        _zj.setStringBuilder(new _5R().setParams(_arg1));
        _zj.setColor(16549442);
    }

    private function _167():void {
        var _local1:_LQ = new _LQ();
        _local1.username = this._1K6.text();
        _local1.password = this._1k6.text();
        _local1._1xz = ((this.checkbox._15A()) ? 1 : 0);
        this.register.dispatch(_local1);
    }

    private function _iU(_arg1:TextEvent):void {
        this.signIn.dispatch();
    }

    private function _jy(_arg1:MouseEvent):void {
        var _local2:Boolean = this._00x();
        this._1Ae();
        if (_local2) {
            this._167();
        }
        ;
    }


}
}//package _0od

