// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._1vl

package _0Mc {
import _07g._2v;

import _0Nb._0ML;
import _0Nb._0nz;

import _1E1.Layout;

import _vW._1sq;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

public class _1vl extends Sprite {

    private const _qH:_2v = new _2v();

    public function _1vl(_arg1:Vector.<String>) {
        this._0V9 = _arg1;
        this._qH.complete.add(this._1C8);
        this._sh();
        this._1C8();
        this._03U();
    }
    private var _0V9:Vector.<String>;
    private var _1vP:Vector.<_hm>;
    private var group:_0ML;

    public function setSelected(_arg1:String):void {
        this.group.setSelected(_arg1);
    }

    public function _0ZN():String {
        return (this.group._0ZN().getValue());
    }

    private function _sh():void {
        var _local1:int = this._0V9.length;
        this._1vP = new Vector.<_hm>(_local1, true);
        var _local2:int;
        while (_local2 < _local1) {
            this._1vP[_local2] = this._1pQ(this._0V9[_local2]);
            _local2++;
        }
        ;
    }

    private function _1pQ(_arg1:String):_hm {
        var _local2:_hm = new _hm(_arg1);
        _local2.addEventListener(MouseEvent.CLICK, this._0a);
        this._qH.push(_local2._05H);
        addChild(_local2);
        return (_local2);
    }

    private function _1C8():void {
        var _local1:Vector.<DisplayObject> = this._0ZS();
        var _local2:Layout = new _1sq();
        _local2._0qu(20);
        _local2.layout(_local1);
    }

    private function _0ZS():Vector.<DisplayObject> {
        var _local1:int = this._1vP.length;
        var _local2:Vector.<DisplayObject> = new <DisplayObject>[];
        var _local3:int;
        while (_local3 < _local1) {
            _local2[_local3] = this._1vP[_local3];
            _local3++;
        }
        ;
        return (_local2);
    }

    private function _03U():void {
        var _local1:Vector.<_0nz> = this._1lD();
        this.group = new _0ML(_local1);
        this.group.setSelected(this._1vP[0].getValue());
    }

    private function _1lD():Vector.<_0nz> {
        var _local1:int = this._1vP.length;
        var _local2:Vector.<_0nz> = new <_0nz>[];
        var _local3:int;
        while (_local3 < _local1) {
            _local2[_local3] = this._1vP[_local3];
            _local3++;
        }
        ;
        return (_local2);
    }

    private function _0a(_arg1:Event):void {
        var _local2:_0nz = (_arg1.currentTarget as _0nz);
        this.group.setSelected(_local2.getValue());
    }


}
}//package _0Mc

