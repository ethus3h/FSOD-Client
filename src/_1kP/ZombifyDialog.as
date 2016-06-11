// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kP.ZombifyDialog

package _1kP {
import _1Sm._sy;

import _Vb.Dialog;

import flash.display.Sprite;
import flash.events.Event;

public class ZombifyDialog extends Sprite {

    public static const TITLE:String = "ZombifyDialog.title";
    public static const _16j:String = "ZombifyDialog.body";
    public static const _eD:String = "ZombifyDialog.button";

    public const closed:_sy = new _sy();

    public function ZombifyDialog() {
        this._16Y = new Dialog(TITLE, _16j, _eD, null, null);
        this._16Y._1G0 = -100;
        this._16Y._15z = 200;
        this._16Y.addEventListener(Dialog.LEFT_BUTTON, this.onButtonClick);
        addChild(this._16Y);
    }
    private var _16Y:Dialog;

    private function onButtonClick(_arg1:Event):void {
        this.closed.dispatch();
    }


}
}//package _1kP

