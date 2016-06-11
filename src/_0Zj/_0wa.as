// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Zj._0wa

package _0Zj {
import _03o._xq;

import _0cA._0bz;

import _0fB.*;

import flash.events.IEventDispatcher;
import flash.utils.describeType;

public class _0wa implements _0F {

    private const _1Yr:Vector.<_17U> = new Vector.<_17U>();
    private const _1FV:_xq = new _xq();

    public function _0wa(_arg1:_0bz, _arg2:IEventDispatcher, _arg3:String, _arg4:Class = null) {
        this._1p2 = _arg2;
        this._1NF = _arg3;
        this._QE = new _Gi(this, this._1FV, _arg1, _arg4);
    }
    private var _1p2:IEventDispatcher;
    private var _1NF:String;
    private var _QE:_Gi;

    public function _de(_arg1:_17U):void {
        this._0aT(_arg1);
        if (this._1FV._qh) {
            this._1FV._qh.next = _arg1;
        } else {
            this._1FV._11w = _arg1;
            this._3F();
        }
        ;
    }

    public function _1G4(_arg1:_17U):void {
        this._1FV.remove(_arg1);
        if (!this._1FV._11w) {
            this._0m9();
        }
        ;
    }

    private function _0aT(_arg1:_17U):void {
        var mapping:_17U = _arg1;
        if (describeType(mapping.commandClass).factory.method.(@name == "execute").length() == 0) {
            throw (new Error("Command Class must expose an execute method"));
        }
        ;
    }

    private function _3F():void {
        this._1p2.addEventListener(this._1NF, this._QE.execute);
    }

    private function _0m9():void {
        this._1p2.removeEventListener(this._1NF, this._QE.execute);
    }


}
}//package _0Zj

