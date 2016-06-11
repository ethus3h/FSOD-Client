// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._08Q

package _07g {
import _0hi._dK;

import _r7._17v;

public class _08Q extends _17v {

    [Inject]
    public var view:ChooseNameRegisterDialog;
    [Inject]
    public var _0M3:_dK;


    override public function initialize():void {
        this.view.register.add(this._jy);
        this.view.cancel.add(this.onCancel);
    }

    override public function destroy():void {
        this.view.register.remove(this._jy);
        this.view.cancel.remove(this.onCancel);
    }

    private function _jy():void {
        this.onCancel();
        this._0M3.dispatch();
    }

    private function onCancel():void {
        this.view.parent.removeChild(this.view);
    }


}
}//package _07g

