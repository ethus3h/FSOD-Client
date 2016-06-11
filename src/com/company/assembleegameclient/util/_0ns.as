// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._0ns

package com.company.assembleegameclient.util {
import _u5._1kJ;

import flash.display.Stage3D;
import flash.events.*;

public class _0ns implements IEventDispatcher {

    private static var context3D:_1kJ;

    public function _0ns(_arg1:Stage3D) {
        this.stage3D = _arg1;
    }
    private var stage3D:Stage3D;

    public function requestContext3D():void {
        this.stage3D.requestContext3D();
    }

    public function _1gb():_1kJ {
        if (context3D == null) {
            context3D = new _1kJ(this.stage3D.context3D);
        }
        ;
        return (context3D);
    }

    public function addEventListener(_arg1:String, _arg2:Function, _arg3:Boolean = false, _arg4:int = 0, _arg5:Boolean = false):void {
        this.stage3D.addEventListener(_arg1, _arg2, _arg3, _arg4, _arg5);
    }

    public function removeEventListener(_arg1:String, _arg2:Function, _arg3:Boolean = false):void {
        this.stage3D.removeEventListener(_arg1, _arg2, _arg3);
    }

    public function hasEventListener(_arg1:String):Boolean {
        return (this.stage3D.hasEventListener(_arg1));
    }

    public function willTrigger(_arg1:String):Boolean {
        return (this.stage3D.willTrigger(_arg1));
    }

    public function dispatchEvent(_arg1:Event):Boolean {
        return (this.stage3D.dispatchEvent(_arg1));
    }


}
}//package com.company.assembleegameclient.util

