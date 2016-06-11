// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._0T8

package _07g {
import _0MO._1Jf;

import _1i0._nB;

import _U1._1sS;

import _r7._17v;

import com.company.assembleegameclient.screens.charrects.CharacterRectList;

public class _0T8 extends _17v {

    [Inject]
    public var view:CharacterRectList;
    [Inject]
    public var _09N:_nB;
    [Inject]
    public var _1IM:_1Jf;


    override public function initialize():void {
        this.view.newCharacter.add(this._sV);
        this.view.buyCharacterSlot.add(this._0D4);
    }

    override public function destroy():void {
        this.view.newCharacter.remove(this._sV);
        this.view.buyCharacterSlot.remove(this._0D4);
    }

    private function _sV():void {
        this._09N.dispatch(new _1sS());
    }

    private function _0D4(_arg1:int):void {
        this._1IM.dispatch(_arg1);
    }


}
}//package _07g

