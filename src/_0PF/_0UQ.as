// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._0UQ

package _0PF {
import _1L3._0xm;

import _1oE._0Wf;

import _r7._17v;

public class _0UQ extends _17v {

    [Inject]
    public var _Iv:_0xm;
    [Inject]
    public var _ob:_0Wf;


    override public function initialize():void {
        this._ob.add(this._mR);
    }

    override public function destroy():void {
        this._ob.remove(this._mR);
    }

    private function _mR():void {
        this._Iv.clear();
    }


}
}//package _0PF

