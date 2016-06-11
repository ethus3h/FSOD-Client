// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_r7._17v

package _r7 {
import _1tl._1pm;

import _UB.*;

import flash.events.Event;
import flash.events.IEventDispatcher;

public class _17v implements _0E {

    [Inject]
    public var _j5:_1pm;
    [Inject]
    public var _0um:IEventDispatcher;
    private var _i:Object;


    public function set viewComponent(_arg1:Object):void {
        this._i = _arg1;
    }

    public function initialize():void {
    }

    public function destroy():void {
        this._j5._0Xv();
    }

    protected function _1p8(_arg1:String, _arg2:Function, _arg3:Class = null):void {
        this._j5._EA(IEventDispatcher(this._i), _arg1, _arg2, _arg3);
    }

    protected function _0QS(_arg1:String, _arg2:Function, _arg3:Class = null):void {
        this._j5._EA(this._0um, _arg1, _arg2, _arg3);
    }

    protected function _5h(_arg1:String, _arg2:Function, _arg3:Class = null):void {
        this._j5._1cR(IEventDispatcher(this._i), _arg1, _arg2, _arg3);
    }

    protected function _0Vo(_arg1:String, _arg2:Function, _arg3:Class = null):void {
        this._j5._1cR(this._0um, _arg1, _arg2, _arg3);
    }

    protected function dispatch(_arg1:Event):void {
        if (this._0um.hasEventListener(_arg1.type)) {
            this._0um.dispatchEvent(_arg1);
        }
        ;
    }


}
}//package _r7

