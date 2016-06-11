// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Nb._22

package _0Nb {
import _0Mc.CreateGuildFrame;

import __Nj._0ay;

import _r7._17v;

public class _22 extends _17v {

    [Inject]
    public var view:CreateGuildFrame;
    [Inject]
    public var _00G:_0ay;


    override public function initialize():void {
        this.view.close.add(this._0mM);
    }

    override public function destroy():void {
        this.view.close.remove(this._0mM);
    }

    private function _0mM():void {
        this._00G.dispatch();
    }


}
}//package _0Nb

