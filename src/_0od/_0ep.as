// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._0ep

package _0od {
import _04g.*;

import _0Mr._1M;
import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import _U1._1O0;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _0ep extends Sprite implements _13e {

    private static const _Pi:int = 18;

    public function _0ep() {
        this._Ei();
        this._0Ny();
    }
    private var _14s:_sy;
    private var _0AM:_sy;
    private var userName:String = "";
    private var _vD:Boolean;
    private var _ap:_06T;
    private var _0lQ:_1O0;
    private var _Ev:_1O0;

    public function get login():_sy {
        return (this._14s);
    }

    public function get register():_sy {
        return (this._0AM);
    }

    public function _0Pf(_arg1:String, _arg2:Boolean):void {
        this.userName = _arg1;
        this._vD = _arg2;
        this._jn();
    }

    private function _Ei():void {
        this._Kg();
        this._15N();
        this._HZ();
    }

    private function _0Ny():void {
        this._14s = new _0q(this._Ev, MouseEvent.CLICK);
        this._0AM = new _0q(this._0lQ, MouseEvent.CLICK);
    }

    private function _Kg():void {
        this._ap = this._Q8();
        this._ap.setStringBuilder(new _5R().setParams(_TG._09p));
    }

    private function _Q8():_06T {
        var _local1:_06T = new _06T();
        _local1.setAutoSize(TextFieldAutoSize.RIGHT);
        _local1.setSize(_Pi).setColor(0xB3B3B3);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
        return (_local1);
    }

    private function _15N():void {
        this._Ev = new _1O0(_TG._0s, _Pi, false);
        this._Ev.setAutoSize(TextFieldAutoSize.RIGHT);
    }

    private function _HZ():void {
        this._0lQ = new _1O0(_TG._I0, _Pi, false);
        this._0lQ.setAutoSize(TextFieldAutoSize.RIGHT);
    }

    private function _1va():DisplayObject {
        var _local1:_06T = new _06T();
        _local1.setColor(0xB3B3B3).setAutoSize(TextFieldAutoSize.RIGHT).setSize(_Pi);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
        _local1.setStringBuilder(new _1M(" - "));
        return (_local1);
    }

    private function _jn():void {
        this._1Jq();
        if (this._vD) {
            this._20i();
        } else {
            this._1Ik();
        }
        ;
    }

    private function _1Jq():void {
        while (numChildren) {
            removeChildAt(0);
        }
        ;
    }

    private function _20i():void {
        this._ap.setStringBuilder(new _5R().setParams(_TG._c6, {userName: this.userName}));
        this._Ev._1a2(_TG._ur);
        this._1hI(this._ap, this._Ev);
    }

    private function _1Ik():void {
        this._ap.setStringBuilder(new _5R().setParams(_TG._09p, {userName: this.userName}));
        this._Ev._1a2(_TG._0s);
        this._1hI(this._ap, this._1va(), this._0lQ, this._1va(), this._Ev);
    }

    private function _1hI(..._args):void {
        var _local2:DisplayObject;
        var _local3:int;
        var _local4:int;
        var _local5:DisplayObject;
        for each (_local2 in _args) {
            addChild(_local2);
        }
        ;
        _local3 = 0;
        _local4 = _args.length;
        while (_local4--) {
            _local5 = _args[_local4];
            _local5.x = _local3;
            _local3 = (_local3 - _local5.width);
        }
        ;
    }


}
}//package _0od

