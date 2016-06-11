// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Vb.NotEnoughFameDialog

package _Vb {
import _6u._TG;

import flash.events.Event;

public class NotEnoughFameDialog extends Dialog {

    public function NotEnoughFameDialog() {
        super(_TG._QK, _TG._11q, _TG._0aJ, null, "/notEnoughFame");
        addEventListener(LEFT_BUTTON, this._O4);
    }

    public function _O4(_arg1:Event):void {
        parent.removeChild(this);
    }


}
}//package _Vb

