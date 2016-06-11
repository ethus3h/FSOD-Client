// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bb._07q

package _bb {
import _08f.Console;

import _s2._11h;

import flash.events.Event;
import flash.utils.ByteArray;

public class _07q extends _1b6 {

    public function _07q(_arg1:Console) {
        var console:Console = _arg1;
        super(console);
        this._zU = new Object();
        remoter.addEventListener(Event.CONNECT, this._1D);
        remoter.registerCallback("log", function (_arg1:ByteArray):void {
            registerLog(_11h._1dv(_arg1));
        });
    }
    public var first:_11h;
    public var last:_11h;
    private var _zU:Object;
    private var _N7:uint;
    private var _1qY:_11h;
    private var _MN:_11h;
    private var _1Da:Boolean;
    private var _timer:uint;
    private var _0Xm:uint;
    private var _lines:uint;

    public function update(_arg1:uint):Boolean {
        this._timer = _arg1;
        if (this._N7 > 0) {
            this._N7--;
        }
        ;
        if (this._MN) {
            if (this._1qY) {
                this.remove(this._1qY);
            }
            ;
            this._1qY = this._MN;
            this._MN = null;
            this.push(this._1qY);
        }
        ;
        var _local2:Boolean = this._1Da;
        this._1Da = false;
        return (_local2);
    }

    public function add(_arg1:_11h):void {
        this._lines++;
        _arg1.line = this._lines;
        _arg1.time = this._timer;
        this.registerLog(_arg1);
    }

    public function clear(_arg1:String = null):void {
        var _local2:_11h;
        if (_arg1) {
            _local2 = this.first;
            while (_local2) {
                if (_local2.ch == _arg1) {
                    this.remove(_local2);
                }
                ;
                _local2 = _local2.next;
            }
            ;
            delete this._zU[_arg1];
        } else {
            this.first = null;
            this.last = null;
            this._0Xm = 0;
            this._zU = new Object();
        }
        ;
    }

    public function getLogsAsString(_arg1:String, _arg2:Boolean = true, _arg3:Function = null):String {
        var _local4 = "";
        var _local5:_11h = this.first;
        while (_local5) {
            if ((((_arg3 == null)) || (_arg3(_local5)))) {
                if (this.first != _local5) {
                    _local4 = (_local4 + _arg1);
                }
                ;
                _local4 = (_local4 + ((_arg2) ? _local5.toString() : _local5.plainText()));
            }
            ;
            _local5 = _local5.next;
        }
        ;
        return (_local4);
    }

    public function getChannels():Array {
        var _local3:String;
        var _local1:Array = new Array(Console._3D);
        this._0KH(Console._13v, _local1);
        this._0KH(Console._0pZ, _local1);
        this._0KH(_0wf._Sg, _local1);
        this._0KH(Console._1Lq, _local1);
        var _local2:Array = new Array();
        for (_local3 in this._zU) {
            if (_local1.indexOf(_local3) < 0) {
                _local2.push(_local3);
            }
            ;
        }
        ;
        return (_local1.concat(_local2.sort(Array.CASEINSENSITIVE)));
    }

    public function _18B():void {
        this._zU = new Object();
        var _local1:_11h = this.first;
        while (_local1) {
            this.addChannel(_local1.ch);
            _local1 = _local1.next;
        }
        ;
    }

    public function addChannel(_arg1:String):void {
        this._zU[_arg1] = null;
    }

    private function _Ti(_arg1:_11h):void {
        var _local2:ByteArray;
        if (remoter.canSend) {
            _local2 = new ByteArray();
            _arg1._v(_local2);
            remoter.send("log", _local2);
        }
        ;
    }

    private function registerLog(_arg1:_11h):void {
        this._1Da = true;
        this.addChannel(_arg1.ch);
        _arg1._1y1 = (_arg1.line + " ");
        _arg1._01K = (((('[<a href="event:channel_' + _arg1.ch) + '">') + _arg1.ch) + "</a>] ");
        _arg1._8e = (config.timeStampFormatter(_arg1.time) + " ");
        this._Ti(_arg1);
        if (_arg1.repeat) {
            if ((((this._N7 > 0)) && (this._1qY))) {
                _arg1.line = this._1qY.line;
                this._MN = _arg1;
                return;
            }
            ;
            this._N7 = config.maxRepeats;
            this._1qY = _arg1;
        }
        ;
        this.push(_arg1);
        while ((((this._0Xm > config.maxLines)) && ((config.maxLines > 0)))) {
            this.remove(this.first);
        }
        ;
        if (((config.tracing) && (!((config.traceCall == null))))) {
            config.traceCall(_arg1.ch, _arg1.plainText(), _arg1.priority);
        }
        ;
    }

    private function _0KH(_arg1:String, _arg2:Array):void {
        if (this._zU.hasOwnProperty(_arg1)) {
            _arg2.push(_arg1);
        }
        ;
    }

    private function push(_arg1:_11h):void {
        if (this.last == null) {
            this.first = _arg1;
        } else {
            this.last.next = _arg1;
            _arg1._dN = this.last;
        }
        ;
        this.last = _arg1;
        this._0Xm++;
    }

    private function remove(_arg1:_11h):void {
        if (this.first == _arg1) {
            this.first = _arg1.next;
        }
        ;
        if (this.last == _arg1) {
            this.last = _arg1._dN;
        }
        ;
        if (_arg1 == this._1qY) {
            this._1qY = null;
        }
        ;
        if (_arg1 == this._MN) {
            this._MN = null;
        }
        ;
        if (_arg1.next != null) {
            _arg1.next._dN = _arg1._dN;
        }
        ;
        if (_arg1._dN != null) {
            _arg1._dN.next = _arg1.next;
        }
        ;
        this._0Xm--;
    }

    private function _1D(_arg1:Event):void {
        var _local2:_11h = this.first;
        while (_local2) {
            this._Ti(_local2);
            _local2 = _local2.next;
        }
        ;
    }


}
}//package _bb

