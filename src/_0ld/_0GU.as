// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._0GU

package _0ld {
import _1E1.Size;

import _n._kV;

import flash.display.DisplayObject;
import flash.display.Sprite;

public class _0GU extends Sprite {

    public function _0GU() {
        this.list = new _kV();
        super();
    }
    public var list:_kV;
    private var size:Size;
    private var _w3:Sprite;
    private var _2b:Vector.<DisplayObject>;
    private var _0k7:Array;
    private var _yC:int;
    private var padding:int;
    private var _1N7:Array;
    private var _16g:int;

    public function setSize(_arg1:Size):void {
        this.size = _arg1;
        this.list.setSize(_arg1);
        addChild(this.list);
    }

    public function _0qu(_arg1:int):void {
        this.padding = _arg1;
        this.list._0qu(_arg1);
    }

    public function setItems(_arg1:Array):void {
        var _local2:DisplayObject;
        this._0mz();
        for each (_local2 in _arg1) {
            this.addItem(_local2);
        }
        ;
        this.list.setItems(this._2b);
        if (!_arg1.length) {
            return;
        }
        ;
        var _local3:DisplayObject = _arg1[0];
        this._16g = (this._09r() / _local3.width);
    }

    public function _Ie():Size {
        return (this.size);
    }

    public function _1tQ():Array {
        return (this._0k7);
    }

    public function getItem(_arg1:int):DisplayObject {
        return (this._0k7[_arg1]);
    }

    public function _QH():DisplayObject {
        if (this._0k7.length) {
            return (this._0k7[0]);
        }
        ;
        return (null);
    }

    public function _0vl():DisplayObject {
        var _local1:Array;
        if (this._1N7.length) {
            _local1 = this._1N7[0];
            return (_local1[(this._16g - 1)]);
        }
        ;
        return (null);
    }

    public function _1M0():DisplayObject {
        var _local1:Array;
        if (this._1N7.length >= 2) {
            _local1 = this._1N7[(this._1N7.length - 1)];
            return (_local1[0]);
        }
        ;
        return (null);
    }

    public function _pJ():DisplayObject {
        var _local1:Array;
        if (this._1N7.length >= 2) {
            _local1 = this._1N7[(this._1N7.length - 1)];
            return (_local1[(this._16g - 1)]);
        }
        ;
        return (null);
    }

    private function _0mz():void {
        this._1N7 = [];
        this._0k7 = [];
        this._2b = new Vector.<DisplayObject>();
        this._yC = 0;
        this._1qR();
    }

    private function addItem(_arg1:DisplayObject):void {
        this.position(_arg1);
        this._w3.addChild(_arg1);
        this._0k7.push(_arg1);
        this._1N7[(this._1N7.length - 1)].push(_arg1);
    }

    private function position(_arg1:DisplayObject):void {
        if (this._0R5(_arg1)) {
            _arg1.x = 0;
            this._1qR();
        } else {
            this._xO(_arg1);
        }
        ;
        this._yC = (_arg1.x + _arg1.width);
        this._yC = (this._yC + this.padding);
    }

    private function _1qR():void {
        this._w3 = new Sprite();
        this._2b.push(this._w3);
        this._1N7.push([]);
    }

    private function _xO(_arg1:DisplayObject):void {
        _arg1.x = this._yC;
    }

    private function _0R5(_arg1:DisplayObject):Boolean {
        return (((this._yC + _arg1.width) > this._09r()));
    }

    private function _09r():int {
        return ((this.size.width - _kV._0Cu));
    }


}
}//package _0ld

