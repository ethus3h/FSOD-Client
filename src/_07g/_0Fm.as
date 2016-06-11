// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._0Fm

package _07g {
import _0MO._0QJ;
import _0MO._1B0;

import _1Fr._i6;

import _1d9._21G;

import _r7._17v;

public class _0Fm extends _17v {

    [Inject]
    public var view:_0GQ;
    [Inject]
    public var _Cu:_1B0;
    [Inject]
    public var _a5:_0QJ;
    [Inject]
    public var _1Df:_21G;


    override public function initialize():void {
        this._Cu.add(this._fB);
        this._a5.add(this._0vy);
        this._1Df.add(this._8R);
    }

    override public function destroy():void {
        this._Cu.remove(this._fB);
        this._a5.remove(this._0vy);
        this._1Df.remove(this._8R);
    }

    private function _fB(_arg1:_i6):void {
        this.view._Cu(_arg1);
    }

    private function _0vy(_arg1:_i6):void {
        this.view._a5(_arg1);
    }

    private function _8R():void {
        this.view.parent.removeChild(this.view);
    }


}
}//package _07g

