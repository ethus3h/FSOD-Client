// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0BD._0bw

package _0BD {
import _1VR._1IS;

import _1d9._0z0;

import _md._1ty;

import _r7._17v;

import com.company.assembleegameclient.parameters.Parameters;

public class _0bw extends _17v {

    [Inject]
    public var view:_1IS;
    [Inject]
    private var _1u7:_0z0;


    override public function initialize():void {
        this.view._1Hk.add(this._bH);
    }

    override public function destroy():void {
        this.view._1Hk.remove(this._bH);
    }

    private function _bH():void {
        this._1u7.dispatch(_1ty.make(Parameters._0c, "No players are eligible for teleporting"));
    }


}
}//package _0BD

