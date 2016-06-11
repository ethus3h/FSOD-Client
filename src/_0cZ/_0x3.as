// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cZ._0x3

package _0cZ {
import __Nj._0ay;

import _r7._17v;

public class _0x3 extends _17v {

    [Inject]
    public var view:_018;
    [Inject]
    public var closeDialogs:_0ay;


    override public function initialize():void {
        this.view.closed.add(this._0zc);
    }

    override public function destroy():void {
        this.view.closed.remove(this._0zc);
    }

    private function _0zc():void {
        this.closeDialogs.dispatch();
    }


}
}//package _0cZ

