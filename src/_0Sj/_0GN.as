// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._0GN

package _0Sj {
import _08Y._QU;

import _0cA._0bz;

import _1L3._1FO;
import _1L3._IG;

import _1i0._1PV;

import _Z0.ToolTip;

import __Nj._M4;

import _jP.PetPanel;
import _jP._1LS;

import _r7._17v;

import _vp._0VK;
import _vp._1Ex;
import _vp._1Zd;
import _vp._1zA;

import flash.events.MouseEvent;

public class _0GN extends _17v {

    [Inject]
    public var view:PetPanel;
    [Inject]
    public var _M9:_IG;
    [Inject]
    public var _0vV:_0VK;
    [Inject]
    public var showToolTip:_1PV;
    [Inject]
    public var _0EP:_1zA;
    [Inject]
    public var _9h:_1Ex;
    [Inject]
    public var _1pn:_1Zd;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _sk:_0bz;


    override public function initialize():void {
        this.view.setState(this._1Di());
        this.view._HF.add(this._0B0);
        this.view._1xY.addEventListener(MouseEvent.CLICK, this.onButtonClick);
        this.view._Nx.addEventListener(MouseEvent.CLICK, this._1hK);
        this.view._0K5.addEventListener(MouseEvent.CLICK, this.onButtonClick);
        this._1pn.add(this._12G);
    }

    override public function destroy():void {
        this.view._Nx.removeEventListener(MouseEvent.CLICK, this._1hK);
    }

    private function _12G():void {
        var _local1:_1FO = this._M9._0ER();
        this.view._Tx(!(_local1));
    }

    private function _1Di():uint {
        if (this._0bH()) {
            return (_QU._0E5);
        }
        ;
        return (_QU._Aw);
    }

    private function _0B0(_arg1:ToolTip):void {
        this.showToolTip.dispatch(_arg1);
    }

    private function _0bH():Boolean {
        return (((this._M9._0ER()) ? (this._M9._0ER()._4E() == this.view.petVO._4E()) : false));
    }

    protected function onButtonClick(_arg1:MouseEvent):void {
        if (this._0bH()) {
            this._0EP.dispatch(this.view.petVO._4E());
        } else {
            this._9h.dispatch(this.view.petVO._4E());
        }
        ;
    }

    private function _1hK(_arg1:MouseEvent):void {
        this._sk.map(_1FO)._nR(this.view.petVO);
        this._nU.dispatch(this._sk.getInstance(_1LS));
    }


}
}//package _0Sj

