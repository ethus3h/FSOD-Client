// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._1R

package _0Sj {
import _1L3._0FQ;
import _1L3._0xm;
import _1L3._IG;

import _r7._17v;

public class _1R extends _17v {

    [Inject]
    public var view:FusionStrength;
    [Inject]
    public var _e2:_IG;
    [Inject]
    public var _Iv:_0xm;


    override public function initialize():void {
        if (!this._Iv._1uw) {
            this._Iv._1uw = this._e2._0ER();
        }
        ;
        if (this._Iv._7U()) {
            this.view._0Oa(_0FQ._20s(this._Iv._1uw, this._Iv._1V));
        } else {
            this.view.reset();
        }
        ;
    }


}
}//package _0Sj

