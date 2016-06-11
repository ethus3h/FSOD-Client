// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._11E

package _0PF {
import _1L3._1FO;

import _r7._17v;

import _vp._1Zd;

public class _11E extends _17v {

    [Inject]
    public var view:_0T7;
    [Inject]
    public var _1pn:_1Zd;


    override public function initialize():void {
        this.view._06m.add(this._1FK);
        this.view.init();
    }

    override public function destroy():void {
    }

    private function _1FK(_arg1:_1FO):void {
        this._1pn.dispatch(_arg1);
    }


}
}//package _0PF

