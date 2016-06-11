// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bb._1b6

package _bb {
import _08f.Console;
import _08f._0Rt;

import flash.events.EventDispatcher;

public class _1b6 extends EventDispatcher {

    public function _1b6(_arg1:Console) {
        this.console = _arg1;
        this.config = this.console.config;
    }
    protected var console:Console;
    protected var config:_0Rt;

    protected function get remoter():_0fj {
        return (this.console.remoter);
    }

    protected function report(_arg1 = "", _arg2:int = 0, _arg3:Boolean = true, _arg4:String = null):void {
        this.console.report(_arg1, _arg2, _arg3, _arg4);
    }


}
}//package _bb

