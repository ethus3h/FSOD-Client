// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._1Zg

package _0ld {
import _0CT._8w;

import _6u._TG;

import _Vb.Dialog;

import __Nj._0ay;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.googleanalytics.GA;

import flash.events.Event;

public class _1Zg extends _0p1 {

    public function _1Zg(_arg1:GameSprite) {
        this._yR = _8w._1Sz().getInstance(_0ay);
        this._1P = _arg1;
        super("LeavePetYardDialog.title", "LeavePetYardDialog.text", _TG._0Ly, _TG._0kC, null);
        addEventListener(Dialog.LEFT_BUTTON, this._0mM);
        addEventListener(Dialog.RIGHT_BUTTON, this._0q2);
        _zj.setMultiLine(true);
    }
    private var _1P:GameSprite;
    private var _yR:_0ay;

    private function _0mM(_arg1:Event):void {
        this._yR.dispatch();
    }

    private function _0q2(_arg1:Event):void {
        this._1P.gsc_.escape();
        GA.global().trackEvent("enterPortal", "Nexus Button");
        Parameters.data_.needsRandomRealm = false;
        Parameters.save();
        this._yR.dispatch();
    }


}
}//package _0ld

