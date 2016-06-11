// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._1hw

package com.company.assembleegameclient.util {
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.InteractiveObject;
import flash.events.*;

public class _1hw implements IEventDispatcher {

    private static var stage3D:_0ns = null;

    public function _1hw(_arg1:DisplayObject) {
        this._1hm = _arg1;
    }
    protected var _1hm:DisplayObject;

    public function _0WJ():DisplayObjectContainer {
        return (this._1hm.stage);
    }

    public function _216():Number {
        if (this._1hm.stage != null) {
            return (this._1hm.stage.stageWidth);
        }
        ;
        return (800);
    }

    public function _0Ct():Number {
        if (this._1hm.stage != null) {
            return (this._1hm.stage.stageHeight);
        }
        ;
        return (600);
    }

    public function _01g():InteractiveObject {
        return (this._1hm.stage.focus);
    }

    public function setFocus(_arg1:InteractiveObject):void {
        this._1hm.stage.focus = _arg1;
    }

    public function addEventListener(_arg1:String, _arg2:Function, _arg3:Boolean = false, _arg4:int = 0, _arg5:Boolean = false):void {
        this._1hm.stage.addEventListener(_arg1, _arg2, _arg3, _arg4, _arg5);
    }

    public function removeEventListener(_arg1:String, _arg2:Function, _arg3:Boolean = false):void {
        this._1hm.stage.removeEventListener(_arg1, _arg2, _arg3);
    }

    public function hasEventListener(_arg1:String):Boolean {
        return (this._1hm.stage.hasEventListener(_arg1));
    }

    public function willTrigger(_arg1:String):Boolean {
        return (this._1hm.stage.willTrigger(_arg1));
    }

    public function _1Kk():String {
        return (this._1hm.stage.quality);
    }

    public function _1Y1(_arg1:String):void {
        this._1hm.stage.quality = _arg1;
    }

    public function getStage3Ds(_arg1:int):_0ns {
        if (stage3D == null) {
            stage3D = new _0ns(this._1hm.stage.stage3Ds[_arg1]);
        }
        ;
        return (stage3D);
    }

    public function dispatchEvent(_arg1:Event):Boolean {
        return (this._1hm.stage.dispatchEvent(_arg1));
    }


}
}//package com.company.assembleegameclient.util

