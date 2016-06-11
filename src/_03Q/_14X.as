// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03Q._14X

package _03Q {
import flash.display.LoaderInfo;
import flash.events.Event;
import flash.events.EventDispatcher;

public class _14X extends EventDispatcher implements _00k {

    private var _oM:LoaderInfo;

    public function set loaderInfo(_arg1:LoaderInfo):void {
        this._oM = _arg1;
    }

    override public function toString():String {
        return (this._oM.toString());
    }

    override public function addEventListener(_arg1:String, _arg2:Function, _arg3:Boolean = false, _arg4:int = 0, _arg5:Boolean = false):void {
        this._oM.addEventListener(_arg1, _arg2, _arg3, _arg4, _arg5);
    }

    override public function removeEventListener(_arg1:String, _arg2:Function, _arg3:Boolean = false):void {
        this._oM.removeEventListener(_arg1, _arg2, _arg3);
    }

    override public function hasEventListener(_arg1:String):Boolean {
        return (this._oM.hasEventListener(_arg1));
    }

    override public function willTrigger(_arg1:String):Boolean {
        return (this._oM.willTrigger(_arg1));
    }

    override public function dispatchEvent(_arg1:Event):Boolean {
        return (this._oM.dispatchEvent(_arg1));
    }


}
}//package _03Q

