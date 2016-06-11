// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0yS.ConfirmDeleteCharacterDialog

package _0yS {
import _1Sm._sy;

import _6u._TG;

import _Vb.Dialog;

import flash.display.Sprite;
import flash.events.Event;

public class ConfirmDeleteCharacterDialog extends Sprite {

    private const _rR:String = Dialog.LEFT_BUTTON;
    private const _0hE:String = Dialog.RIGHT_BUTTON;

    public function ConfirmDeleteCharacterDialog() {
        this.deleteCharacter = new _sy();
        this.cancel = new _sy();
    }
    public var deleteCharacter:_sy;
    public var cancel:_sy;

    public function _1Nq(_arg1:String, _arg2:String):void {
        var _local3:Dialog = new Dialog(_TG._1iM, "", _TG._CK, _TG._18K, "/deleteDialog");
        _local3._Mu(_TG._1ax, {
            name: _arg1,
            displayID: _arg2
        });
        _local3.addEventListener(this._rR, this.onCancel);
        _local3.addEventListener(this._0hE, this.onDelete);
        addChild(_local3);
    }

    private function onCancel(_arg1:Event):void {
        this.cancel.dispatch();
    }

    private function onDelete(_arg1:Event):void {
        this.deleteCharacter.dispatch();
    }


}
}//package _0yS

