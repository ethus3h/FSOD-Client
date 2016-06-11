// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._eS

package _1EG {
import _1L3._IG;

import _1PE.Account;

import __Nj._M4;

import _r7._17v;

import flash.events.MouseEvent;

public class _eS extends _17v {

    [Inject]
    public var view:ArenaQueryPanel;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _M9:_IG;
    [Inject]
    public var account:Account;


    override public function initialize():void {
        this._BN();
    }

    override public function destroy():void {
        super.destroy();
    }

    private function _BN():void {
        if (this.view._0Nh) {
            this.view._0Nh.addEventListener(MouseEvent.CLICK, this._127);
            this.view._1b.addEventListener(MouseEvent.CLICK, this._11M);
        } else {
            this.view._1b.addEventListener(MouseEvent.CLICK, this._11M);
        }
        ;
    }

    protected function _11M(_arg1:MouseEvent):void {
        this._nU.dispatch(new _GX());
    }

    protected function _127(_arg1:MouseEvent):void {
        this._nU.dispatch(new ArenaLeaderboard());
    }


}
}//package _1EG

