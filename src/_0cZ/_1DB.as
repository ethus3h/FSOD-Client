// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cZ._1DB

package _0cZ {
import _0Rk._0Vz;

import _0jj._1t5;

import _r7._17v;

import _rB._0en;
import _rB._1P7;

public class _1DB extends _17v {

    [Inject]
    public var _1pv:_0en;
    [Inject]
    public var view:PackageButton;
    [Inject]
    public var _1m4:_1P7;
    [Inject]
    public var _0Cx:_1t5;
    private var _4k:_0Vz;
    private var _GG:Boolean;


    override public function initialize():void {
        this._1m4._19D.add(this._0jo);
        this.view.clicked.add(this._HR);
        this.view.init();
        if (this._1m4._1Q5()) {
            this._f();
        } else {
            this.view.visible = false;
            this._1pv.start();
        }
        ;
    }

    override public function destroy():void {
        this.view.clicked.remove(this._HR);
        if (this._GG) {
            this._4k._0Qz.remove(this._1NE);
            this._4k._0VB.remove(this._0Kd);
            this._4k._19D.remove(this._0jo);
        }
        ;
    }

    private function _0Kd(_arg1:int):void {
        this.view._gR(_arg1);
    }

    private function _1NE(_arg1:int):void {
        if (_arg1 <= 0) {
            this.view.visible = false;
        } else {
            this.view._0bl(_arg1);
        }
        ;
    }

    private function _0jo():void {
        this.view.visible = true;
        this._f();
    }

    private function _f():void {
        this._4k = this._1m4._sf();
        this._GG = true;
        this._4k._0Qz.add(this._1NE);
        this._4k._0VB.add(this._0Kd);
        this.view._gR(this._4k._Yj());
        this.view._0bl(this._4k.quantity);
    }

    private function _HR():void {
        this._0Cx.dispatch(this._1m4._sf().packageID);
    }


}
}//package _0cZ

