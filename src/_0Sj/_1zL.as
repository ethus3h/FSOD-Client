// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._1zL

package _0Sj {
import __Nj._0ay;

import _r7._17v;

public class _1zL extends _17v {

    [Inject]
    public var view:_05E;
    [Inject]
    public var _yR:_0ay;


    override public function initialize():void {
        this.view.clicked.addOnce(this._00G);
    }

    private function _00G():void {
        this._yR.dispatch();
    }


}
}//package _0Sj

