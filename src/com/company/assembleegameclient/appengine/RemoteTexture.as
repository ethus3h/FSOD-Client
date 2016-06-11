// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine.RemoteTexture

package com.company.assembleegameclient.appengine {
import _0CT._8w;

import _0cA._0bz;

import _0tf._0lD;

import _1Js._0AL;

import _1PM._1YQ;

import _1l6._1Z6;

import flash.display.BitmapData;
import flash.net.URLLoaderDataFormat;
import flash.utils.ByteArray;

public class RemoteTexture {

    private static const _KD:String = "http://{DOMAIN}/picture/get";
    private static const _1nf:String = "Remote Texture Error: {ERROR} (id:{ID}, instance:{INSTANCE})";
    private static const _ls:int = int(new Date().getTime());

    public function RemoteTexture(_arg1:String, _arg2:String, _arg3:Function):void {
        this.id_ = _arg1;
        this._0xx = _arg2;
        this.callback_ = _arg3;
        var _local4:_0bz = _8w._1Sz();
        this._1TT = _local4.getInstance(_1YQ);
    }
    public var id_:String;
    public var _0xx:String;
    public var callback_:Function;
    private var _1TT:_1YQ;

    public function run():void {
        var _local1:String = (((this._0xx) == "testing") ? "rotmgtesting.appspot.com" : "127.0.0.1");
        var _local2:String = _KD.replace("{DOMAIN}", _local1);
        var _local3:Object = {};
        _local3.id = this.id_;
        _local3.time = _ls;
        var _local4:_0lD = new _1Z6();
        _local4._97(URLLoaderDataFormat.BINARY);
        _local4.complete.addOnce(this.onComplete);
        _local4.sendRequest(_local2, _local3);
    }

    public function _0n4(_arg1:ByteArray):void {
        var _local2:BitmapData = _0AL._0as(_arg1);
        this.callback_(_local2);
    }

    public function reportError(_arg1:String):void {
        _arg1 = _1nf.replace("{ERROR}", _arg1).replace("{ID}", this.id_).replace("{INSTANCE}", this._0xx);
        this._1TT._1Sh("RemoteTexture.reportError: {0}", [_arg1]);
        var _local2:BitmapData = new _0Iy(1, 1);
        this.callback_(_local2);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._0n4(_arg2);
        } else {
            this.reportError(_arg2);
        }
        ;
    }


}
}//package com.company.assembleegameclient.appengine

