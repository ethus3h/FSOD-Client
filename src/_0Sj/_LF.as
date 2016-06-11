// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._LF

package _0Sj {
import _1i0._1PV;

import _Z0.ToolTip;

import _r7._17v;

public class _LF extends _17v {

    [Inject]
    public var view:_1Ft;
    [Inject]
    public var showToolTip:_1PV;


    override public function initialize():void {
        this.view._HF.add(this._0B0);
    }

    override public function destroy():void {
        this.view.destroy();
    }

    private function _0B0(_arg1:ToolTip):void {
        this.showToolTip.dispatch(_arg1);
    }


}
}//package _0Sj

