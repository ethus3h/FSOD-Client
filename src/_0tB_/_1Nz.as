// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tB._1Nz

package _0tB_ {
import _1PE._0Q8;

import _1Yg._1Fn;

import _1xN._Q2;

import __Nj._0ay;

import _r7._17v;

public class _1Nz extends _17v {

    [Inject]
    public var view:_0mY;
    [Inject]
    public var model:_1Fn;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _0DK:_Q2;


    override public function initialize():void {
        this.view.close.add(this._0mM);
        this.view.select.add(this.onSelect);
        this.view._1gi();
    }

    override public function destroy():void {
        this.view.close.remove(this._0mM);
        this.view.select.remove(this.onSelect);
    }

    private function _0mM():void {
        this.closeDialogs.dispatch();
    }

    private function onSelect(_arg1:String):void {
        var _local2:_0Q8 = new _0Q8();
        _local2.offer = this.model._0ku();
        _local2.paymentMethod = _arg1;
        this._0DK.dispatch(_local2);
        this.closeDialogs.dispatch();
    }


}
}//package _0tB

