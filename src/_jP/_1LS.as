// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_jP._1LS

package _jP {
import _0ld._0p1;

import _1L3._1FO;

import _1Sm._sy;

import _6u._TG;

import _Vb.*;

import flash.events.Event;

public class _1LS extends _0p1 implements _1gk {

    private const _ay:_qK = new _qK();

    public function _1LS(_arg1:_1FO) {
        super(_TG._1zz, _TG._1ri, _TG._fQ, _TG._Vy, null);
        this.petVO = _arg1;
        this._0md();
    }
    [Inject]
    public var release:_0gg;
    private var petVO:_1FO;

    override protected function setDialogWidth():int {
        return (400);
    }

    public function _zK():_sy {
        return (this._ay._zK());
    }

    public function getPetVO():_1FO {
        return (this.petVO);
    }

    private function _0md():void {
        this._ay.add(this, Dialog.RIGHT_BUTTON);
        this._ay.add(this, Dialog.LEFT_BUTTON);
        addEventListener(Dialog.LEFT_BUTTON, this._1pp);
    }

    private function _1pp(_arg1:Event):void {
        removeEventListener(Dialog.LEFT_BUTTON, this._1pp);
        this.release.dispatch(this.petVO._4E());
    }


}
}//package _jP

