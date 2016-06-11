// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_02h._Zy

package _02h {
import _0tb._wr;

import _1PM._1YQ;

import _r7._17v;

import flash.display.DisplayObjectContainer;
import flash.display.LoaderInfo;
import flash.events.ErrorEvent;
import flash.events.IEventDispatcher;

public class _Zy extends _17v {

    private const _08:String = "uncaughtErrorEvents";
    private const _1GD:String = "uncaughtError";

    [Inject]
    public var _bo:DisplayObjectContainer;
    [Inject]
    public var error:_wr;
    [Inject]
    public var _1TT:_1YQ;
    private var loaderInfo:LoaderInfo;


    override public function initialize():void {
        this.loaderInfo = this._bo.loaderInfo;
        if (this._1oU()) {
            this._1iy();
        }
        ;
    }

    override public function destroy():void {
        if (this._1oU()) {
            this._08d();
        }
        ;
    }

    private function _1oU():Boolean {
        return (this.loaderInfo.hasOwnProperty(this._08));
    }

    private function _1iy():void {
        var _local1:IEventDispatcher = IEventDispatcher(this.loaderInfo[this._08]);
        _local1.addEventListener(this._1GD, this._1oF);
    }

    private function _08d():void {
        var _local1:IEventDispatcher = IEventDispatcher(this.loaderInfo[this._08]);
        _local1.removeEventListener(this._1GD, this._1oF);
    }

    private function _1oF(_arg1:ErrorEvent):void {
        this.error.dispatch(_arg1);
    }


}
}//package _02h

