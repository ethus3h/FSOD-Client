// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0JD._0cu

package _0JD {
import _10a._FU;

import _1pR._OI;

import _20I._13Z;
import _20I._1Z;

import __Nj._0ay;

import _r7._17v;

public class _0cu extends _17v {

    [Inject]
    public var view:ReskinCharacterView;
    [Inject]
    public var player:_FU;
    [Inject]
    public var model:_1Z;
    [Inject]
    public var _I5:_OI;
    [Inject]
    public var closeDialogs:_0ay;
    private var _0fJ:_13Z;


    override public function initialize():void {
        this._0fJ = this._cZ();
        this.view.selected.add(this._0a);
        this.view._OD.add(this._in);
    }

    override public function destroy():void {
        this.view.selected.remove(this._0a);
        this.view._OD.remove(this._in);
    }

    private function _cZ():_13Z {
        return (this.model._0ZN()._0fJ);
    }

    private function _0a():void {
        this.closeDialogs.dispatch();
        this._I5.dispatch(this._0fJ._20R());
    }

    private function _in():void {
        this.closeDialogs.dispatch();
    }


}
}//package _0JD

