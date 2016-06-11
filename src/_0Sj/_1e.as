// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._1e-

package _0Sj {
import _07g._2v;

import _1Sm._sy;

import _vW._1Eq;
import _vW._1VE;

import flash.display.DisplayObject;
import flash.events.MouseEvent;

public class _1e extends _1Eq {

    private const _qH:_2v = new _2v();
    public const ready:_sy = _qH.complete;
    public const selected:_sy = new _sy(String);

    public function _1e(_arg1:Array) {
        _0DI(this._0PX());
        setItems(this._MA(_arg1));
        this.ready.addOnce(_0K);
    }

    private function _0PX():_1VE {
        var _local1:_1VE = new _1VE();
        _local1._0qu(2);
        return (_local1);
    }

    private function _MA(_arg1:Array):Vector.<DisplayObject> {
        var _local2:Vector.<DisplayObject> = new Vector.<DisplayObject>();
        var _local3:int;
        while (_local3 < _arg1.length) {
            _local2.push(this._M7(_arg1[_local3]));
            _local3++;
        }
        ;
        return (_local2);
    }

    private function _M7(_arg1:Object):_1YS {
        var _local2:_1YS = new _1YS(_arg1.category, _arg1.info);
        _local2.addEventListener(MouseEvent.CLICK, this._1Lb);
        this._qH.push(_local2.textChanged);
        return (_local2);
    }

    private function _1Lb(_arg1:MouseEvent):void {
        var _local2:_1YS = (_arg1.currentTarget as _1YS);
        this.selected.dispatch(_local2.info);
    }


}
}//package _0Sj

