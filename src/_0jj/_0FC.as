// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0jj._0FC

package _0jj {
import _03u._BW;

import _rB.BuyPackageTask;

public class _0FC {

    [Inject]
    public var _1eZ:BuyPackageTask;
    [Inject]
    public var _0Ye:_BW;


    public function execute():void {
        this._0Ye.add(this._1eZ);
        this._1eZ.start();
    }


}
}//package _0jj

