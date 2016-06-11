// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ij._0C4

package _ij {
import com.company.ui._V2;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Point;

public class _0C4 extends Sprite {

    public function _0C4(_arg1:Vector.<String>, _arg2:int, _arg3:int, _arg4:String = null) {
        this._extends = new Sprite();
        super();
        this._Ls = _arg1;
        this.w_ = _arg2;
        this.h_ = _arg3;
        if (_arg4 != null) {
            this.labelText_ = new _V2(16, 0xFFFFFF, false, 0, 0);
            this.labelText_.setBold(true);
            this.labelText_.text = (_arg4 + ":");
            this.labelText_._1B5();
            addChild(this.labelText_);
            this._Nl = (this.labelText_.width + 5);
        }
        ;
        this._Hm(0);
    }
    protected var _Ls:Vector.<String>;
    protected var w_:int;
    protected var h_:int;
    protected var labelText_:_V2;
    protected var _Nl:int = 0;
    protected var selected_:_0PB;
    protected var _extends:Sprite;

    public function getValue():String {
        return (this.selected_.getValue());
    }

    public function setValue(_arg1:String):void {
        var _local2:int;
        while (_local2 < this._Ls.length) {
            if (_arg1 == this._Ls[_local2]) {
                this._Hm(_local2);
                return;
            }
            ;
            _local2++;
        }
        ;
    }

    public function _Hm(_arg1:int):void {
        this.setSelected(this._Ls[_arg1]);
    }

    public function _gA():int {
        var _local1:int;
        while (_local1 < this._Ls.length) {
            if (this.selected_.getValue() == this._Ls[_local1]) {
                return (_local1);
            }
            ;
            _local1++;
        }
        ;
        return (-1);
    }

    private function setSelected(_arg1:String):void {
        var _local2:String;
        _local2 = (((this.selected_) != null) ? this.selected_.getValue() : null);
        this.selected_ = new _0PB(_arg1, this.w_, this.h_);
        this.selected_.x = this._Nl;
        this.selected_.y = 0;
        addChild(this.selected_);
        this.selected_.addEventListener(MouseEvent.CLICK, this._1Lb);
        if (_arg1 != _local2) {
            dispatchEvent(new Event(Event.CHANGE));
        }
        ;
    }

    private function _0wB():void {
        var _local1:int;
        var _local2:Point;
        var _local4:_0PB;
        _local1 = 0;
        _local2 = parent.localToGlobal(new Point(x, y));
        this._extends.x = _local2.x;
        this._extends.y = _local2.y;
        var _local3:int;
        while (_local3 < this._Ls.length) {
            _local4 = new _0PB(this._Ls[_local3], this.w_, this.h_);
            _local4.addEventListener(MouseEvent.CLICK, this.onSelect);
            _local4.x = this._Nl;
            _local4.y = _local1;
            this._extends.addChild(_local4);
            _local1 = (_local1 + _local4.h_);
            _local3++;
        }
        ;
        this._extends.addEventListener(MouseEvent.ROLL_OUT, this._1sK);
        stage.addChild(this._extends);
    }

    private function _1GX():void {
        this._extends.removeEventListener(MouseEvent.ROLL_OUT, this._1sK);
        stage.removeChild(this._extends);
    }

    private function _1Lb(_arg1:MouseEvent):void {
        _arg1.stopImmediatePropagation();
        this.selected_.removeEventListener(MouseEvent.CLICK, this._1Lb);
        if (contains(this.selected_)) {
            removeChild(this.selected_);
        }
        ;
        this._0wB();
    }

    private function onSelect(_arg1:MouseEvent):void {
        _arg1.stopImmediatePropagation();
        this._1GX();
        var _local2:_0PB = (_arg1.target as _0PB);
        this.setSelected(_local2.getValue());
    }

    private function _1sK(_arg1:MouseEvent):void {
        this._1GX();
        this.setSelected(this.selected_.getValue());
    }


}
}//package _ij

