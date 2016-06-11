// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tB.if

package _0tB_ {
import _1Yg._1Fn;

import _1d9._1gY;

import _1xN._0gf;

import __Nj._0ay;

import _r7._17v;

public class _if extends _17v {

    [Inject]
    public var view:BeginnersPackageOfferDialog;
    [Inject]
    public var model:_1Fn;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _ME:_0gf;
    [Inject]
    public var _P7:_1gY;


    override public function initialize():void {
        this.view.buy.add(this._uP);
        this.view.close.add(this._0mM);
        this.view._Xl(this.model._0DH());
        this.view._1gi();
        this._P7.dispatch(false);
    }

    override public function destroy():void {
        this.view.buy.remove(this._uP);
        this.view.close.remove(this._0mM);
        this._P7.dispatch(true);
    }

    private function _uP():void {
        this._00G.dispatch();
        this._ME.dispatch();
    }

    private function _0mM():void {
        this._00G.dispatch();
    }


}
}//package _0tB

