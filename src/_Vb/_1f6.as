// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Vb._1f6

package _Vb {
import _1Sm._sy;

import __Nj._0ay;

import _r7._17v;

public class _1f6 extends _17v {

    [Inject]
    public var _16Y:_1gk;
    [Inject]
    public var _YY:_0ay;
    private var _vl:_sy;


    override public function initialize():void {
        this._vl = this._16Y._zK();
        this._vl.add(this._0mM);
    }

    override public function destroy():void {
        this._vl.remove(this._0mM);
    }

    private function _0mM():void {
        this._YY.dispatch();
    }


}
}//package _Vb

