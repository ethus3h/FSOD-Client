// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cZ._1JH

package _0cZ {
import _0jj._12b;

import __Nj._0ay;

import _r7._17v;

import _rB._0en;

public class _1JH extends _17v {

    [Inject]
    public var _1pv:_0en;
    [Inject]
    public var view:PackageOfferDialog;
    [Inject]
    public var _YY:_0ay;
    [Inject]
    public var _15d:_12b;


    override public function initialize():void {
        this.view.buy.add(this._uP);
        this.view.close.add(this._0mM);
    }

    override public function destroy():void {
        this.view.close.remove(this._0mM);
        this.view.close.remove(this._uP);
        this.view.destroy();
    }

    private function _uP():void {
        this._YY.dispatch();
        this._15d.dispatch(this.view._1yL());
    }

    private function _0mM():void {
        this._YY.dispatch();
    }


}
}//package _0cZ

