// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kP._195

package _1kP {
import _10a._FU;

import _1E._m;

import _1d9._Mm;

import _GD._7t;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

import flash.display.Sprite;

public class _195 extends _17v {

    [Inject]
    public var death:_7t;
    [Inject]
    public var view:ResurrectionView;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _04M:_Mm;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var closeDialogs:_0ay;


    override public function initialize():void {
        this.view.closed.add(this._0zc);
        this.view._1O9.add(this._VT);
        this.view.init(this.death._1jw().background);
    }

    override public function destroy():void {
        this.view._1O9.remove(this._VT);
        this.view.closed.remove(this._0zc);
    }

    private function _VT(_arg1:Sprite):void {
        this._nU.dispatch(_arg1);
    }

    private function _0zc():void {
        this.closeDialogs.dispatch();
        var _local1:_m = new _m();
        _local1._HG = false;
        _local1.charId = this._qP._Oc;
        _local1._0uR = true;
        this._04M.dispatch(_local1);
    }


}
}//package _1kP

