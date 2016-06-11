// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0yS._0RU

package _0yS {
import _06i._1ww;

import _0TL._uZ;

import __Nj._0ay;

import _r7._17v;

import com.company.assembleegameclient.appengine.SavedCharacter;

public class _0RU extends _17v {

    [Inject]
    public var view:ConfirmDeleteCharacterDialog;
    [Inject]
    public var model:_1ww;
    [Inject]
    public var deleteCharacter:_uZ;
    [Inject]
    public var closeDialogs:_0ay;
    private var character:SavedCharacter;


    override public function initialize():void {
        this.view.deleteCharacter.add(this._1nP);
        this.view.cancel.add(this._00G);
        this.character = this.model._0ZN();
        this.view._1Nq(this.character.name(), this.character._0Qh());
    }

    override public function destroy():void {
        this.view.deleteCharacter.remove(this._1nP);
        this.view.cancel.remove(this._00G);
    }

    private function _1nP():void {
        this.deleteCharacter.dispatch(this.character);
    }

    private function _00G():void {
        this.closeDialogs.dispatch();
    }


}
}//package _0yS

