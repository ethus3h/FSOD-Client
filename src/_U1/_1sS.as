// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._1sS

package _U1 {
import _0no._fY;

import _0y9._06T;

import _10a._FU;

import _1Ea._1rP;

import _1Kr._1E8;

import _1Sm._sy;

import com.company.assembleegameclient.appengine._0Iq;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.googleanalytics.GA;
import com.company.rotmg.graphics.ScreenGraphic;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

public class _1sS extends Sprite {

    public function _1sS() {
        this._1kf = {};
        super();
        this.tooltip = new _sy(Sprite);
        this.selected = new _sy(int);
        this.close = new _sy();
        this.buy = new _sy(int);
        addChild(new _1E8());
        addChild(new _Y5());
        addChild(new ScreenGraphic());
    }
    public var tooltip:_sy;
    public var close:_sy;
    public var selected:_sy;
    public var buy:_sy;
    private var _0kL:_1O0;
    private var _m1:_fY;
    private var _1kf:Object;
    private var _0C:Boolean = false;

    public function initialize(_arg1:_FU):void {
        var _local2:int;
        var _local3:XML;
        var _local4:int;
        var _local5:String;
        var _local6:Boolean;
        var _local7:CharacterBox;
        if (this._0C) {
            return;
        }
        ;
        this._0C = true;
        this._0kL = new _1O0(_1rP.BACK, 36, false);
        this._0kL.addEventListener(MouseEvent.CLICK, this._0hj);
        this._0kL.setVerticalAlign(_06T.MIDDLE);
        addChild(this._0kL);
        this._m1 = new _fY();
        this._m1.draw(_arg1._1fB(), _arg1._00f());
        addChild(this._m1);
        _local2 = 0;
        while (_local2 < ObjectLibrary._0ZM.length) {
            _local3 = ObjectLibrary._0ZM[_local2];
            _local4 = int(_local3.@type);
            _local5 = _local3.@id;
            if (_arg1._1lO(_local5, _0Iq._Jf)) {
            } else {
                _local6 = _arg1._1lO(_local5, _0Iq._0l9);
                _local7 = new CharacterBox(_local3, _arg1._0CQ()[_local4], _arg1, _local6);
                _local7.x = (((50 + (140 * int((_local2 % 5)))) + 70) - (_local7.width / 2));
                _local7.y = (88 + (140 * int((_local2 / 5))));
                this._1kf[_local4] = _local7;
                _local7.addEventListener(MouseEvent.ROLL_OVER, this._1hX);
                _local7.addEventListener(MouseEvent.ROLL_OUT, this._1fT);
                _local7._vm.add(this._02b);
                _local7._1c4.add(this._0b8);
                if ((((_local4 == 784)) && (!(_local7._0uY)))) {
                    _local7._zy(75);
                }
                ;
                addChild(_local7);
            }
            ;
            _local2++;
        }
        ;
        this._0kL.x = ((stage.stageWidth / 2) - (this._0kL.width / 2));
        this._0kL.y = 550;
        this._m1.x = stage.stageWidth;
        this._m1.y = 20;
        GA.global().trackPageview("/newCharScreen");
    }

    public function _rS(_arg1:int, _arg2:int):void {
        this._m1.draw(_arg1, _arg2);
    }

    public function update(_arg1:_FU):void {
        var _local3:XML;
        var _local4:int;
        var _local5:String;
        var _local6:Boolean;
        var _local7:CharacterBox;
        var _local2:int;
        while (_local2 < ObjectLibrary._0ZM.length) {
            _local3 = ObjectLibrary._0ZM[_local2];
            _local4 = int(_local3.@type);
            _local5 = String(_local3.@id);
            if (_arg1._1lO(_local5, _0Iq._Jf)) {
            } else {
                _local6 = _arg1._1lO(_local5, _0Iq._0l9);
                _local7 = this._1kf[_local4];
                if (_local7) {
                    _local7._1H2(true);
                    if (((_local6) || (_arg1._8I(_local4)))) {
                        _local7.unlock();
                    }
                    ;
                }
                ;
            }
            ;
            _local2++;
        }
        ;
    }

    private function _0hj(_arg1:Event):void {
        this.close.dispatch();
    }

    private function _1hX(_arg1:MouseEvent):void {
        var _local2:CharacterBox = (_arg1.currentTarget as CharacterBox);
        _local2._1zm(true);
        this.tooltip.dispatch(_local2.getTooltip());
    }

    private function _1fT(_arg1:MouseEvent):void {
        var _local2:CharacterBox = (_arg1.currentTarget as CharacterBox);
        _local2._1zm(false);
        this.tooltip.dispatch(null);
    }

    private function _02b(_arg1:MouseEvent):void {
        this.tooltip.dispatch(null);
        var _local2:CharacterBox = (_arg1.currentTarget.parent as CharacterBox);
        if (!_local2._0uY) {
            return;
        }
        ;
        var _local3:int = _local2.objectType();
        var _local4:String = ObjectLibrary._1w3[_local3];
        GA.global().trackEvent("character", "create", _local4);
        this.selected.dispatch(_local3);
    }

    private function _0b8(_arg1:MouseEvent):void {
        var _local3:int;
        var _local2:CharacterBox = (_arg1.currentTarget.parent as CharacterBox);
        if (((_local2) && (!(_local2._0uY)))) {
            _local3 = int(_local2.playerXML_.@type);
            _local2._1H2(false);
            this.buy.dispatch(_local3);
        }
        ;
    }


}
}//package _U1

