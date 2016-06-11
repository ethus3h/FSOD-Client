// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._1eW

package _07g {
import _10a._FU;

import _1d9._Mm;

import _1i0._0Wt;
import _1i0._0lm;
import _1i0._171;
import _1i0._1PV;
import _1i0._GV;
import _1i0._Q;

import _20I._1Z;

import _4._1CJ;

import _U1.CharacterSelectionAndNewsScreen;
import _U1._1sS;

import _r7._17v;

import flash.display.Sprite;

public class _1eW extends _17v {

    [Inject]
    public var view:_1sS;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var _04M:_Mm;
    [Inject]
    public var _5:_1PV;
    [Inject]
    public var _E:_GV;
    [Inject]
    public var _1r4:_171;
    [Inject]
    public var _1pr:_0Wt;
    [Inject]
    public var _1O5:_0lm;
    [Inject]
    public var _PI:_1Z;


    override public function initialize():void {
        this.view.selected.add(this._0a);
        this.view.close.add(this._0mM);
        this.view.tooltip.add(this._0GA);
        this.view.buy.add(this._uP);
        this._1r4.add(this._0IJ);
        this._1pr.add(this._0MT);
        this.view.initialize(this._qP);
    }

    override public function destroy():void {
        this.view.selected.remove(this._0a);
        this.view.close.remove(this._0mM);
        this.view.tooltip.remove(this._0GA);
        this.view.buy.remove(this._uP);
        this._1pr.remove(this._0MT);
        this._1r4.remove(this._0IJ);
    }

    private function _0MT(_arg1:int):void {
        this.view._rS(this._qP._1fB(), this._qP._00f());
    }

    private function _0mM():void {
        this._p2.dispatch(new CharacterSelectionAndNewsScreen());
    }

    private function _0a(_arg1:int):void {
        this._PI._Sb(_arg1)._1dU(true);
        this._p2.dispatch(new _1CJ());
    }

    private function _0GA(_arg1:Sprite):void {
        if (_arg1) {
            this._5.dispatch(_arg1);
        } else {
            this._E.dispatch();
        }
        ;
    }

    private function _0IJ():void {
        this.view.update(this._qP);
    }

    private function _uP(_arg1:int):void {
        this._1O5.dispatch(_arg1);
    }


}
}//package _07g

