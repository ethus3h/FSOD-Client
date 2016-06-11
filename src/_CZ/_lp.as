// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_CZ._lp

package _CZ {
import _07g._2v;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

public class _lp extends Sprite {

    protected const h_:int = 36;

    public function _lp(_arg1:Vector.<String>) {
        this._Ky = new Vector.<_Ek>();
        this._extends = new Sprite();
        this._qH = new _2v();
        super();
        this._Ls = _arg1;
        this._0gI();
        this._var();
        addChild(this._extends);
        this._extends.visible = false;
        this._qH.complete.addOnce(this.onComplete);
    }
    protected var _Ls:Vector.<String>;
    protected var w_:int = 0;
    protected var selected_:_Ek;
    private var _Ky:Vector.<_Ek>;
    private var _extends:Sprite;
    private var _qH:_2v;

    public function getValue():String {
        return (this.selected_.getValue());
    }

    public function setValue(_arg1:String):void {
        var _local3:String;
        var _local2:int = this._Ls.indexOf(_arg1);
        if (_local2 > 0) {
            _local3 = this._Ls[0];
            this._Ls[_local2] = _local3;
            this._Ls[0] = _arg1;
            this._var();
            dispatchEvent(new Event(Event.CHANGE));
        }
        ;
    }

    public function _12x():int {
        return (this.h_);
    }

    private function _0gI():void {
        var _local1:_Ek;
        if (this._Ls.length > 0) {
            _local1 = this._0Qt(this._Ls[0]);
            this._Ky.push(_local1);
            this.selected_ = _local1;
            this.selected_.addEventListener(MouseEvent.CLICK, this._1Lb);
            addChild(this.selected_);
        }
        ;
        var _local2:int = 1;
        while (_local2 < this._Ls.length) {
            _local1 = this._0Qt(this._Ls[_local2]);
            _local1.addEventListener(MouseEvent.CLICK, this.onSelect);
            _local1.y = (this.h_ * _local2);
            this._Ky.push(_local1);
            this._extends.addChild(_local1);
            _local2++;
        }
        ;
    }

    private function _0Qt(_arg1:String):_Ek {
        var _local2:_Ek = new _Ek(_arg1, 0, this.h_);
        this._qH.push(_local2._0EL());
        return (_local2);
    }

    private function _var():void {
        var _local1:int;
        while (_local1 < this._Ls.length) {
            this._Ky[_local1].setValue(this._Ls[_local1]);
            this._Ky[_local1].setWidth(this.w_);
            _local1++;
        }
        ;
        if (this._Ky.length > 0) {
            this.selected_ = this._Ky[0];
        }
        ;
    }

    private function _0wB():void {
        this.addEventListener(MouseEvent.ROLL_OUT, this._1sK);
        this._extends.visible = true;
    }

    private function _1GX():void {
        this.removeEventListener(MouseEvent.ROLL_OUT, this._1sK);
        this._extends.visible = false;
    }

    private function onComplete():void {
        var _local2:_Ek;
        var _local1:int = 83;
        for each (_local2 in this._Ky) {
            _local1 = Math.max(_local2.width, _local1);
        }
        ;
        this.w_ = _local1;
        this._var();
    }

    private function _1Lb(_arg1:MouseEvent):void {
        _arg1.stopImmediatePropagation();
        this.selected_.removeEventListener(MouseEvent.CLICK, this._1Lb);
        this.selected_.addEventListener(MouseEvent.CLICK, this.onSelect);
        this._0wB();
    }

    private function onSelect(_arg1:MouseEvent):void {
        _arg1.stopImmediatePropagation();
        this.selected_.addEventListener(MouseEvent.CLICK, this._1Lb);
        this.selected_.removeEventListener(MouseEvent.CLICK, this.onSelect);
        this._1GX();
        var _local2:_Ek = (_arg1.target as _Ek);
        this.setValue(_local2.getValue());
    }

    private function _1sK(_arg1:MouseEvent):void {
        this.selected_.addEventListener(MouseEvent.CLICK, this._1Lb);
        this.selected_.removeEventListener(MouseEvent.CLICK, this.onSelect);
        this._1GX();
    }


}
}//package _CZ

