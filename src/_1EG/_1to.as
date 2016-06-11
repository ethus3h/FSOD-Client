// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._1to

package _1EG {
import _1E._03e;

import _1i0._1PV;
import _1i0._GV;

import _r7._17v;

import flash.display.Sprite;

public class _1to extends _17v {

    [Inject]
    public var view:ArenaLeaderboardListItem;
    [Inject]
    public var _5:_1PV;
    [Inject]
    public var _E:_GV;
    [Inject]
    public var _Zs:_03e;


    override public function initialize():void {
        this.view._5.add(this._JU);
        this.view.hideTooltip.add(this._SF);
        this.view.setColor();
    }

    override public function destroy():void {
        this.view._5.remove(this._JU);
        this.view.hideTooltip.remove(this._SF);
    }

    private function _JU(_arg1:Sprite):void {
        this._5.dispatch(_arg1);
    }

    private function _SF():void {
        this._E.dispatch();
    }


}
}//package _1EG

