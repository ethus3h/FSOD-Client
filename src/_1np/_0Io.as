// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1np._0Io

package _1np {
import _08f.Console;

import _s2._40;
import _s2._yA;

import flash.display.Graphics;
import flash.display.Shape;
import flash.events.TextEvent;
import flash.text.TextField;
import flash.text.TextFormat;

public class _0Io extends _ZM {

    public static const _m4:String = "fpsPanel";
    public static const _2U:String = "memoryPanel";

    public function _0Io(_arg1:Console, _arg2:int, _arg3:int, _arg4:String = null) {
        this._04x = new Object();
        super(_arg1);
        this._1NF = _arg4;
        _0C(bg);
        _Zc = 32;
        _0Dk = 26;
        var _local5:TextFormat = new TextFormat();
        var _local6:Object = style.styleSheet.getStyle("low");
        _local5.font = _local6.fontFamily;
        _local5.size = _local6.fontSize;
        _local5.color = style.lowColor;
        this._0lZ = new TextField();
        this._0lZ.name = "lowestField";
        this._0lZ.defaultTextFormat = _local5;
        this._0lZ.mouseEnabled = false;
        this._0lZ.height = (style.menuFontSize + 2);
        addChild(this._0lZ);
        this._0uS = new TextField();
        this._0uS.name = "highestField";
        this._0uS.defaultTextFormat = _local5;
        this._0uS.mouseEnabled = false;
        this._0uS.height = (style.menuFontSize + 2);
        this._0uS.y = (style.menuFontSize - 4);
        addChild(this._0uS);
        _1FH = _kp("menuField");
        _1FH.height = (style.menuFontSize + 4);
        _1FH.y = -3;
        _07l(_1FH, this.onMenuRollOver, this._0WF);
        _0C(_1FH);
        addChild(_1FH);
        this._1Sp = new Shape();
        addChild(this._1Sp);
        this.graph = new Shape();
        this.graph.name = "graph";
        this.graph.y = style.menuFontSize;
        addChild(this.graph);
        this._1EP = "<menu>";
        if (this._1NF == _2U) {
            this._1EP = (this._1EP + ' <a href="event:gc">G</a> ');
        }
        ;
        this._1EP = (this._1EP + '<a href="event:reset">R</a> <a href="event:close">X</a></menu></low></r>');
        init(_arg2, _arg3, true);
    }
    public var _Cw:int = 5;
    private var _Sx:_40;
    private var _1um:_yA;
    private var _04x:Object;
    private var _1EP:String;
    private var _1NF:String;
    private var _v1:Boolean;
    private var _1Sp:Shape;
    private var graph:Shape;
    private var _0lZ:TextField;
    private var _0uS:TextField;

    override public function set height(_arg1:Number):void {
        super.height = _arg1;
        this._0lZ.y = (_arg1 - style.menuFontSize);
        this._v1 = true;
        var _local2:Graphics = this._1Sp.graphics;
        _local2.clear();
        _local2.lineStyle(1, style.controlColor, 0.6);
        _local2.moveTo(0, this.graph.y);
        _local2.lineTo((width - this._Cw), this.graph.y);
        _local2.lineTo((width - this._Cw), _arg1);
    }

    override public function set width(_arg1:Number):void {
        super.width = _arg1;
        this._0lZ.width = _arg1;
        this._0uS.width = _arg1;
        _1FH.width = _arg1;
        _1FH.scrollH = _1FH.maxScrollH;
        this.graph.graphics.clear();
        this._v1 = true;
    }

    public function get group():_40 {
        return (this._Sx);
    }

    public function reset():void {
        this._04x = {};
        this.graph.graphics.clear();
        if (!this._Sx.fixed) {
            this._Sx.low = NaN;
            this._Sx._0ln = NaN;
        }
        ;
    }

    public function update(_arg1:_40, _arg2:Boolean):void {
        var _local11:_yA;
        var _local12:String;
        var _local13:String;
        var _local14:Array;
        var _local15:Array;
        var _local16:int;
        var _local17:int;
        var _local18:int;
        var _local19:int;
        var _local20:int;
        var _local21:Number;
        var _local22:Boolean;
        this._Sx = _arg1;
        var _local3:int = 1;
        if (_arg1._1SV > 0) {
            _local3 = 0;
            if (!this._v1) {
                return;
            }
            ;
        }
        ;
        if (this._v1) {
            _arg2 = true;
        }
        ;
        this._v1 = false;
        var _local4:Array = _arg1.interests;
        var _local5:int = (width - this._Cw);
        var _local6:int = (height - this.graph.y);
        var _local7:Number = _arg1.low;
        var _local8:Number = _arg1._0ln;
        var _local9:Number = (_local8 - _local7);
        var _local10:Boolean;
        if (_arg2) {
            TextField(((_arg1._0Wv) ? this._0uS : this._0lZ)).text = String(_arg1.low);
            TextField(((_arg1._0Wv) ? this._0lZ : this._0uS)).text = String(_arg1._0ln);
            this.graph.graphics.clear();
        }
        ;
        for each (_local11 in _local4) {
            this._1um = _local11;
            _local13 = this._1um.key;
            _local14 = this._04x[_local13];
            if (_local14 == null) {
                _local10 = true;
                _local14 = new Array(this._1um.col.toString(16), new Array());
                this._04x[_local13] = _local14;
            }
            ;
            _local15 = _local14[1];
            if (_local3 == 1) {
                if (_arg1.type == _40._m4) {
                    _local17 = Math.floor((_arg1._0ln / this._1um.v));
                    if (_local17 > 30) {
                        _local17 = 30;
                    }
                    ;
                    while (_local17 > 0) {
                        _local15.push(this._1um.v);
                        _local17--;
                    }
                    ;
                } else {
                    _local15.push(this._1um.v);
                }
                ;
            }
            ;
            _local16 = (Math.floor(_local5) + 10);
            while (_local15.length > _local16) {
                _local15.shift();
            }
            ;
            if (_arg2) {
                _local18 = _local15.length;
                this.graph.graphics.lineStyle(1, this._1um.col);
                _local19 = (((_local5 > _local18)) ? _local18 : _local5);
                _local20 = 1;
                while (_local20 < _local19) {
                    _local21 = (((_local9) ? ((_local15[(_local18 - _local20)] - _local7) / _local9) : 0.5) * _local6);
                    if (!_arg1._0Wv) {
                        _local21 = (_local6 - _local21);
                    }
                    ;
                    if (_local21 < 0) {
                        _local21 = 0;
                    }
                    ;
                    if (_local21 > _local6) {
                        _local21 = _local6;
                    }
                    ;
                    if (_local20 == 1) {
                        this.graph.graphics.moveTo(width, _local21);
                    }
                    ;
                    this.graph.graphics.lineTo((_local5 - _local20), _local21);
                    _local20++;
                }
                ;
                if (((isNaN(this._1um.avg)) && (_local9))) {
                    _local21 = (((this._1um.avg - _local7) / _local9) * _local6);
                    if (!_arg1._0Wv) {
                        _local21 = (_local6 - _local21);
                    }
                    ;
                    if (_local21 < 0) {
                        _local21 = 0;
                    }
                    ;
                    if (_local21 > _local6) {
                        _local21 = _local6;
                    }
                    ;
                    this.graph.graphics.lineStyle(1, this._1um.col, 0.3);
                    this.graph.graphics.moveTo(0, _local21);
                    this.graph.graphics.lineTo(_local5, _local21);
                }
                ;
            }
            ;
        }
        ;
        for (_local12 in this._04x) {
            for each (_local11 in _local4) {
                if (_local11.key == _local12) {
                    _local22 = true;
                }
                ;
            }
            ;
            if (!_local22) {
                _local10 = true;
                delete this._04x[_local12];
            }
            ;
        }
        ;
        if (((_arg2) && (((_local10) || (this._1NF))))) {
            this._0CW();
        }
        ;
    }

    public function _0CW():void {
        var _local2:String;
        var _local1 = "<r><low>";
        if (this._1NF) {
            if (isNaN(this._1um.v)) {
                _local1 = (_local1 + "no input");
            } else {
                if (this._1NF == _m4) {
                    _local1 = (_local1 + this._1um.avg.toFixed(1));
                } else {
                    _local1 = (_local1 + (this._1um.v + "mb"));
                }
                ;
            }
            ;
        } else {
            for (_local2 in this._04x) {
                _local1 = (_local1 + ((((" <font color='#" + this._04x[_local2][0]) + "'>") + _local2) + "</font>"));
            }
            ;
            _local1 = (_local1 + " |");
        }
        ;
        _1FH.htmlText = (_local1 + this._1EP);
        _1FH.scrollH = _1FH.maxScrollH;
    }

    private function stop():void {
        if (this._Sx) {
            console.graphing.remove(this._Sx.name);
        }
        ;
    }

    protected function _0WF(_arg1:TextEvent):void {
        TextField(_arg1.currentTarget).setSelection(0, 0);
        if (_arg1.text == "reset") {
            this.reset();
        } else {
            if (_arg1.text == "close") {
                if (this._1NF == _m4) {
                    console.fpsMonitor = false;
                } else {
                    if (this._1NF == _2U) {
                        console.memoryMonitor = false;
                    } else {
                        this.stop();
                    }
                    ;
                }
                ;
                console.panels.removeGraph(this._Sx);
            } else {
                if (_arg1.text == "gc") {
                    console.gc();
                }
                ;
            }
            ;
        }
        ;
        _arg1.stopPropagation();
    }

    protected function onMenuRollOver(_arg1:TextEvent):void {
        var _local2:String = ((_arg1.text) ? _arg1.text.replace("event:", "") : null);
        if (_local2 == "gc") {
            _local2 = "Garbage collect::Requires debugger version of flash player";
        }
        ;
        console.panels.tooltip(_local2, this);
    }


}
}//package _1np

