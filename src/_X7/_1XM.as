// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X7._1XM

package _X7 {
import _07g.TitleView;

import _1i0._cz;
import _1i0._nB;

import _GD._7t;

import _U1.CharacterSelectionAndNewsScreen;

public class _1XM {

    [Inject]
    public var model:_7t;
    [Inject]
    public var _1Dx:_cz;
    [Inject]
    public var _p2:_nB;


    public function execute():void {
        if (this.model._0K3()) {
            this._1Ki();
        } else {
            this._Wy();
        }
        ;
    }

    private function _1Ki():void {
        this.model._Br();
        this._1Dx.dispatch();
        this._p2.dispatch(new CharacterSelectionAndNewsScreen());
    }

    private function _Wy():void {
        this._p2.dispatch(new TitleView());
    }


}
}//package _X7

