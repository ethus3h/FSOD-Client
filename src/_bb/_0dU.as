// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bb._0dU

package _bb {
import _08f.Console;

import _s2._40;
import _s2._yA;

import flash.geom.Rectangle;
import flash.system.System;
import flash.utils.ByteArray;
import flash.utils.getTimer;

public class _0dU extends _1b6 {

    public function _0dU(_arg1:Console) {
        var m:Console = _arg1;
        this._G4 = [];
        this._0QW = {};
        super(m);
        remoter.registerCallback("fps", function (_arg1:ByteArray):void {
            fpsMonitor = _arg1.readBoolean();
        });
        remoter.registerCallback("mem", function (_arg1:ByteArray):void {
            memoryMonitor = _arg1.readBoolean();
        });
        remoter.registerCallback("removeGroup", function (_arg1:ByteArray):void {
            removeGroup(_arg1.readUTF());
        });
        remoter.registerCallback("graph", this._1i, true);
    }
    private var _G4:Array;
    private var _0QW:Object;
    private var _1Pv:_40;
    private var _XX:_40;
    private var _Oy:Boolean;
    private var _0RH:Number = -1;

    public function get fpsMonitor():Boolean {
        if (remoter.remoting == _0fj._0Cs) {
            return (console.panels.fpsMonitor);
        }
        ;
        return (!((this._1Pv == null)));
    }

    public function set fpsMonitor(_arg1:Boolean):void {
        var _local2:ByteArray;
        var _local3:int;
        if (remoter.remoting == _0fj._0Cs) {
            _local2 = new ByteArray();
            _local2.writeBoolean(_arg1);
            remoter.send("fps", _local2);
        } else {
            if (_arg1 != this.fpsMonitor) {
                if (_arg1) {
                    this._1Pv = this._10Y(_40._m4);
                    this._1Pv.low = 0;
                    this._1Pv.fixed = true;
                    this._1Pv._124 = 30;
                } else {
                    this._0RH = -1;
                    _local3 = this._G4.indexOf(this._1Pv);
                    if (_local3 >= 0) {
                        this._G4.splice(_local3, 1);
                    }
                    ;
                    this._1Pv = null;
                }
                ;
                console.panels.mainPanel.updateMenu();
            }
            ;
        }
        ;
    }

    public function get memoryMonitor():Boolean {
        if (remoter.remoting == _0fj._0Cs) {
            return (console.panels.memoryMonitor);
        }
        ;
        return (!((this._XX == null)));
    }

    public function set memoryMonitor(_arg1:Boolean):void {
        var _local2:ByteArray;
        var _local3:int;
        if (remoter.remoting == _0fj._0Cs) {
            _local2 = new ByteArray();
            _local2.writeBoolean(_arg1);
            remoter.send("mem", _local2);
        } else {
            if (_arg1 != this.memoryMonitor) {
                if (_arg1) {
                    this._XX = this._10Y(_40._2U);
                    this._XX._1fn = 20;
                } else {
                    _local3 = this._G4.indexOf(this._XX);
                    if (_local3 >= 0) {
                        this._G4.splice(_local3, 1);
                    }
                    ;
                    this._XX = null;
                }
                ;
                console.panels.mainPanel.updateMenu();
            }
            ;
        }
        ;
    }

    public function add(_arg1:String, _arg2:Object, _arg3:String, _arg4:Number = -1, _arg5:String = null, _arg6:Rectangle = null, _arg7:Boolean = false):void {
        var newGroup:Boolean;
        var i:_yA;
        var n:String = _arg1;
        var obj:Object = _arg2;
        var prop:String = _arg3;
        var col:int = _arg4;
        var key = _arg5;
        var rect = _arg6;
        var inverse:Boolean = _arg7;
        if (obj == null) {
            report((((("ERROR: Graph [" + n) + "] received a null object to graph property [") + prop) + "]."), 10);
            return;
        }
        ;
        var group:_40 = this._0QW[n];
        if (!group) {
            newGroup = true;
            group = new _40(n);
        }
        ;
        var interests:Array = group.interests;
        if (((isNaN(col)) || ((col < 0)))) {
            if (interests.length <= 5) {
                col = config.style[("priority" + (10 - (interests.length * 2)))];
            } else {
                col = (Math.random() * 0xFFFFFF);
            }
            ;
        }
        ;
        if (key == null) {
            key = prop;
        }
        ;
        for each (i in interests) {
            if (i.key == key) {
                report((((("Graph with key [" + key) + "] already exists in [") + n) + "]"), 10);
                return;
            }
            ;
        }
        ;
        if (rect) {
            group.rect = rect;
        }
        ;
        if (inverse) {
            group._0Wv = inverse;
        }
        ;
        var interest:_yA = new _yA(key, col);
        var v:Number = NaN;
        try {
            v = interest.setObject(obj, prop);
        } catch (e:Error) {
            report(((((("Error with graph value for [" + key) + "] in [") + n) + "]. ") + e), 10);
            return;
        }
        ;
        if (isNaN(v)) {
            report((((("Graph value for key [" + key) + "] in [") + n) + "] is not a number (NaN)."), 10);
        } else {
            group.interests.push(interest);
            if (newGroup) {
                this._0QW[n] = group;
                this._G4.push(group);
            }
            ;
        }
        ;
    }

    public function _0tv(_arg1:String, _arg2:Number = NaN, _arg3:Number = NaN):void {
        var _local4:_40 = this._0QW[_arg1];
        if (!_local4) {
            return;
        }
        ;
        _local4.low = _arg2;
        _local4._0ln = _arg3;
        _local4.fixed = !(((isNaN(_arg2)) || (isNaN(_arg3))));
    }

    public function remove(_arg1:String, _arg2:Object = null, _arg3:String = null):void {
        var _local4:Array;
        var _local5:int;
        var _local6:_yA;
        if ((((_arg2 == null)) && ((_arg3 == null)))) {
            this.removeGroup(_arg1);
        } else {
            if (this._0QW[_arg1]) {
                _local4 = this._0QW[_arg1].interests;
                _local5 = (_local4.length - 1);
                while (_local5 >= 0) {
                    _local6 = _local4[_local5];
                    if ((((((_arg2 == null)) || ((_local6.obj == _arg2)))) && ((((_arg3 == null)) || ((_local6.prop == _arg3)))))) {
                        _local4.splice(_local5, 1);
                    }
                    ;
                    _local5--;
                }
                ;
                if (_local4.length == 0) {
                    this.removeGroup(_arg1);
                }
                ;
            }
            ;
        }
        ;
    }

    public function update(_arg1:Number = 0):Array {
        var _local2:_yA;
        var _local3:Number;
        var _local4:_40;
        var _local5:Boolean;
        var _local6:uint;
        var _local7:uint;
        var _local8:Array;
        var _local9:int;
        var _local10:Number;
        var _local11:uint;
        var _local12:ByteArray;
        var _local13:uint;
        for each (_local4 in this._G4) {
            _local5 = true;
            if (_local4._1fn > 1) {
                _local4._1SV++;
                if (_local4._1SV < _local4._1fn) {
                    _local5 = false;
                } else {
                    _local4._1SV = 0;
                }
                ;
            }
            ;
            if (_local5) {
                _local6 = _local4.type;
                _local7 = _local4._124;
                _local8 = _local4.interests;
                if (_local6 == _40._m4) {
                    _local4._0ln = _arg1;
                    _local2 = _local8[0];
                    _local9 = getTimer();
                    if (this._0RH >= 0) {
                        _local10 = (_local9 - this._0RH);
                        _local3 = (1000 / _local10);
                        _local2.setValue(_local3, _local7);
                    }
                    ;
                    this._0RH = _local9;
                } else {
                    if (_local6 == _40._2U) {
                        _local2 = _local8[0];
                        _local3 = (Math.round((System.totalMemory / 10485.76)) / 100);
                        _local4._1Uq(_local3);
                        _local2.setValue(_local3, _local7);
                    } else {
                        this._9T(_local4);
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        if (((remoter.canSend) && (((this._Oy) || (this._G4.length))))) {
            _local11 = this._G4.length;
            _local12 = new ByteArray();
            _local13 = 0;
            while (_local13 < _local11) {
                _40(this._G4[_local13])._v(_local12);
                _local13++;
            }
            ;
            remoter.send("graph", _local12);
            this._Oy = (this._G4.length > 0);
        }
        ;
        return (this._G4);
    }

    private function removeGroup(_arg1:String):void {
        var _local2:ByteArray;
        var _local3:_40;
        var _local4:int;
        if (remoter.remoting == _0fj._0Cs) {
            _local2 = new ByteArray();
            _local2.writeUTF(_arg1);
            remoter.send("removeGroup", _local2);
        } else {
            _local3 = this._0QW[_arg1];
            _local4 = this._G4.indexOf(_local3);
            if (_local4 >= 0) {
                this._G4.splice(_local4, 1);
            }
            ;
            delete this._0QW[_arg1];
        }
        ;
    }

    private function _10Y(_arg1:int):_40 {
        var _local2:_40 = new _40("special");
        _local2.type = _arg1;
        this._G4.push(_local2);
        var _local3:_yA = new _yA("special");
        if (_arg1 == _40._m4) {
            _local3.col = 16724787;
        } else {
            _local3.col = 5267711;
        }
        ;
        _local2.interests.push(_local3);
        return (_local2);
    }

    private function _9T(_arg1:_40):void {
        var i:_yA;
        var v:Number;
        var group:_40 = _arg1;
        for each (i in group.interests) {
            try {
                v = i._1Wx();
                i.setValue(v, group._124);
            } catch (e:Error) {
                report(((((("Error with graph value for key [" + i.key) + "] in [") + group.name) + "]. ") + e), 10);
                remove(group.name, i.obj, i.prop);
            }
            ;
            group._1Uq(v);
        }
        ;
    }

    private function _1i(_arg1:ByteArray = null):void {
        var _local2:Array;
        if (((_arg1) && (_arg1.length))) {
            _arg1.position = 0;
            _local2 = new Array();
            while (_arg1.bytesAvailable) {
                _local2.push(_40._1dv(_arg1));
            }
            ;
            console.panels.updateGraphs(_local2);
        } else {
            console.panels.updateGraphs(new Array());
        }
        ;
    }


}
}//package _bb

