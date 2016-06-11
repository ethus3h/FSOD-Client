// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.ui._V2

package com.company.ui {
import flash.events.Event;
import flash.text.Font;
import flash.text.TextField;
import flash.text.TextFieldType;
import flash.text.TextFormat;
import flash.text.TextLineMetrics;

public class _V2 extends TextField {

    public static const MyriadPro:Class = _ev;

    public function _V2(_arg1:int, _arg2:uint, _arg3:Boolean = false, _arg4:int = 0, _arg5:int = 0) {
        this._1ij = _arg4;
        if (this._1ij != 0) {
            width = _arg4;
        }
        ;
        this._0Bh = _arg5;
        if (this._0Bh != 0) {
            height = _arg5;
        }
        ;
        Font.registerFont(MyriadPro);
        var _local6:Font = new MyriadPro();
        var _local7:TextFormat = this.defaultTextFormat;
        _local7.font = _local6.fontName;
        _local7.bold = false;
        _local7.size = _arg1;
        _local7.color = _arg2;
        defaultTextFormat = _local7;
        if (_arg3) {
            selectable = true;
            mouseEnabled = true;
            type = TextFieldType.INPUT;
            border = true;
            borderColor = _arg2;
            addEventListener(Event.CHANGE, this._1PA);
        } else {
            selectable = false;
            mouseEnabled = false;
        }
        ;
    }
    public var _1ij:int;
    public var _0Bh:int;
    public var _1T6:int;
    public var _1n:int;

    public function _1qt(_arg1:String):void {
        var _local2:TextFormat = defaultTextFormat;
        _local2.font = _arg1;
        defaultTextFormat = _local2;
    }

    public function setSize(_arg1:int):void {
        var _local2:TextFormat = defaultTextFormat;
        _local2.size = _arg1;
        this._XE(_local2);
    }

    public function setColor(_arg1:uint):void {
        var _local2:TextFormat = defaultTextFormat;
        _local2.color = _arg1;
        this._XE(_local2);
    }

    public function setBold(_arg1:Boolean):void {
        var _local2:TextFormat = defaultTextFormat;
        _local2.bold = _arg1;
        this._XE(_local2);
    }

    public function _hO(_arg1:String):void {
        var _local2:TextFormat = defaultTextFormat;
        _local2.align = _arg1;
        this._XE(_local2);
    }

    public function _1Nq(_arg1:String):void {
        this.text = _arg1;
    }

    public function _1B5():void {
        var _local2:TextLineMetrics;
        var _local3:int;
        var _local4:int;
        this._1T6 = 0;
        this._1n = 0;
        var _local1:int;
        while (_local1 < numLines) {
            _local2 = getLineMetrics(_local1);
            _local3 = (_local2.width + 4);
            _local4 = (_local2.height + 4);
            if (_local3 > this._1T6) {
                this._1T6 = _local3;
            }
            ;
            this._1n = (this._1n + _local4);
            _local1++;
        }
        ;
        width = (((this._1ij) == 0) ? this._1T6 : this._1ij);
        height = (((this._0Bh) == 0) ? this._1n : this._0Bh);
    }

    public function _fm():void {
        width = (((this._1ij) == 0) ? (textWidth + 4) : this._1ij);
        height = (((this._0Bh) == 0) ? (textHeight + 4) : this._0Bh);
    }

    private function _XE(_arg1:TextFormat):void {
        setTextFormat(_arg1);
        defaultTextFormat = _arg1;
    }

    private function _1PA(_arg1:Event):void {
        this._1B5();
    }


}
}//package com.company.ui

