// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no._08w

package _0no {
import _1d9._pF;

import _1f4.PortalPanel;

import _r7._17v;

public class _08w extends _17v {

    [Inject]
    public var view:PortalPanel;
    [Inject]
    public var _v0:_pF;


    override public function initialize():void {
        this.view._v0.add(this._yc);
    }

    override public function destroy():void {
        this.view._v0.remove(this._yc);
    }

    private function _yc():void {
        this._v0.dispatch();
    }


}
}//package _0no

