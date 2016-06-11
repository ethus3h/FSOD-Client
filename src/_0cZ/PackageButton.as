// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cZ.PackageButton

package _0cZ {
import _0BD._0QN;

import _0Mr._1M;
import _0Mr._5R;

import _0Rk._0Vz;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.util._07S;

import flash.display.DisplayObject;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class PackageButton extends _0E7 {

    private const _z7:String = "showDuration";
    private const _gB:String = "showQuantity";

    private static function makeText():_06T {
        var _local1:_06T;
        _local1 = new _06T().setSize(16).setColor(0xFFFFFF);
        _local1.filters = [new DropShadowFilter(0, 0, 0)];
        return (_local1);
    }

    public function PackageButton() {
        this.clicked = new _sy();
        this._m = makeText();
        this._06z = makeText();
        this._0SW = new _1M("");
        this._0eL = new _5R();
        super();
    }
    public var clicked:_sy;
    private var _state:String = "showDuration";
    private var _Jt:DisplayObject;
    private var _m:_06T;
    private var _06z:_06T;
    private var _0SW:_1M;
    private var _0eL:_5R;

    public function init():void {
        addChild(_0QN._1x3());
        addChild(this._m);
        addEventListener(MouseEvent.MOUSE_UP, this.onMouseUp);
        this.setIcon(makeIcon());
    }

    public function _0bl(_arg1:int):void {
        if (_arg1 == _0Vz._1lb) {
            this.setState(this._z7);
        } else {
            this.setState(this._gB);
        }
        ;
        this._06z.textChanged.addOnce(this.layout);
        this._0SW.setString(_arg1.toString());
        this._06z.setStringBuilder(this._0SW);
    }

    public function _gR(_arg1:int):void {
        var _local3:String;
        var _local2:int = Math.ceil((_arg1 / _07S._0sQ));
        if (_local2 > 1) {
            _local3 = _TG._iA;
        } else {
            _local3 = _TG._x4;
        }
        ;
        this._m.textChanged.addOnce(this.layout);
        this._0eL.setParams(_local3, {number: _local2});
        this._m.setStringBuilder(this._0eL);
    }

    public function setIcon(_arg1:DisplayObject):void {
        this._Jt = _arg1;
        addChild(_arg1);
    }

    public function getIcon():DisplayObject {
        return (this._Jt);
    }

    private function setState(_arg1:String):void {
        if (this._state == _arg1) {
            return;
        }
        ;
        if (_arg1 == this._z7) {
            removeChild(this._06z);
            addChild(this._m);
        } else {
            if (_arg1 == this._gB) {
                removeChild(this._m);
                addChild(this._06z);
            } else {
                throw (new Error(("PackageButton.setState: Unexpected state " + _arg1)));
            }
            ;
        }
        ;
        this._state = _arg1;
    }

    private function layout():void {
        positionText(this._Jt, this._m);
        positionText(this._Jt, this._06z);
    }

    private function onMouseUp(_arg1:Event):void {
        this.clicked.dispatch();
    }


}
}//package _0cZ

