// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tj._0gq

package _0tj {
import _0JD.ReskinCharacterView;
import _0JD.ReskinPanel;
import _0JD._0cu;
import _0JD._1Ew;

import _0cA._0bz;

import _1PM.*;

import _1TC._08E;

import _1bt._1LA;

import _1cr._Fv;

import _1pR._0JK;
import _1pR._0Ky;
import _1pR._1nB;
import _1pR._1pJ;
import _1pR._7G;
import _1pR._OI;
import _1pR._fH;

import _UB._210;

import _fL._RT;

public class _0gq implements _YL {

    [Inject]
    public var context:_Ld;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var _NB:_Fv;


    public function configure():void {
        this.mediatorMap.map(ReskinCharacterView)._1kd(_0cu);
        this.mediatorMap.map(ReskinPanel)._1kd(_1Ew);
        this._9R.map(_0JK)._UN(_1nB);
        this._9R.map(_7G)._UN(_0Ky);
        this._9R.map(_OI)._UN(_1pJ);
        this._NB.map(_08E.RESKIN)._0VH(_RT)._do(_fH);
        this.context._11b._Dy(this._1eI);
    }

    private function _1eI():void {
        this._sk.getInstance(_0JK).dispatch();
    }


}
}//package _0tj

