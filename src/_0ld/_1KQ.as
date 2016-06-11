// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._1KQ

package _0ld {
import _1L3._0xm;

import __Nj._0uG;

import _r7._17v;

public class _1KQ extends _17v {

    [Inject]
    public var view:_1yV;
    [Inject]
    public var _nU:_0uG;
    [Inject]
    public var _Iv:_0xm;


    override public function initialize():void {
        this.view._Mt.clicked.addOnce(this._0zc);
    }

    private function _0zc():void {
        this._nU.dispatch(new this._Iv.caller());
    }


}
}//package _0ld

