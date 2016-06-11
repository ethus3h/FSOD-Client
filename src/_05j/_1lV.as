// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j._1lV

package _05j {
import _0MO._gs;

import _0hi._dK;

import _1Fr._qf;

import _md._0AH;

import _r7._17v;

import flash.events.MouseEvent;

public class _1lV extends _17v {

    [Inject]
    public var view:_0TJ;
    [Inject]
    public var model:_0AH;
    [Inject]
    public var _0M3:_dK;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _1fy:_gs;


    override public function initialize():void {
        this.view.setup(this.model);
        this._1fy.add(this._1LH);
    }

    override public function destroy():void {
        this.view.removeEventListener(MouseEvent.CLICK, this._1Lb);
    }

    private function _1LH():void {
        if (((this._1b._1P) && (this._1b._1P.evalIsNotInCombatMapArea()))) {
            this.view.addEventListener(MouseEvent.CLICK, this._1Lb);
        } else {
            this.view.mouseEnabled = false;
            this.view.mouseChildren = false;
        }
        ;
    }

    private function _1Lb(_arg1:MouseEvent):void {
        this._0M3.dispatch();
    }


}
}//package _05j

