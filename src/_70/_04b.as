// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_70._04b

package _70 {
import _10a._FU;

import _14._1Id;

import _GD._7t;

import __Nj._0ay;

public class _04b {

    [Inject]
    public var death:_1Id;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var model:_7t;
    [Inject]
    public var player:_FU;
    [Inject]
    public var _TY:_KL;
    [Inject]
    public var _vM:_1Ax;
    [Inject]
    public var normal:_0i7;


    public function execute():void {
        this.closeDialogs.dispatch();
        if (this._1hj()) {
            this._0iL();
        } else {
            this._0Nt();
        }
        ;
    }

    private function _1hj():Boolean {
        return (this.model._0K3());
    }

    private function _0iL():void {
        this.normal.dispatch(this.model._1jw());
    }

    private function _0Nt():void {
        this.model._029(this.death);
        if (this.death._0AO) {
            this._vM.dispatch(this.death);
        } else {
            if (!this.player._1e4()) {
                this._TY.dispatch(this.death);
            } else {
                this.normal.dispatch(this.death);
            }
            ;
        }
        ;
    }


}
}//package _70

