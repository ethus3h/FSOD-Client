// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_08f.Cc

package _08f {

import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.LoaderInfo;
import flash.events.Event;
import flash.geom.Rectangle;

public class Cc {

    private static var _RQ:Console;
    private static var _config:_0Rt;


    public static function get config():_0Rt {
        if (!_config) {
            _config = new _0Rt();
        }
        ;
        return (_config);
    }

    public static function set _1u9(_arg1:uint):void {
        if (_RQ) {
            _RQ._1u9 = _arg1;
        }
        ;
    }

    public static function get width():Number {
        if (_RQ) {
            return (_RQ.width);
        }
        ;
        return (0);
    }

    public static function set width(_arg1:Number):void {
        if (_RQ) {
            _RQ.width = _arg1;
        }
        ;
    }

    public static function get height():Number {
        if (_RQ) {
            return (_RQ.height);
        }
        ;
        return (0);
    }

    public static function set height(_arg1:Number):void {
        if (_RQ) {
            _RQ.height = _arg1;
        }
        ;
    }

    public static function get x():Number {
        if (_RQ) {
            return (_RQ.x);
        }
        ;
        return (0);
    }

    public static function set x(_arg1:Number):void {
        if (_RQ) {
            _RQ.x = _arg1;
        }
        ;
    }

    public static function get y():Number {
        if (_RQ) {
            return (_RQ.y);
        }
        ;
        return (0);
    }

    public static function set y(_arg1:Number):void {
        if (_RQ) {
            _RQ.y = _arg1;
        }
        ;
    }

    public static function get visible():Boolean {
        if (_RQ) {
            return (_RQ.visible);
        }
        ;
        return (false);
    }

    public static function set visible(_arg1:Boolean):void {
        if (_RQ) {
            _RQ.visible = _arg1;
        }
        ;
    }

    public static function get fpsMonitor():Boolean {
        if (_RQ) {
            return (_RQ.fpsMonitor);
        }
        ;
        return (false);
    }

    public static function set fpsMonitor(_arg1:Boolean):void {
        if (_RQ) {
            _RQ.fpsMonitor = _arg1;
        }
        ;
    }

    public static function get memoryMonitor():Boolean {
        if (_RQ) {
            return (_RQ.memoryMonitor);
        }
        ;
        return (false);
    }

    public static function set memoryMonitor(_arg1:Boolean):void {
        if (_RQ) {
            _RQ.memoryMonitor = _arg1;
        }
        ;
    }

    public static function get commandLine():Boolean {
        if (_RQ) {
            return (_RQ.commandLine);
        }
        ;
        return (false);
    }

    public static function set commandLine(_arg1:Boolean):void {
        if (_RQ) {
            _RQ.commandLine = _arg1;
        }
        ;
    }

    public static function get displayRoller():Boolean {
        if (_RQ) {
            return (_RQ.displayRoller);
        }
        ;
        return (false);
    }

    public static function set displayRoller(_arg1:Boolean):void {
        if (_RQ) {
            _RQ.displayRoller = _arg1;
        }
        ;
    }

    public static function get remoting():Boolean {
        if (_RQ) {
            return (_RQ.remoting);
        }
        ;
        return (false);
    }

    public static function set remoting(_arg1:Boolean):void {
        if (_RQ) {
            _RQ.remoting = _arg1;
        }
        ;
    }

    public static function get _a9():Console {
        return (_RQ);
    }

    public static function start(_arg1:DisplayObjectContainer, _arg2:String = ""):void {
        if (_RQ) {
            if (((_arg1) && (!(_RQ.parent)))) {
                _arg1.addChild(_RQ);
            }
            ;
        } else {
            _RQ = new Console(_arg2, config);
            if (_arg1) {
                _arg1.addChild(_RQ);
            }
            ;
        }
        ;
    }

    public static function _kM(_arg1:DisplayObject, _arg2:String = ""):void {
        if (_RQ) {
            if (((((_arg1) && (_arg1.stage))) && (!((_RQ.parent == _arg1.stage))))) {
                _arg1.stage.addChild(_RQ);
            }
            ;
        } else {
            if (((_arg1) && (_arg1.stage))) {
                start(_arg1.stage, _arg2);
            } else {
                _RQ = new Console(_arg2, config);
                if (_arg1) {
                    _arg1.addEventListener(Event.ADDED_TO_STAGE, _48);
                }
                ;
            }
            ;
        }
        ;
    }

    public static function add(_arg1, _arg2:int = 2, _arg3:Boolean = false):void {
        if (_RQ) {
            _RQ.add(_arg1, _arg2, _arg3);
        }
        ;
    }

    public static function ch(_arg1, _arg2, _arg3:int = 2, _arg4:Boolean = false):void {
        if (_RQ) {
            _RQ.ch(_arg1, _arg2, _arg3, _arg4);
        }
        ;
    }

    public static function log(..._args):void {
        if (_RQ) {
            _RQ.log.apply(null, _args);
        }
        ;
    }

    public static function info(..._args):void {
        if (_RQ) {
            _RQ.info.apply(null, _args);
        }
        ;
    }

    public static function debug(..._args):void {
        if (_RQ) {
            _RQ.debug.apply(null, _args);
        }
        ;
    }

    public static function _1Sh(..._args):void {
        if (_RQ) {
            _RQ._1Sh.apply(null, _args);
        }
        ;
    }

    public static function error(..._args):void {
        if (_RQ) {
            _RQ.error.apply(null, _args);
        }
        ;
    }

    public static function _Gq(..._args):void {
        if (_RQ) {
            _RQ._Gq.apply(null, _args);
        }
        ;
    }

    public static function _1Vt(_arg1, ..._args):void {
        if (_RQ) {
            _RQ._1JM(_arg1, _args, Console._1YH);
        }
        ;
    }

    public static function _0i(_arg1, ..._args):void {
        if (_RQ) {
            _RQ._1JM(_arg1, _args, Console.INFO);
        }
        ;
    }

    public static function _24(_arg1, ..._args):void {
        if (_RQ) {
            _RQ._1JM(_arg1, _args, Console.DEBUG);
        }
        ;
    }

    public static function _1t6(_arg1, ..._args):void {
        if (_RQ) {
            _RQ._1JM(_arg1, _args, Console.WARN);
        }
        ;
    }

    public static function _h0(_arg1, ..._args):void {
        if (_RQ) {
            _RQ._1JM(_arg1, _args, Console.ERROR);
        }
        ;
    }

    public static function _0rD(_arg1, ..._args):void {
        if (_RQ) {
            _RQ._1JM(_arg1, _args, Console.FATAL);
        }
        ;
    }

    public static function _1gA(_arg1, _arg2:int = -1, _arg3:int = 5):void {
        if (_RQ) {
            _RQ._1gA(_arg1, _arg2, _arg3);
        }
        ;
    }

    public static function _09g(_arg1, _arg2, _arg3:int = -1, _arg4:int = 5):void {
        if (_RQ) {
            _RQ._09g(_arg1, _arg2, _arg3, _arg4);
        }
        ;
    }

    public static function inspect(_arg1:Object, _arg2:Boolean = true):void {
        if (_RQ) {
            _RQ.inspect(_arg1, _arg2);
        }
        ;
    }

    public static function _1p3(_arg1, _arg2:Object, _arg3:Boolean = true):void {
        if (_RQ) {
            _RQ._1p3(_arg1, _arg2, _arg3);
        }
        ;
    }

    public static function explode(_arg1:Object, _arg2:int = 3):void {
        if (_RQ) {
            _RQ.explode(_arg1, _arg2);
        }
        ;
    }

    public static function explodech(_arg1, _arg2:Object, _arg3:int = 3):void {
        if (_RQ) {
            _RQ.explodech(_arg1, _arg2, _arg3);
        }
        ;
    }

    public static function _ra(..._args):void {
        if (_RQ) {
            _RQ._ra.apply(null, _args);
        }
        ;
    }

    public static function _0wh(_arg1, _arg2:int, ..._args):void {
        if (_RQ) {
            _RQ._0wh.apply(null, new Array(_arg1, _arg2).concat(_args));
        }
        ;
    }

    public static function map(_arg1:DisplayObjectContainer, _arg2:uint = 0):void {
        if (_RQ) {
            _RQ.map(_arg1, _arg2);
        }
        ;
    }

    public static function mapch(_arg1, _arg2:DisplayObjectContainer, _arg3:uint = 0):void {
        if (_RQ) {
            _RQ.mapch(_arg1, _arg2, _arg3);
        }
        ;
    }

    public static function clear(_arg1:String = null):void {
        if (_RQ) {
            _RQ.clear(_arg1);
        }
        ;
    }

    public static function _1xr(_arg1:_0Lr, _arg2:Function = null, _arg3:Array = null):void {
        if (_RQ) {
            _RQ._1xr(_arg1, _arg2, _arg3);
        }
        ;
    }

    public static function _0su(_arg1:String, _arg2:Function, _arg3:Array = null, _arg4:String = null):void {
        if (_RQ) {
            _RQ._0su(_arg1, _arg2, _arg3, _arg4);
        }
        ;
    }

    public static function _05U(_arg1:LoaderInfo):void {
        if (_RQ) {
            _RQ._05U(_arg1);
        }
        ;
    }

    public static function _0Hv(_arg1:String, _arg2:Object, _arg3:Boolean = false):void {
        if (_RQ) {
            _RQ._0Hv(_arg1, _arg2, _arg3);
        }
        ;
    }

    public static function _0xN(_arg1:String, _arg2:Function, _arg3:String = "", _arg4:Boolean = true, _arg5:String = ";"):void {
        if (_RQ) {
            _RQ._0xN(_arg1, _arg2, _arg3, _arg4, _arg5);
        }
        ;
    }

    public static function _1f(_arg1:Object, _arg2:String = null):String {
        if (_RQ) {
            return (_RQ._1f(_arg1, _arg2));
        }
        ;
        return (null);
    }

    public static function _18p(_arg1:String):void {
        if (_RQ) {
            _RQ._18p(_arg1);
        }
        ;
    }

    public static function _1VM(_arg1:String, _arg2:Object, _arg3:String, _arg4:Number = -1, _arg5:String = null, _arg6:Rectangle = null, _arg7:Boolean = false):void {
        if (_RQ) {
            _RQ._1VM(_arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg7);
        }
        ;
    }

    public static function _1gv(_arg1:String, _arg2:Number = NaN, _arg3:Number = NaN):void {
        if (_RQ) {
            _RQ._1gv(_arg1, _arg2, _arg3);
        }
        ;
    }

    public static function removeGraph(_arg1:String, _arg2:Object = null, _arg3:String = null):void {
        if (_RQ) {
            _RQ.removeGraph(_arg1, _arg2, _arg3);
        }
        ;
    }

    public static function setViewingChannels(..._args):void {
        if (_RQ) {
            _RQ.setViewingChannels.apply(null, _args);
        }
        ;
    }

    public static function _1SK(..._args):void {
        if (_RQ) {
            _RQ._1SK.apply(null, _args);
        }
        ;
    }

    public static function setRollerCaptureKey(_arg1:String, _arg2:Boolean = false, _arg3:Boolean = false, _arg4:Boolean = false):void {
        if (_RQ) {
            _RQ.setRollerCaptureKey(_arg1, _arg4, _arg2, _arg3);
        }
        ;
    }

    public static function remotingSocket(_arg1:String, _arg2:int):void {
        if (_RQ) {
            _RQ.remotingSocket(_arg1, _arg2);
        }
        ;
    }

    public static function remove():void {
        if (_RQ) {
            if (_RQ.parent) {
                _RQ.parent.removeChild(_RQ);
            }
            ;
            _RQ = null;
        }
        ;
    }

    public static function _1NH(_arg1:String = "\r\n"):String {
        if (_RQ) {
            return (_RQ._1NH(_arg1));
        }
        ;
        return ("");
    }

    private static function _48(_arg1:Event):void {
        var _local2:DisplayObjectContainer = (_arg1.currentTarget as DisplayObjectContainer);
        _local2.removeEventListener(Event.ADDED_TO_STAGE, _48);
        if (((_RQ) && ((_RQ.parent == null)))) {
            _local2.stage.addChild(_RQ);
        }
        ;
    }


}
}//package _08f

