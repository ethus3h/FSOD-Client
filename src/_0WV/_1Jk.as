// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0WV._1Jk

package _0WV {
import _4p._1ae;

import __1Ye._1bh;

import flash.display.DisplayObjectContainer;

public class _1Jk {

    [Inject]
    public var _bo:DisplayObjectContainer;
    [Inject]
    public var setup:_1ae;
    [Inject]
    public var analytics:_1bh;


    public function execute():void {
        this.analytics.init(this._bo.stage, this.setup._RF());
    }


}
}//package _0WV

