// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Ld._0Gd

package _1Ld {
import _07g.TitleView;

import _0cy._0Ij;

import _175._0CN;

import _1i0._Q;

import __IN._0VQ;

import _r7._17v;

public class _0Gd extends _17v {

    [Inject]
    public var _p7:_0Ij;
    [Inject]
    public var _0GF:_0CN;
    [Inject]
    public var _0U8:_0VQ;
    [Inject]
    public var view:_ni;
    [Inject]
    public var _p2:_Q;


    override public function initialize():void {
        this.view._01q(this._0GF._0PA());
        this.view.setSelected(this._0GF._0SL(this._0GF._1Es()));
        this.view._Cv.add(this._1sW);
        this.view.back.add(this._lo);
    }

    override public function destroy():void {
        this.view._Cv.remove(this._1sW);
        this.view.back.remove(this._lo);
    }

    private function _lo():void {
        this._p2.dispatch(new TitleView());
    }

    private function _1sW(_arg1:String):void {
        this._0U8.dispatch(this._0GF._0Th(_arg1));
    }


}
}//package _1Ld

