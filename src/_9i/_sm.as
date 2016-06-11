// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_9i._sm

package _9i {
import _0hL._1As;

import _1PM.*;

import _hk.instanceOf;

import flash.display.DisplayObjectContainer;
import flash.events.Event;

public class _sm implements _1rc {

    private const _01p:String = _1As.create(_sm);

    private var _0rd:_Ld;
    private var _1RR:DisplayObjectContainer;
    private var _0gD:_1YQ;


    public function extend(_arg1:_Ld):void {
        this._0rd = _arg1;
        this._0gD = _arg1._F4(this);
        this._0rd._0Jl(instanceOf(DisplayObjectContainer), this._1op);
    }

    public function toString():String {
        return (this._01p);
    }

    private function _1op(_arg1:DisplayObjectContainer):void {
        if (this._1RR) {
            this._0gD._1Sh("A contextView has already been set, ignoring {0}", [_arg1]);
            return;
        }
        ;
        this._1RR = _arg1;
        if (this._1RR.stage) {
            this._DR();
        } else {
            this._0gD.debug("Context view is not yet on stage. Waiting...");
            this._1RR.addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        }
        ;
    }

    private function _DR():void {
        this._0gD.debug("Context view is now on stage. Initializing context...");
        this._0rd._11b.initialize();
        this._1RR.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    private function onAddedToStage(_arg1:Event):void {
        this._1RR.removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        this._DR();
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this._0gD.debug("Context view has left the stage. Destroying context...");
        this._1RR.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._0rd._11b.destroy();
    }


}
}//package _9i

