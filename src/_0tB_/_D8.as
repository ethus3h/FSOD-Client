// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tB._D8

package _0tB_ {
import _1Yg._1Fn;

import _1xN._1TQ;

import _r7._17v;

public class _D8 extends _17v {

    [Inject]
    public var view:_tk;
    [Inject]
    public var model:_1Fn;
    [Inject]
    public var _0nX:_1TQ;


    override public function initialize():void {
        this.model._0HX.addOnce(this._bC);
        this.view.clicked.add(this.onButtonClick);
        this.view._fx(this.model._0DH());
    }

    override public function destroy():void {
        this.model._0HX.remove(this._bC);
        this.view.clicked.remove(this.onButtonClick);
    }

    private function onButtonClick():void {
        this._0nX.dispatch();
    }

    private function _bC():void {
        this.view.destroy();
    }


}
}//package _0tB

