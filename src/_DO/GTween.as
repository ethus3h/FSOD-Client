// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_DO.GTween

package _DO {
import flash.display.Shape;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import flash.utils.Dictionary;
import flash.utils.getTimer;

public class GTween extends EventDispatcher {

    {
        _01Z();
    }
    public static var version:Number = 2.01;
    public static var _08M:Boolean = false;
    public static var _0wE:Function = _02G;
    public static var _gy:Boolean = false;
    public static var _0bg:Number = 1;
    protected static var _else:Boolean = false;
    protected static var _1pt:Object = {};
    protected static var _00D:Shape;
    protected static var time:Number;
    protected static var _0Cw:Dictionary = new Dictionary(true);
    protected static var _1Uu:Dictionary = new Dictionary(false);

    public static function _0PP(_arg1:Object, _arg2:Array, _arg3:Boolean = false):void {
        var _local5:String;
        var _local4:uint;
        while (_local4 < _arg2.length) {
            _local5 = _arg2[_local4];
            if (_local5 == "*") {
                _else = true;
            }
            ;
            if (_1pt[_local5] == null) {
                _1pt[_local5] = [_arg1];
            } else {
                if (_arg3) {
                    _1pt[_local5].unshift(_arg1);
                } else {
                    _1pt[_local5].push(_arg1);
                }
                ;
            }
            ;
            _local4++;
        }
        ;
    }

    public static function _02G(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number):Number {
        return (_arg1);
    }

    protected static function _01Z():void {
        (_00D = new Shape()).addEventListener(Event.ENTER_FRAME, _0fe);
        time = (getTimer() / 1000);
    }

    public function GTween(_arg1:Object = null, _arg2:Number = 1, _arg3:Object = null, _arg4:Object = null, _arg5:Object = null) {
        var _local6:Boolean;
        super();
        this.ease = _0wE;
        this._Ch = _08M;
        this.target = _arg1;
        this.duration = _arg2;
        this._ft = this.copy(_arg5, {});
        if (_arg4) {
            _local6 = _arg4.swapValues;
            delete _arg4.swapValues;
        }
        ;
        this.copy(_arg4, this);
        this._xu(_arg3);
        if (_local6) {
            this.swapValues();
        }
        ;
        if ((((((this.duration == 0)) && ((this.delay == 0)))) && (this._0WW))) {
            this.position = 0;
        }
        ;
    }
    public var _0WW:Boolean = true;
    public var data;
    public var duration:Number;
    public var ease:Function;
    public var _1QN:GTween;
    public var _ft:Object;
    public var _Sm:Boolean;
    public var _1Qm:int = 1;
    public var target:Object;
    public var _0gT:Boolean;
    public var _uS:Number = 1;
    public var _0qf:Number;
    public var _o7:Number;
    public var _20L:Number;
    public var _xY:Number;
    public var _1K0:Number;
    public var _09R:Boolean;
    public var _Ch:Boolean;
    public var onComplete:Function;
    public var _1PA:Function;
    public var _1eI:Function;
    protected var _1fM:Number = 0;
    protected var _1jK:Object;
    protected var _i7:Boolean = true;
    protected var _12J:Number;
    protected var _var:Boolean;
    protected var _1j0:Object;
    protected var _02g:Object;

    protected var _proxy:TargetProxy;

    public function get proxy():TargetProxy {
        if (this._proxy == null) {
            this._proxy = new TargetProxy(this);
        }
        ;
        return (this._proxy);
    }

    public function get paused():Boolean {
        return (this._i7);
    }

    public function set paused(_arg1:Boolean):void {
        if (_arg1 == this._i7) {
            return;
        }
        ;
        this._i7 = _arg1;
        if (this._i7) {
            delete _0Cw[this];
            if ((this.target is IEventDispatcher)) {
                this.target.removeEventListener("_", this._1Dx);
            }
            ;
            delete _1Uu[this];
        } else {
            if (((isNaN(this._12J)) || (((!((this._1Qm == 0))) && ((this._12J >= (this._1Qm * this.duration))))))) {
                this._var = false;
                this._xY = (this._1K0 = (this._o7 = (this._20L = (this._0qf = 0))));
                this._12J = -(this.delay);
            }
            ;
            _0Cw[this] = true;
            if ((this.target is IEventDispatcher)) {
                this.target.addEventListener("_", this._1Dx);
            } else {
                _1Uu[this] = true;
            }
            ;
        }
        ;
    }

    public function get position():Number {
        return (this._12J);
    }

    public function set position(_arg1:Number):void {
        var _local4:String;
        var _local5:Number;
        var _local6:Number;
        var _local7:Number;
        var _local8:Array;
        var _local9:uint;
        var _local10:uint;
        this._0qf = this._12J;
        this._20L = this._o7;
        this._1K0 = this._xY;
        var _local2:Number = (this._1Qm * this.duration);
        var _local3:Boolean = (((_arg1 >= _local2)) && ((this._1Qm > 0)));
        if (_local3) {
            if (this._1K0 == _local2) {
                return;
            }
            ;
            this._12J = _local2;
            this._xY = ((((this._Sm) && (!((this._1Qm & 1))))) ? 0 : this.duration);
        } else {
            this._12J = _arg1;
            this._xY = (((this._12J < 0)) ? 0 : (this._12J % this.duration));
            if (((this._Sm) && (((this._12J / this.duration) & 1)))) {
                this._xY = (this.duration - this._xY);
            }
            ;
        }
        ;
        this._o7 = (((((this.duration == 0)) && ((this._12J >= 0)))) ? 1 : this.ease((this._xY / this.duration), 0, 1, 1));
        if (((((this.target) && ((((this._12J >= 0)) || ((this._0qf >= 0)))))) && (!((this._xY == this._1K0))))) {
            if (!this._var) {
                this.init();
            }
            ;
            for (_local4 in this._1jK) {
                _local5 = this._1j0[_local4];
                _local6 = this._02g[_local4];
                _local7 = (_local5 + (_local6 * this._o7));
                _local8 = _1pt[_local4];
                if (_local8) {
                    _local9 = _local8.length;
                    _local10 = 0;
                    while (_local10 < _local9) {
                        _local7 = _local8[_local10].tween(this, _local4, _local7, _local5, _local6, this._o7, _local3);
                        _local10++;
                    }
                    ;
                    if (!isNaN(_local7)) {
                        this.target[_local4] = _local7;
                    }
                    ;
                } else {
                    this.target[_local4] = _local7;
                }
                ;
            }
            ;
        }
        ;
        if (_else) {
            _local8 = _1pt["*"];
            _local9 = _local8.length;
            _local10 = 0;
            while (_local10 < _local9) {
                _local8[_local10].tween(this, "*", NaN, NaN, NaN, this._o7, _local3);
                _local10++;
            }
            ;
        }
        ;
        if (!this._09R) {
            if (this._Ch) {
                this._1GL("change");
            }
            ;
            if (this._1PA != null) {
                this._1PA(this);
            }
            ;
        }
        ;
        if (_local3) {
            this.paused = true;
            if (this._1QN) {
                this._1QN.paused = false;
            }
            ;
            if (!this._09R) {
                if (this._Ch) {
                    this._1GL("complete");
                }
                ;
                if (this.onComplete != null) {
                    this.onComplete(this);
                }
                ;
            }
            ;
        }
        ;
    }

    public function get delay():Number {
        return (this._1fM);
    }

    public function set delay(_arg1:Number):void {
        if (this._12J <= 0) {
            this._12J = -(_arg1);
        }
        ;
        this._1fM = _arg1;
    }

    public function setValue(_arg1:String, _arg2:Number):void {
        this._1jK[_arg1] = _arg2;
        this._1Dx();
    }

    public function getValue(_arg1:String):Number {
        return (this._1jK[_arg1]);
    }

    public function _1SY(_arg1:String):Boolean {
        delete this._02g[_arg1];
        delete this._1j0[_arg1];
        return (delete this._1jK[_arg1]);
    }

    public function _G7(_arg1:Object):void {
        this.copy(_arg1, this._1jK, true);
        this._1Dx();
    }

    public function _xu(_arg1:Object = null):void {
        this._1jK = {};
        this._G7(_arg1);
    }

    public function _0rW():Object {
        return (this.copy(this._1jK, {}));
    }

    public function _1EF(_arg1:String):Number {
        return (this._1j0[_arg1]);
    }

    public function swapValues():void {
        var _local2:String;
        var _local3:Number;
        if (!this._var) {
            this.init();
        }
        ;
        var _local1:Object = this._1jK;
        this._1jK = this._1j0;
        this._1j0 = _local1;
        for (_local2 in this._02g) {
            this._02g[_local2] = (this._02g[_local2] * -1);
        }
        ;
        if (this._12J < 0) {
            _local3 = this._0qf;
            this.position = 0;
            this._12J = this._0qf;
            this._0qf = _local3;
        } else {
            this.position = this._12J;
        }
        ;
    }

    public function init():void {
        var _local1:String;
        var _local2:Array;
        var _local3:uint;
        var _local4:Number;
        var _local5:uint;
        this._var = true;
        this._1j0 = {};
        this._02g = {};
        for (_local1 in this._1jK) {
            if (_1pt[_local1]) {
                _local2 = _1pt[_local1];
                _local3 = _local2.length;
                _local4 = (((_local1 in this.target)) ? this.target[_local1] : NaN);
                _local5 = 0;
                while (_local5 < _local3) {
                    _local4 = _local2[_local5].init(this, _local1, _local4);
                    _local5++;
                }
                ;
                if (!isNaN(_local4)) {
                    this._02g[_local1] = (this._1jK[_local1] - (this._1j0[_local1] = _local4));
                }
                ;
            } else {
                this._02g[_local1] = (this._1jK[_local1] - (this._1j0[_local1] = this.target[_local1]));
            }
            ;
        }
        ;
        if (_else) {
            _local2 = _1pt["*"];
            _local3 = _local2.length;
            _local5 = 0;
            while (_local5 < _local3) {
                _local2[_local5].init(this, "*", NaN);
                _local5++;
            }
            ;
        }
        ;
        if (!this._09R) {
            if (this._Ch) {
                this._1GL("init");
            }
            ;
            if (this._1eI != null) {
                this._1eI(this);
            }
            ;
        }
        ;
    }

    public function _01e():void {
        this.position = 0;
        this.paused = true;
    }

    public function end():void {
        this.position = (((this._1Qm) > 0) ? (this._1Qm * this.duration) : this.duration);
    }

    protected function _1Dx():void {
        this._var = false;
        if (this._12J > 0) {
            this._12J = 0;
        }
        ;
        if (this._0WW) {
            this.paused = false;
        }
        ;
    }

    protected function copy(_arg1:Object, _arg2:Object, _arg3:Boolean = false):Object {
        var _local4:String;
        for (_local4 in _arg1) {
            if (((_arg3) && ((_arg1[_local4] == null)))) {
                delete _arg2[_local4];
            } else {
                _arg2[_local4] = _arg1[_local4];
            }
            ;
        }
        ;
        return (_arg2);
    }

    protected function _1GL(_arg1:String):void {
        if (hasEventListener(_arg1)) {
            dispatchEvent(new Event(_arg1));
        }
        ;
    }

    protected static function _0fe(_arg1:Event):void {
        var _local4:Object;
        var _local5:GTween;
        var _local2:Number = time;
        time = (getTimer() / 1000);
        if (_gy) {
            return;
        }
        ;
        var _local3:Number = ((time - _local2) * _0bg);
        for (_local4 in _0Cw) {
            _local5 = (_local4 as GTween);
            _local5.position = (_local5._12J + (((_local5._0gT) ? _0bg : _local3) * _local5._uS));
        }
        ;
    }


}
}//package _DO

import _DO.GTween;

import flash.utils.Proxy;
import flash.utils.flash_proxy;

dynamic class TargetProxy extends Proxy {

    private var tween:GTween;

    public function TargetProxy(_arg1:GTween):void {
        this.tween = _arg1;
    }

    override flash_proxy function callProperty(_arg1:*, ..._args):* {
        return (this.tween.target[_arg1].apply(null, _args));
    }

    override flash_proxy function getProperty(_arg1:*):* {
        var _local2:Number = this.tween.getValue(_arg1);
        return (((isNaN(_local2)) ? this.tween.target[_arg1] : _local2));
    }

    override flash_proxy function setProperty(_arg1:*, _arg2:*):void {
        if ((((((_arg2 is Boolean)) || ((_arg2 is String)))) || (isNaN(_arg2)))) {
            this.tween.target[_arg1] = _arg2;
        } else {
            this.tween.setValue(String(_arg1), Number(_arg2));
        }
        ;
    }

    override flash_proxy function deleteProperty(_arg1:*):Boolean {
        this.tween._1SY(_arg1);
        return (true);
    }


}

