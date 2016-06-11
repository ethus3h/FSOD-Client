// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Ym._9w

package _0Ym {
import _0cA._0bz;

import _1PM.*;

import _1R4._1Pc;
import _1R4._SJ;

import _1bt._1LA;

import _1oE._069;
import _1oE._0Wf;
import _1oE._0bY;
import _1oE._cm;

import _1vS._0Vp;

import _UB._210;

public class _9w implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var mediatorMap:_210;


    public function configure():void {
        this._sk.map(_cm)._0MH();
        this._sk.map(_0Wf)._0MH();
        this._sk.map(_069)._0MH();
        this._9R.map(_0bY)._UN(_0Vp);
        this.mediatorMap.map(_SJ)._1kd(_1Pc);
    }


}
}//package _0Ym

