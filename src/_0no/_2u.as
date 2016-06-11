// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no._2-u

package _0no {
import _1E._Pf;

import _r7._17v;

public class _2u extends _17v {

    [Inject]
    public var view:TextPanel;
    [Inject]
    public var data:_Pf;


    override public function initialize():void {
        this.view.init(this.data.message);
    }


}
}//package _0no

