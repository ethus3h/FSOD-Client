// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._1t-

package _07g {
import _1i0._Q;

import _U1._break;

import _r7._17v;

public class _1t extends _17v {

    [Inject]
    public var view:_break;
    [Inject]
    public var _p2:_Q;


    override public function initialize():void {
        this.view.close.add(this._0Hl);
        this.view.initialize();
    }

    override public function destroy():void {
        this.view.close.remove(this._0Hl);
    }

    private function _0Hl():void {
        this._p2.dispatch(new TitleView());
    }


}
}//package _07g

