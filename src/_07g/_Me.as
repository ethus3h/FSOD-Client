// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._Me

package _07g {
import _06i._1ww;

import _0yS.ConfirmDeleteCharacterDialog;

import _1E._m;

import _1d9._Mm;

import _1i0._18D;
import _1i0._1PV;
import _1i0._GV;

import _20I._1Z;
import _20I._E0;

import __1Ye._0nK;

import __Nj._M4;

import _r7._17v;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.screens.charrects.CurrentCharacterRect;

import flash.display.Sprite;

public class _Me extends _17v {

    [Inject]
    public var view:CurrentCharacterRect;
    [Inject]
    public var _16k:_18D;
    [Inject]
    public var _04M:_Mm;
    [Inject]
    public var model:_1ww;
    [Inject]
    public var _PI:_1Z;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _5:_1PV;
    [Inject]
    public var _E:_GV;


    override public function initialize():void {
        this.view.selected.add(this._0a);
        this.view.deleteCharacter.add(this._1nP);
        this.view.showToolTip.add(this._JU);
        this.view.hideTooltip.add(this._SF);
    }

    override public function destroy():void {
        this.view.hideTooltip.remove(this._SF);
        this.view.showToolTip.remove(this._JU);
        this.view.selected.remove(this._0a);
        this.view.deleteCharacter.remove(this._1nP);
    }

    private function _JU(_arg1:Sprite):void {
        this._5.dispatch(_arg1);
    }

    private function _SF():void {
        this._E.dispatch();
    }

    private function _0a(_arg1:SavedCharacter):void {
        var _local2:_E0 = this._PI._Sb(_arg1.objectType());
        _local2._1dU(true);
        _local2._0fJ._1PW(_arg1.skinType())._1dU(true);
        this._0FF(_arg1);
        this._8i(_arg1);
    }

    private function _0FF(_arg1:SavedCharacter):void {
        var _local2:_0nK = new _0nK();
        _local2.category = "character";
        _local2._0HR = "select";
        _local2.label = _arg1._0Qh();
        _local2.value = _arg1.level();
        this._16k.dispatch(_local2);
    }

    private function _8i(_arg1:SavedCharacter):void {
        var _local2:_m = new _m();
        _local2._HG = false;
        _local2.charId = _arg1.charId();
        _local2._0uR = true;
        this._04M.dispatch(_local2);
    }

    private function _1nP(_arg1:SavedCharacter):void {
        this.model.select(_arg1);
        this._nU.dispatch(new ConfirmDeleteCharacterDialog());
    }


}
}//package _07g

