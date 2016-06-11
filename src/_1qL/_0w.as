// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1qL._0w

package _1qL {
import _0cA._0bz;

import _0fB.*;

import _0hL.applyHooks;
import _0hL.guardsApprove;

import _1Sm._1uu;

import flash.utils.Dictionary;
import flash.utils.describeType;

public class _0w implements _0F {

    private const _1Yr:Vector.<_17U> = new Vector.<_17U>();

    public function _0w(_arg1:_0bz, _arg2:Class, _arg3:Boolean = false) {
        this._6y = _arg1;
        this._ec = _arg2;
        this._once = _arg3;
        this._0N7 = new Dictionary(false);
        this._1Ib = new Dictionary(false);
    }
    protected var _6y:_0bz;
    protected var _0N7:Dictionary;
    protected var _1Ib:Dictionary;
    private var _signal:_1uu;
    private var _ec:Class;
    private var _once:Boolean;

    public function _de(_arg1:_17U):void {
        this._0aT(_arg1);
        this._1Yr.push(_arg1);
        if (this._1Yr.length == 1) {
            this._1CI(_arg1.commandClass);
        }
        ;
    }

    public function _1G4(_arg1:_17U):void {
        var _local2:int = this._1Yr.indexOf(_arg1);
        if (_local2 != -1) {
            this._1Yr.splice(_local2, 1);
            if (this._1Yr.length == 0) {
                this._Ex(_arg1.commandClass);
            }
            ;
        }
        ;
    }

    protected function _0aT(_arg1:_17U):void {
        var mapping:_17U = _arg1;
        if (this._1Ib[mapping.commandClass]) {
            return;
        }
        ;
        if (describeType(mapping.commandClass).factory.method.(@name == "execute").length() == 0) {
            throw (new Error("Command Class must expose an execute method"));
        }
        ;
        this._1Ib[mapping.commandClass] = true;
    }

    protected function _E(_arg1:_1uu, _arg2:Array, _arg3:Class, _arg4:Boolean):void {
        var _local6:_17U;
        var _local7:Boolean;
        var _local8:Object;
        var _local5:Vector.<_17U> = this._1Yr.concat();
        for each (_local6 in _local5) {
            this._1p0(_arg1.valueClasses, _arg2);
            _local7 = guardsApprove(_local6._1Oq, this._6y);
            if (_local7) {
                ((this._once) && (this._1G4(_local6)));
                this._6y.map(_local6.commandClass)._0MH();
                _local8 = this._6y.getInstance(_local6.commandClass);
                applyHooks(_local6._Ya, this._6y);
                this._6y._g(_local6.commandClass);
            }
            ;
            this._11I(_arg1.valueClasses, _arg2);
            if (_local7) {
                _local8.execute();
            }
            ;
        }
        ;
        if (this._once) {
            this._Ex(_arg3);
        }
        ;
    }

    protected function _1p0(_arg1:Array, _arg2:Array):void {
        var _local3:uint;
        while (_local3 < _arg1.length) {
            this._6y.map(_arg1[_local3])._nR(_arg2[_local3]);
            _local3++;
        }
        ;
    }

    protected function _11I(_arg1:Array, _arg2:Array):void {
        var _local3:uint;
        while (_local3 < _arg1.length) {
            this._6y._g(_arg1[_local3]);
            _local3++;
        }
        ;
    }

    protected function _dm(_arg1:_1uu, _arg2:Class):Boolean {
        var _local3:Dictionary = this._0N7[_arg1];
        if (_local3 == null) {
            return (false);
        }
        ;
        var _local4:Function = _local3[_arg2];
        return (!((_local4 == null)));
    }

    private function _1CI(_arg1:Class):void {
        var commandClass:Class = _arg1;
        if (this._dm(this._signal, commandClass)) {
            return;
        }
        ;
        this._signal = this._6y.getInstance(this._ec);
        this._6y.map(this._ec)._nR(this._signal);
        var signalCommandMap:Dictionary = (this._0N7[this._signal] = ((this._0N7[this._signal]) || (new Dictionary(false))));
        var callback:Function = function ():void {
            _E(_signal, arguments, commandClass, _once);
        };
        signalCommandMap[commandClass] = callback;
        this._signal.add(callback);
    }

    private function _Ex(_arg1:Class):void {
        var _local2:Dictionary = this._0N7[this._signal];
        if (_local2 == null) {
            return;
        }
        ;
        var _local3:Function = _local2[_arg1];
        if (_local3 == null) {
            return;
        }
        ;
        this._signal.remove(_local3);
        delete _local2[_arg1];
    }


}
}//package _1qL

