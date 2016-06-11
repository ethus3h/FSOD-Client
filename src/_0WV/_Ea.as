// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0WV._Ea

package _0WV {
import _Kt._1d8;

import _r7.Command;

public class _Ea extends Command {

    [Inject]
    public var data:XML;
    [Inject]
    public var _0Bo:_1d8;


    override public function execute():void {
        this._0Bo._0EG(this.data.FilterList.split(/\n/g));
    }


}
}//package _0WV

