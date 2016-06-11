// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0EN._0u4

package _0EN {
import _1nK._0MP;
import _1nK._11e;

import flash.display.DisplayObject;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.net.URLRequest;
import flash.utils.Dictionary;

public class _0u4 {

    public static var _1sc:Class = _nf;

    public function _0u4() {
        this._loader = new _11e();
        this._1A4 = new _11e();
        this._1Ma = new Vector.<Vector.<int>>();
        this._hD = new Vector.<int>();
        super();
    }
    public var _056:String;
    public var _0bG:String;
    public var _1cN:String;
    public var _1Nb:String;
    public var _1WF:Date;
    public var _0ZD:Date;
    public var _1Ma:Vector.<Vector.<int>>;
    public var _hD:Vector.<int>;
    private var _0a5:String;
    private var _XZ:String;
    private var _PM:String;
    private var _1GZ:String;
    private var _jD:DisplayObject;
    private var _1FJ:DisplayObject;
    private var _1A4:_0MP;

    public var _id:String;

    public function get id():String {
        return (this._id);
    }

    public function set id(_arg1:String):void {
        this._id = _arg1;
    }

    public var _title:String;

    public function get title():String {
        return (this._title);
    }

    public function set title(_arg1:String):void {
        this._title = _arg1;
    }

    private var _loader:_0MP;

    public function get loader():_0MP {
        return (this._loader);
    }

    public function set loader(_arg1:_0MP):void {
        this._loader = _arg1;
    }

    public function get description():String {
        return (this._0a5);
    }

    public function set description(_arg1:String):void {
        this._0a5 = _arg1;
    }

    public function get weight():String {
        return (this._056);
    }

    public function set weight(_arg1:String):void {
        this._056 = _arg1;
    }

    public function get _1io():String {
        return (this._0bG);
    }

    public function set _1io(_arg1:String):void {
        this._0bG = _arg1;
    }

    public function get _0rt():String {
        return (this._XZ);
    }

    public function set _0rt(_arg1:String):void {
        this._XZ = _arg1;
    }

    public function get _xe():String {
        return (this._PM);
    }

    public function set _xe(_arg1:String):void {
        this._PM = _arg1;
    }

    public function get _0ot():String {
        return (this._1GZ);
    }

    public function set _0ot(_arg1:String):void {
        this._1GZ = _arg1;
    }

    public function get _04N():String {
        return (this._1cN);
    }

    public function set _04N(_arg1:String):void {
        this._1cN = _arg1;
        this._097(this._1cN);
    }

    public function get _1O6():DisplayObject {
        return (this._jD);
    }

    public function get _0b():String {
        return (this._1Nb);
    }

    public function set _0b(_arg1:String):void {
        this._1Nb = _arg1;
        this._166(this._1Nb);
    }

    public function get startTime():Date {
        return (this._1WF);
    }

    public function set startTime(_arg1:Date):void {
        this._1WF = _arg1;
    }

    public function get endTime():Date {
        return (this._0ZD);
    }

    public function set endTime(_arg1:Date):void {
        this._0ZD = _arg1;
    }

    public function get _71():DisplayObject {
        return (this._1FJ);
    }

    public function set _71(_arg1:DisplayObject):void {
        this._1FJ = _arg1;
    }

    public function get _09X():_0MP {
        return (this._1A4);
    }

    public function set _09X(_arg1:_0MP):void {
        this._1A4 = _arg1;
    }

    public function _1yc():void {
        var _local3:String;
        var _local4:Vector.<int>;
        var _local5:Array;
        var _local6:String;
        var _local1:Array = this._0bG.split(";");
        var _local2:Dictionary = new Dictionary();
        for each (_local3 in _local1) {
            _local4 = new Vector.<int>();
            _local5 = _local3.split(",");
            for each (_local6 in _local5) {
                if (_local2[int(_local6)] == null) {
                    _local2[int(_local6)] = true;
                    this._hD.push(int(_local6));
                }
                ;
                _local4.push(int(_local6));
            }
            ;
            this._1Ma.push(_local4);
        }
        ;
    }

    private function _097(_arg1:String):void {
        ((this._loader) && (this._loader.unload()));
        this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onComplete);
        this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this._31);
        this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR, this._31);
        this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR, this._31);
        this._loader.load(new URLRequest(_arg1));
    }

    private function _166(_arg1:String):void {
        this._0St(_arg1, this._1A4);
    }

    private function _0St(_arg1:String, _arg2:_0MP):void {
        ((_arg2) && (_arg2.unload()));
        _arg2.contentLoaderInfo.addEventListener(Event.COMPLETE, this._Ne);
        _arg2.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this._r6);
        _arg2.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR, this._r6);
        _arg2.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR, this._r6);
        _arg2.load(new URLRequest(_arg1));
    }

    private function _31(_arg1:IOErrorEvent):void {
        this._jD = new _1sc();
    }

    private function onComplete(_arg1:Event):void {
        this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, this.onComplete);
        this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this._31);
        this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR, this._31);
        this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR, this._31);
        this._jD = DisplayObject(this._loader);
    }

    private function _r6(_arg1:IOErrorEvent):void {
    }

    private function _Ne(_arg1:Event):void {
        this._1A4.contentLoaderInfo.removeEventListener(Event.COMPLETE, this._Ne);
        this._1A4.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, this._r6);
        this._1A4.contentLoaderInfo.removeEventListener(IOErrorEvent.DISK_ERROR, this._r6);
        this._1A4.contentLoaderInfo.removeEventListener(IOErrorEvent.NETWORK_ERROR, this._r6);
        this._1FJ = DisplayObject(this._1A4);
    }


}
}//package _0EN

