// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._2-S

package _07g {
import _0oL._0hs;

import _1i0._Q;

import _U1._0zY;

import _r7._17v;

public class _2S extends _17v {

    [Inject]
    public var view:_0zY;
    [Inject]
    public var servers:_0hs;
    [Inject]
    public var _p2:_Q;


    override public function initialize():void {
        this.view._1oN.add(this._0Bg);
        this.view.initialize(this.servers._1Z3());
    }

    override public function destroy():void {
        this.view._1oN.remove(this._0Bg);
    }

    private function _0Bg():void {
        this._p2.dispatch(new TitleView());
    }


}
}//package _07g

