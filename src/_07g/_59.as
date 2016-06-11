// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._59

package _07g {
import _1i0._cz;
import _1i0._nB;

import _U1.CharacterSelectionAndNewsScreen;

import _Vb.ErrorDialog;

import __Nj._0ay;

import _r7._17v;

import flash.events.Event;

public class _59 extends _17v {

    [Inject]
    public var view:ErrorDialog;
    [Inject]
    public var _1ob:_cz;
    [Inject]
    public var _09N:_nB;
    [Inject]
    public var close:_0ay;


    override public function initialize():void {
        _1p8(Event.COMPLETE, this.onComplete);
        this.view.ok.addOnce(this._0mM);
    }

    override public function destroy():void {
        _5h(Event.COMPLETE, this.onComplete);
    }

    public function _0mM():void {
        this.close.dispatch();
    }

    private function onComplete(_arg1:Event):void {
        this._1ob.dispatch();
        this._09N.dispatch(new CharacterSelectionAndNewsScreen());
    }


}
}//package _07g

