// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1wC._aB

package _1wC {
import _1i0._1PV;
import _1i0._GV;

import _Z0.ToolTip;

import _r7._17v;

public class _aB extends _17v {

    [Inject]
    public var view:_0n1;
    [Inject]
    public var _5:_1PV;
    [Inject]
    public var _E:_GV;


    override public function initialize():void {
        this._5.add(this._um);
        this._E.add(this._0N2);
    }

    override public function destroy():void {
        this._5.remove(this._um);
        this._E.remove(this._0N2);
    }

    private function _um(_arg1:ToolTip):void {
        this.view.show(_arg1);
    }

    private function _0N2():void {
        this.view.hide();
    }


}
}//package _1wC

