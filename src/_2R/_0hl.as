// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_2-R._0hl

package _2R {
import _0FY._0Vj;

import _0cA._0bz;

import _0y8._106;
import _0y8._1xD;

import _1H0.FameView;
import _1H0._0d;

import _1PM.*;

import _1bt._1LA;

import _UB._210;

import _wm._vG;

public class _0hl implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;


    public function configure():void {
        this._sk.map(_vG)._0MH();
        this._sk.map(_0Vj);
        this._9R.map(_1xD)._UN(_106);
        this.mediatorMap.map(FameView)._1kd(_0d);
    }


}
}//package _2-R

