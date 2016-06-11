// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._1CX

package _07g {
import _0hi._DG;

import _10a._FU;

import __Nj._0ay;

import _r7._17v;

public class _1CX extends _17v {

    [Inject]
    public var view:CharacterSlotNeedGoldDialog;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _ky:_DG;
    [Inject]
    public var model:_FU;


    override public function initialize():void {
        this.view._7u.add(this._1L);
        this.view.cancel.add(this.onCancel);
        this.view.setPrice(this.model._2y());
    }

    override public function destroy():void {
        this.view._7u.remove(this._1L);
        this.view.cancel.remove(this.onCancel);
    }

    public function onCancel():void {
        this._00G.dispatch();
    }

    public function _1L():void {
        this._ky.dispatch();
    }


}
}//package _07g

