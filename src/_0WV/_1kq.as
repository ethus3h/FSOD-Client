// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0WV._1kq

package _0WV {
import _0tk.Command;

import _10a._FU;

import com.company.assembleegameclient.appengine._0Iq;

public class _1kq extends Command {

    [Inject]
    public var model:_FU;
    [Inject]
    public var data:XML;


    override public function execute():void {
        this.model._0KX(new _0Iq(this.data));
        this.model._Eq = false;
    }


}
}//package _0WV

