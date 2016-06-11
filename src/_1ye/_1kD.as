// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1ye._1kD

package _1ye {

import _1tl.*;

import flash.events.Event;
import flash.events.IEventDispatcher;

public class _1kD implements _1pm {

    private const _GN:Vector.<_0Zw> = new Vector.<_0Zw>();
    private const _1SH:Vector.<_0Zw> = new Vector.<_0Zw>();

    public function _1kD(_arg1:IEventDispatcher) {
        this._eventDispatcher = _arg1;
    }
    private var _eventDispatcher:IEventDispatcher;
    private var _079:Boolean = false;

    public function _EA(_arg1:IEventDispatcher, _arg2:String, _arg3:Function, _arg4:Class = null, _arg5:Boolean = false, _arg6:int = 0, _arg7:Boolean = true):void {
        var eventConfig:_0Zw;
        var callback:Function;
        var dispatcher:IEventDispatcher = _arg1;
        var eventString:String = _arg2;
        var listener:Function = _arg3;
        var eventClass = _arg4;
        var useCapture:Boolean = _arg5;
        var priority:int = _arg6;
        var useWeakReference:Boolean = _arg7;
        eventClass = _arg4 || Event;/*((Window.eventClass) || (Event));*/
        var currentListeners:Vector.<_0Zw> = ((this._079) ? this._1SH : this._GN);
        var i:int = currentListeners.length;
        while ((i = (i - 1)), i) {
            if(i >= currentListeners.length || i < 0) break;
            eventConfig = currentListeners[i];
            if ((((((((((eventConfig.dispatcher == dispatcher)) && ((eventConfig.eventString == eventString)))) && ((eventConfig.listener == listener)))) && ((eventConfig.useCapture == useCapture)))) && ((eventConfig.eventClass == eventClass)))) {
                return;
            }
        }
        if (eventClass != Event) {
            callback = function (_arg1:Event):void {
                routeEventToListener(_arg1, listener, eventClass);
            };
        } else {
            callback = listener;
        }
        ;
        eventConfig = new _0Zw(dispatcher, eventString, listener, eventClass, callback, useCapture);
        currentListeners.push(eventConfig);
        if (!this._079) {
            dispatcher.addEventListener(eventString, callback, useCapture, priority, useWeakReference);
        }
        ;
    }

    public function _1cR(_arg1:IEventDispatcher, _arg2:String, _arg3:Function, _arg4:Class = null, _arg5:Boolean = false):void {
        var _local6:_0Zw;
        _arg4 = ((_arg4) || (Event));
        var _local7:Vector.<_0Zw> = ((this._079) ? this._1SH : this._GN);
        var _local8:int = _local7.length;
        while (_local8--) {
            _local6 = _local7[_local8];
            if ((((((((((_local6.dispatcher == _arg1)) && ((_local6.eventString == _arg2)))) && ((_local6.listener == _arg3)))) && ((_local6.useCapture == _arg5)))) && ((_local6.eventClass == _arg4)))) {
                if (!this._079) {
                    _arg1.removeEventListener(_arg2, _local6.callback, _arg5);
                }
                ;
                _local7.splice(_local8, 1);
                return;
            }
            ;
        }
        ;
    }

    public function _0Xv():void {
        var _local2:_0Zw;
        var _local3:IEventDispatcher;
        var _local1:Vector.<_0Zw> = ((this._079) ? this._1SH : this._GN);
        while ((_local2 = _local1.pop())) {
            if (!this._079) {
                _local3 = _local2.dispatcher;
                _local3.removeEventListener(_local2.eventString, _local2.callback, _local2.useCapture);
            }
            ;
        }
        ;
    }

    public function suspend():void {
        var _local1:_0Zw;
        var _local2:IEventDispatcher;
        if (this._079) {
            return;
        }
        ;
        this._079 = true;
        while ((_local1 = this._GN.pop())) {
            _local2 = _local1.dispatcher;
            _local2.removeEventListener(_local1.eventString, _local1.callback, _local1.useCapture);
            this._1SH.push(_local1);
        }
        ;
    }

    public function resume():void {
        var _local1:_0Zw;
        var _local2:IEventDispatcher;
        if (!this._079) {
            return;
        }
        ;
        this._079 = false;
        while ((_local1 = this._1SH.pop())) {
            _local2 = _local1.dispatcher;
            _local2.addEventListener(_local1.eventString, _local1.callback, _local1.useCapture);
            this._GN.push(_local1);
        }
        ;
    }

    private function routeEventToListener(_arg1:Event, _arg2:Function, _arg3:Class):void {
        if ((_arg1 is _arg3)) {
            (_arg2(_arg1));
        }
        ;
    }


}
}//package _1ye

