// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Hw._le

package _0Hw {
import _nj._115;

import flash.display.DisplayObjectContainer;

public class _le {

    [Inject]
    public var _bo:DisplayObjectContainer;
    [Inject]
    public var viewManager:_115;


    [PostConstruct]
    public function init():void {
        this.viewManager._0i5(this._bo);
    }


}
}//package _0Hw

