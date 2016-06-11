// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_08f.Console

package _08f {
import _1np._G9;
import _1np._rW;

import _bb.CommandLine;
import _bb._00;
import _bb._07q;
import _bb._0dU;
import _bb._0fj;
import _bb._0wf;
import _bb._1rT;
import _bb._x3;

import _s2._11h;

import flash.display.DisplayObjectContainer;
import flash.display.LoaderInfo;
import flash.display.Sprite;
import flash.events.ErrorEvent;
import flash.events.Event;
import flash.events.IEventDispatcher;
import flash.events.KeyboardEvent;
import flash.geom.Rectangle;
import flash.net.SharedObject;
import flash.system.Capabilities;
import flash.utils.getTimer;

public class Console extends Sprite {

    public static const VERSION:Number = 2.6;
    public static const _1Hh:String = "";
    public static const _063:int = 611;
    public static const _0Ol:String = "2012/02/22 00:11";
    public static const _1YH:uint = 1;
    public static const INFO:uint = 3;
    public static const DEBUG:uint = 6;
    public static const WARN:uint = 8;
    public static const ERROR:uint = 9;
    public static const FATAL:uint = 10;
    public static const _3D:String = " * ";
    public static const _13v:String = "-";
    public static const _1Lq:String = "C";
    public static const _0pZ:String = "~";

    public static function _M(_arg1):String {
        if ((_arg1 is String)) {
            return ((_arg1 as String));
        }
        ;
        if (_arg1) {
            return (_0wf._1eQ(_arg1));
        }
        ;
        return (_13v);
    }

    public function Console(_arg1:String = "", _arg2:_0Rt = null) {
        var password:String = _arg1;
        var config = _arg2;
        this._7H = {};
        super();
        name = "Console";
        if (config == null) {
            config = new _0Rt();
        }
        ;
        this._config = config;
        if (password) {
            this._config.keystrokePassword = password;
        }
        ;
        this._1UU = new _0fj(this);
        this._VQ = new _07q(this);
        this._yF = new _0wf(this);
        this._1sH = new CommandLine(this);
        this._2a = new _1rT(this);
        this._1bq = new _0dU(this);
        this._0i8 = new _x3(this);
        this._16e = new _00(this);
        this.cl.addCLCmd("remotingSocket", function (_arg1:String = ""):void {
            var _local2:Array = _arg1.split(/\s+|\:/);
            remotingSocket(_local2[0], _local2[1]);
        }, "Connect to socket remote. /remotingSocket ip port");
        if (this._config._nZ) {
            try {
                this._while = SharedObject.getLocal(this._config._nZ, this._config._0j5);
                this._7H = this._while.data;
            } catch (e:Error) {
            }
            ;
        }
        ;
        this._config.style.updateStyleSheet();
        this._0Qu = new _rW(this);
        if (password) {
            this.visible = false;
        }
        ;
        this.report(((((((((("<b>Console v" + VERSION) + _1Hh) + "</b> build ") + _063) + ". ") + Capabilities.playerType) + " ") + Capabilities.version) + "."), -2);
        addEventListener(Event.ENTER_FRAME, this._02R);
        addEventListener(Event.ADDED_TO_STAGE, this._oZ);
    }
    private var _0Qu:_rW;
    private var _1sH:CommandLine;
    private var _16e:_00;
    private var _yF:_0wf;
    private var _0i8:_x3;
    private var _1bq:_0dU;
    private var _1UU:_0fj;
    private var _2a:_1rT;
    private var _1ap:int = 50;
    private var _i7:Boolean;
    private var _09T:_0Lr;
    private var _VQ:_07q;
    private var _while:SharedObject;
    private var _7H:Object;

    override public function get width():Number {
        return (this._0Qu.mainPanel.width);
    }

    override public function set width(_arg1:Number):void {
        this._0Qu.mainPanel.width = _arg1;
    }

    override public function get height():Number {
        return (this._0Qu.mainPanel.height);
    }

    override public function set height(_arg1:Number):void {
        this._0Qu.mainPanel.height = _arg1;
    }

    override public function get x():Number {
        return (this._0Qu.mainPanel.x);
    }

    override public function set x(_arg1:Number):void {
        this._0Qu.mainPanel.x = _arg1;
    }

    override public function get y():Number {
        return (this._0Qu.mainPanel.y);
    }

    override public function set y(_arg1:Number):void {
        this._0Qu.mainPanel.y = _arg1;
    }

    override public function set visible(_arg1:Boolean):void {
        super.visible = _arg1;
        if (_arg1) {
            this._0Qu.mainPanel.visible = true;
        }
        ;
    }

    private var _config:_0Rt;

    public function get config():_0Rt {
        return (this._config);
    }

    public function get displayRoller():Boolean {
        return (this._0Qu.displayRoller);
    }

    public function set displayRoller(_arg1:Boolean):void {
        this._0Qu.displayRoller = _arg1;
    }

    public function get rollerCaptureKey():_0Lr {
        return (this._09T);
    }

    public function get fpsMonitor():Boolean {
        return (this._1bq.fpsMonitor);
    }

    public function set fpsMonitor(_arg1:Boolean):void {
        this._1bq.fpsMonitor = _arg1;
    }

    public function get memoryMonitor():Boolean {
        return (this._1bq.memoryMonitor);
    }

    public function set memoryMonitor(_arg1:Boolean):void {
        this._1bq.memoryMonitor = _arg1;
    }

    public function get paused():Boolean {
        return (this._i7);
    }

    public function set paused(_arg1:Boolean):void {
        if (this._i7 == _arg1) {
            return;
        }
        ;
        if (_arg1) {
            this.report("Paused", 10);
        } else {
            this.report("Resumed", -1);
        }
        ;
        this._i7 = _arg1;
        this._0Qu.mainPanel._85(_arg1);
    }

    public function get remoting():Boolean {
        return ((this._1UU.remoting == _0fj._1YW));
    }

    public function set remoting(_arg1:Boolean):void {
        this._1UU.remoting = ((_arg1) ? _0fj._1YW : _0fj.NONE);
    }

    public function set _1u9(_arg1:uint):void {
        this._0Qu.mainPanel.priority = _arg1;
    }

    public function get commandLine():Boolean {
        return (this._0Qu.mainPanel.commandLine);
    }

    public function set commandLine(_arg1:Boolean):void {
        this._0Qu.mainPanel.commandLine = _arg1;
    }

    public function get panels():_rW {
        return (this._0Qu);
    }

    public function get cl():CommandLine {
        return (this._1sH);
    }

    public function get remoter():_0fj {
        return (this._1UU);
    }

    public function get graphing():_0dU {
        return (this._1bq);
    }

    public function get refs():_0wf {
        return (this._yF);
    }

    public function get logs():_07q {
        return (this._VQ);
    }

    public function get _0mO():_1rT {
        return (this._2a);
    }

    public function get so():Object {
        return (this._7H);
    }

    public function _05U(_arg1:LoaderInfo):void {
        var _local2:IEventDispatcher;
        try {
            _local2 = _arg1["uncaughtErrorEvents"];
            if (_local2) {
                _local2.addEventListener("uncaughtError", this._mF, false, 0, true);
            }
            ;
        } catch (err:Error) {
        }
        ;
    }

    public function _1VM(_arg1:String, _arg2:Object, _arg3:String, _arg4:Number = -1, _arg5:String = null, _arg6:Rectangle = null, _arg7:Boolean = false):void {
        this._1bq.add(_arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7);
    }

    public function _1gv(_arg1:String, _arg2:Number = NaN, _arg3:Number = NaN):void {
        this._1bq._0tv(_arg1, _arg2, _arg3);
    }

    public function removeGraph(_arg1:String, _arg2:Object = null, _arg3:String = null):void {
        this._1bq.remove(_arg1, _arg2, _arg3);
    }

    public function _1xr(_arg1:_0Lr, _arg2:Function, _arg3:Array = null):void {
        if (_arg1) {
            this._16e._1xr(_arg1, _arg2, _arg3);
        }
        ;
    }

    public function _0su(_arg1:String, _arg2:Function, _arg3:Array = null, _arg4:String = null):void {
        this.panels.mainPanel._0su(_arg1, _arg2, _arg3, _arg4);
    }

    public function setRollerCaptureKey(_arg1:String, _arg2:Boolean = false, _arg3:Boolean = false, _arg4:Boolean = false):void {
        if (this._09T) {
            this._1xr(this._09T, null);
            this._09T = null;
        }
        ;
        if (((_arg1) && ((_arg1.length == 1)))) {
            this._09T = new _0Lr(_arg1, _arg2, _arg3, _arg4);
            this._1xr(this._09T, this._05R);
        }
        ;
    }

    public function _1f(_arg1:Object, _arg2:String = null):String {
        return (this._0i8._1f(_arg1, _arg2));
    }

    public function _18p(_arg1:String):void {
        this._0i8._18p(_arg1);
    }

    public function gc():void {
        this._0i8.gc();
    }

    public function _0Hv(_arg1:String, _arg2:Object, _arg3:Boolean = false):void {
        this._1sH._0Hv(_arg1, _arg2, _arg3);
    }

    public function map(_arg1:DisplayObjectContainer, _arg2:uint = 0):void {
        this._2a.map(_arg1, _arg2, _13v);
    }

    public function mapch(_arg1, _arg2:DisplayObjectContainer, _arg3:uint = 0):void {
        this._2a.map(_arg2, _arg3, _M(_arg1));
    }

    public function inspect(_arg1:Object, _arg2:Boolean = true):void {
        this._yF.inspect(_arg1, _arg2, _13v);
    }

    public function _1p3(_arg1, _arg2:Object, _arg3:Boolean = true):void {
        this._yF.inspect(_arg2, _arg3, _M(_arg1));
    }

    public function explode(_arg1:Object, _arg2:int = 3):void {
        this._1qM(new Array(this._2a.explode(_arg1, _arg2)), 1, null, false, true);
    }

    public function explodech(_arg1, _arg2:Object, _arg3:int = 3):void {
        this._1qM(new Array(this._2a.explode(_arg2, _arg3)), 1, _arg1, false, true);
    }

    public function remotingSocket(_arg1:String, _arg2:int):void {
        this._1UU.remotingSocket(_arg1, _arg2);
    }

    public function setViewingChannels(..._args):void {
        this._0Qu.mainPanel.setViewingChannels.apply(this, _args);
    }

    public function _1SK(..._args):void {
        this._0Qu.mainPanel._1SK.apply(this, _args);
    }

    public function report(_arg1, _arg2:int = 0, _arg3:Boolean = true, _arg4:String = null):void {
        if (!_arg4) {
            _arg4 = this._0Qu.mainPanel.reportChannel;
        }
        ;
        this._1qM([_arg1], _arg2, _arg4, false, _arg3, 0);
    }

    public function _1qM(_arg1:Array, _arg2:int = 0, _arg3 = null, _arg4:Boolean = false, _arg5:Boolean = false, _arg6:int = -1):void {
        var _local7 = "";
        var _local8:int = _arg1.length;
        var _local9:int;
        while (_local9 < _local8) {
            _local7 = (_local7 + (((_local9) ? " " : "") + this._yF.makeString(_arg1[_local9], null, _arg5)));
            _local9++;
        }
        ;
        if ((((_arg2 >= this._config._cY)) && ((_arg6 < 0)))) {
            _arg6 = this._config._0Z5;
        }
        ;
        if (((!(_arg5)) && ((_arg6 > 0)))) {
            _local7 = (_local7 + this._2a._09J(_arg6, _arg2));
        }
        ;
        this._VQ.add(new _11h(_local7, _M(_arg3), _arg2, _arg4, _arg5));
    }

    public function _0xN(_arg1:String, _arg2:Function, _arg3:String = "", _arg4:Boolean = true, _arg5:String = ";"):void {
        this._1sH._0xN(_arg1, _arg2, _arg3, _arg4, _arg5);
    }

    public function add(_arg1, _arg2:int = 2, _arg3:Boolean = false):void {
        this._1qM([_arg1], _arg2, _13v, _arg3);
    }

    public function _1gA(_arg1, _arg2:int = -1, _arg3:int = 5):void {
        this._1qM([_arg1], _arg3, _13v, false, false, (((_arg2 >= 0)) ? _arg2 : this._config._0Z5));
    }

    public function _09g(_arg1, _arg2, _arg3:int = -1, _arg4:int = 5):void {
        this._1qM([_arg2], _arg4, _arg1, false, false, (((_arg3 >= 0)) ? _arg3 : this._config._0Z5));
    }

    public function log(..._args):void {
        this._1qM(_args, _1YH);
    }

    public function info(..._args):void {
        this._1qM(_args, INFO);
    }

    public function debug(..._args):void {
        this._1qM(_args, DEBUG);
    }

    public function _1Sh(..._args):void {
        this._1qM(_args, WARN);
    }

    public function error(..._args):void {
        this._1qM(_args, ERROR);
    }

    public function _Gq(..._args):void {
        this._1qM(_args, FATAL);
    }

    public function ch(_arg1, _arg2, _arg3:int = 2, _arg4:Boolean = false):void {
        this._1qM([_arg2], _arg3, _arg1, _arg4);
    }

    public function _1Vt(_arg1, ..._args):void {
        this._1qM(_args, _1YH, _arg1);
    }

    public function _0i(_arg1, ..._args):void {
        this._1qM(_args, INFO, _arg1);
    }

    public function _24(_arg1, ..._args):void {
        this._1qM(_args, DEBUG, _arg1);
    }

    public function _1t6(_arg1, ..._args):void {
        this._1qM(_args, WARN, _arg1);
    }

    public function _h0(_arg1, ..._args):void {
        this._1qM(_args, ERROR, _arg1);
    }

    public function _0rD(_arg1, ..._args):void {
        this._1qM(_args, FATAL, _arg1);
    }

    public function _1JM(_arg1, _arg2:Array, _arg3:int = 2, _arg4:Boolean = false):void {
        this._1qM(_arg2, _arg3, _arg1, _arg4);
    }

    public function _ra(..._args):void {
        this._1qM(_args, 2, _13v, false, this._tq(_args));
    }

    public function _0wh(_arg1, _arg2:int, ..._args):void {
        this._1qM(_args, _arg2, _arg1, false, this._tq(_args));
    }

    public function clear(_arg1:String = null):void {
        this._VQ.clear(_arg1);
        if (!this._i7) {
            this._0Qu.mainPanel._0rg();
        }
        ;
        this._0Qu.updateMenu();
    }

    public function _1NH(_arg1:String = "\r\n"):String {
        return (this._VQ.getLogsAsString(_arg1));
    }

    public function updateSO(_arg1:String = null):void {
        if (this._while) {
            if (_arg1) {
                this._while.setDirty(_arg1);
            } else {
                this._while.clear();
            }
            ;
        }
        ;
    }

    private function _05R():void {
        if (this.displayRoller) {
            this.report(("Display Roller Capture:<br/>" + _G9(this._0Qu.getPanel(_G9.NAME))._16w(true)), -1);
        }
        ;
    }

    private function _tq(_arg1:Array):Boolean {
        var args:Array = _arg1;
        try {
            new XML((("<p>" + args.join("")) + "</p>"));
        } catch (err:Error) {
            return (false);
        }
        ;
        return (true);
    }

    private function _oZ(_arg1:Event = null):void {
        if (this._1sH.base == null) {
            this._1sH.base = parent;
        }
        ;
        if (loaderInfo) {
            this._05U(loaderInfo);
        }
        ;
        removeEventListener(Event.ADDED_TO_STAGE, this._oZ);
        addEventListener(Event.REMOVED_FROM_STAGE, this._pk);
        stage.addEventListener(Event.MOUSE_LEAVE, this._0uB, false, 0, true);
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._16e._0Kb, false, 0, true);
        stage.addEventListener(KeyboardEvent.KEY_UP, this._16e._1Ml, false, 0, true);
    }

    private function _pk(_arg1:Event = null):void {
        this._1sH.base = null;
        removeEventListener(Event.REMOVED_FROM_STAGE, this._pk);
        addEventListener(Event.ADDED_TO_STAGE, this._oZ);
        stage.removeEventListener(Event.MOUSE_LEAVE, this._0uB);
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._16e._0Kb);
        stage.removeEventListener(KeyboardEvent.KEY_UP, this._16e._1Ml);
    }

    private function _0uB(_arg1:Event):void {
        this._0Qu.tooltip(null);
    }

    private function _mF(_arg1:Event):void {
        var _local3:String;
        var _local2:* = ((_arg1.hasOwnProperty("error")) ? _arg1["error"] : _arg1);
        if ((_local2 is Error)) {
            _local3 = this._yF.makeString(_local2);
        } else {
            if ((_local2 is ErrorEvent)) {
                _local3 = ErrorEvent(_local2).text;
            }
            ;
        }
        ;
        if (!_local3) {
            _local3 = String(_local2);
        }
        ;
        this.report(_local3, FATAL, false);
    }

    private function _02R(_arg1:Event):void {
        var _local4:Array;
        var _local2:int = getTimer();
        var _local3:Boolean = this._VQ.update(_local2);
        this._yF.update(_local2);
        this._0i8.update();
        if (this.remoter.remoting != _0fj._0Cs) {
            _local4 = this._1bq.update(((stage) ? stage.frameRate : 0));
        }
        ;
        this._1UU.update();
        if (((visible) && (parent))) {
            if (((((this.config._MH) && (!((parent.getChildAt((parent.numChildren - 1)) == this))))) && ((this._1ap > 0)))) {
                this._1ap--;
                parent.addChild(this);
                this.report((("Moved console on top (alwaysOnTop enabled), " + this._1ap) + " attempts left."), -1);
            }
            ;
            this._0Qu.update(this._i7, _local3);
            if (_local4) {
                this._0Qu.updateGraphs(_local4);
            }
            ;
        }
        ;
    }


}
}//package _08f

