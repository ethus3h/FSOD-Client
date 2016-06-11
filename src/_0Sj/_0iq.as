// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._0iq

package _0Sj {
import _0PF.YardUpgraderView;

import _0ld.CaretakerQueryDialog;

import _1L3._IG;
import _1L3._xy;

import _1PE.Account;

import __Nj._M4;

import _r7._17v;

import flash.events.MouseEvent;

public class _0iq extends _17v {

    [Inject]
    public var view:_0P;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _M9:_IG;
    [Inject]
    public var account:Account;


    override public function initialize():void {
        this.view.init(this._1V9());
        this._BN();
    }

    override public function destroy():void {
        super.destroy();
    }

    private function _BN():void {
        if (this.view._1wZ) {
            this.view._1wZ.addEventListener(MouseEvent.CLICK, this._127);
            this.view._1b.addEventListener(MouseEvent.CLICK, this._11M);
        } else {
            this.view._1b.addEventListener(MouseEvent.CLICK, this._11M);
        }
        ;
    }

    private function _1V9():Boolean {
        var _local1:int;
        if (!this.account._vD()) {
            return (false);
        }
        ;
        _local1 = this._M9._NR();
        return ((_local1 < _xy._1T9));
    }

    protected function _11M(_arg1:MouseEvent):void {
        this._nU.dispatch(new CaretakerQueryDialog());
    }

    protected function _127(_arg1:MouseEvent):void {
        this._nU.dispatch(new YardUpgraderView());
    }


}
}//package _0Sj

