// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.TradeInventory

package com.company.assembleegameclient.ui {
import _0Mr._5R;

import _0y9._06T;

import _11j._0cv;

import _6u._TG;

import _gl._1bu;

import com.company.assembleegameclient.game._0p2;
import com.company.ui._V2;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class TradeInventory extends Sprite {

    private static const _1Ze:Array = [0, 0, 0, 0];
    private static const _Ud:Array = [[1, 0, 0, 1], _1Ze, _1Ze, [0, 1, 1, 0], [1, 0, 0, 0], _1Ze, _1Ze, [0, 1, 0, 0], [0, 0, 0, 1], _1Ze, _1Ze, [0, 0, 1, 0]];
    public static const _pX:int = 0;
    public static const _x2:int = 1;
    public static const _0vh:int = 2;
    public static const _1LX:int = 3;

    public function TradeInventory(_arg1:_0p2, _arg2:String, _arg3:Vector.<_0cv>, _arg4:Boolean) {
        var _local6:_0cv;
        var _local7:_0Nu;
        this._0de = new Vector.<_0Nu>();
        super();
        this.gs_ = _arg1;
        this._0dQ = _arg2;
        this.nameText_ = new _V2(20, 0xB3B3B3, false, 0, 0);
        this.nameText_.setBold(true);
        this.nameText_.x = 0;
        this.nameText_.y = 0;
        this.nameText_.text = this._0dQ;
        this.nameText_._1B5();
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.nameText_);
        this.taglineText_ = new _06T().setSize(12).setColor(0xB3B3B3);
        this.taglineText_.x = 0;
        this.taglineText_.y = 22;
        this.taglineText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.taglineText_);
        var _local5:int;
        while (_local5 < (_1bu._0RT + _1bu._0KV)) {
            _local6 = _arg3[_local5];
            _local7 = new _0Nu(_local6.item_, _local6._TU, _local6.included_, _local6._00m, (_local5 - 3), _Ud[_local5], _local5);
            _local7._8B(this.gs_.map.player_);
            _local7.x = (int((_local5 % 4)) * (Slot.WIDTH + 4));
            _local7.y = ((int((_local5 / 4)) * (Slot.HEIGHT + 4)) + 46);
            if (((_arg4) && (_local6._TU))) {
                _local7.addEventListener(MouseEvent.MOUSE_DOWN, this._z3);
            }
            ;
            this._0de.push(_local7);
            addChild(_local7);
            _local5++;
        }
        ;
    }
    public var gs_:_0p2;
    public var _0dQ:String;
    public var _0de:Vector.<_0Nu>;
    private var _0h3:int;
    private var nameText_:_V2;
    private var taglineText_:_06T;

    public function _0ku():Vector.<Boolean> {
        var _local1:Vector.<Boolean> = new Vector.<Boolean>();
        var _local2:int;
        while (_local2 < this._0de.length) {
            _local1.push(this._0de[_local2].included_);
            _local2++;
        }
        ;
        return (_local1);
    }

    public function _1QE(_arg1:Vector.<Boolean>):void {
        var _local2:int;
        while (_local2 < this._0de.length) {
            this._0de[_local2].setIncluded(_arg1[_local2]);
            _local2++;
        }
        ;
    }

    public function _bk(_arg1:Vector.<Boolean>):Boolean {
        var _local2:int;
        while (_local2 < this._0de.length) {
            if (_arg1[_local2] != this._0de[_local2].included_) {
                return (false);
            }
            ;
            _local2++;
        }
        ;
        return (true);
    }

    public function _1V0():int {
        var _local1:int;
        var _local2:int;
        while (_local2 < this._0de.length) {
            if (this._0de[_local2].included_) {
                _local1++;
            }
            ;
            _local2++;
        }
        ;
        return (_local1);
    }

    public function _0eG():int {
        var _local1:int;
        var _local2:int = 4;
        while (_local2 < this._0de.length) {
            if (this._0de[_local2].isEmpty()) {
                _local1++;
            }
            ;
            _local2++;
        }
        ;
        return (_local1);
    }

    public function _0O0(_arg1:int):void {
        var _local2 = "";
        switch (_arg1) {
            case _pX:
                this.nameText_.setColor(0xB3B3B3);
                this.taglineText_.setColor(0xB3B3B3);
                _local2 = _TG._107;
                break;
            case _x2:
                this.nameText_.setColor(0xFF0000);
                this.taglineText_.setColor(0xFF0000);
                _local2 = _TG._1oG;
                break;
            case _0vh:
                this.nameText_.setColor(9022300);
                this.taglineText_.setColor(9022300);
                _local2 = _TG._1DS;
                break;
            case _1LX:
                this.nameText_.setColor(0xB3B3B3);
                this.taglineText_.setColor(0xB3B3B3);
                _local2 = _TG._1co;
                break;
        }
        ;
        this.taglineText_.setStringBuilder(new _5R().setParams(_local2));
    }

    private function _z3(_arg1:MouseEvent):void {
        var _local2:_0Nu = (_arg1.currentTarget as _0Nu);
        _local2.setIncluded(!(_local2.included_));
        dispatchEvent(new Event(Event.CHANGE));
    }


}
}//package com.company.assembleegameclient.ui

