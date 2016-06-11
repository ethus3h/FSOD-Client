// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1l6._1Z6

package _1l6 {
import _0tf.*;

import _1Sm._0N3;

import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.SecurityErrorEvent;
import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import flash.net.URLVariables;
import flash.utils.ByteArray;
import flash.utils.getTimer;

public class _1Z6 implements _0lD {

    private const _c7:_0N3 = new _0N3(Boolean);

    public function _1Z6() {
        this._1kw = false;
        this._0sp = 0;
        this.dataFormat = URLLoaderDataFormat.TEXT;
    }
    private var _0sp:int;
    private var dataFormat:String;
    private var url:String;
    private var params:Object;
    private var _0Zu:URLRequest;
    private var _0D2:URLLoader;
    private var _uU:int;
    private var _1kw:Boolean;

    public function get complete():_0N3 {
        return (this._c7);
    }

    public function _Lv():Boolean {
        return (this._1kw);
    }

    public function _97(_arg1:String):void {
        this.dataFormat = _arg1;
    }

    public function _1Vb(_arg1:int):void {
        this._0sp = _arg1;
    }

    public function sendRequest(_arg1:String, _arg2:Object):void {
        this.url = _arg1;
        this.params = _arg2;
        this._uU = this._0sp;
        this._1kw = true;
        this._FD();
    }

    private function _FD():void {
        this._1o0();
        this._0Zu = this._1e2();
        this._0D2 = this._zk();
        this._0D2.load(this._0Zu);
    }

    private function _1e2():URLRequest {
        var _local1:URLRequest = new URLRequest(this.url);
        _local1.method = URLRequestMethod.POST;
        _local1.data = this._9n();
        return (_local1);
    }

    private function _9n():URLVariables {
        var _local2:String;
        var _local1:URLVariables = new URLVariables();
        _local1.ignore = getTimer();
        for (_local2 in this.params) {
            _local1[_local2] = this.params[_local2];
        }
        ;
        return (_local1);
    }

    private function _zk():URLLoader {
        var _local1:URLLoader = new URLLoader();
        _local1.dataFormat = this.dataFormat;
        _local1.addEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
        _local1.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.onSecurityError);
        _local1.addEventListener(Event.COMPLETE, this.onComplete);
        return (_local1);
    }

    private function _12R(_arg1:String):void {
        if (this._uU-- > 0) {
            this._FD();
        } else {
            this._0RG(false, _arg1);
        }
        ;
    }

    private function _01I(_arg1:String):void {
        if (_arg1.substring(0, 7) == "<Error>") {
            this._12R(_arg1);
        } else {
            if (_arg1.substring(0, 12) == "<FatalError>") {
                this._0RG(false, _arg1);
            } else {
                this._0RG(true, _arg1);
            }
            ;
        }
        ;
    }

    private function _0RG(_arg1:Boolean, _arg2):void {
        if (((!(_arg1)) && ((_arg2 is String)))) {
            _arg2 = this._0qI(_arg2);
        }
        ;
        this._1o0();
        this._c7.dispatch(_arg1, _arg2);
    }

    private function _0qI(_arg1:String):String {
        var _local2:Array = _arg1.match("<.*>(.*)</.*>");
        return (((((_local2) && ((_local2.length > 1)))) ? _local2[1] : _arg1));
    }

    private function _1o0():void {
        if (this._0D2) {
            this._0D2.removeEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
            this._0D2.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, this.onSecurityError);
            this._0D2.removeEventListener(Event.COMPLETE, this.onComplete);
            this._1IR();
            this._0D2 = null;
        }
        ;
    }

    private function _1IR():void {
        try {
            this._0D2.close();
        } catch (e:Error) {
        }
        ;
    }

    private function onIOError(_arg1:IOErrorEvent):void {
        this._1kw = false;
        var _local2:String = this._0D2.data;
        if (_local2.length == 0) {
            _local2 = "Unable to contact server";
        }
        ;
        this._12R(_local2);
    }

    private function onSecurityError(_arg1:SecurityErrorEvent):void {
        this._1kw = false;
        this._0RG(false, "Security Error");
    }

    private function onComplete(_arg1:Event):void {
        this._1kw = false;
        if (this.dataFormat == URLLoaderDataFormat.TEXT) {
            this._01I(this._0D2.data);
        } else {
            this._0RG(true, ByteArray(this._0D2.data));
        }
        ;
    }


}
}//package _1l6

