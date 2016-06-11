// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1qN._04t

package _1qN {
import _0cA._0bz;

import _1PM.*;

import _1bt._1LA;

import _1pV._0BG;
import _1pV._SQ;

import _3q._0av;
import _3q._1cP;

import _UB._210;

import _X7._17k;
import _X7._1XM;
import _X7._P3;
import _X7._mE;
import _X7._ns;

public class _04t implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;


    public function configure():void {
        this._sk.map(_SQ)._0MH();
        this._sk.map(_0BG)._0MH();
        this._sk.map(_17k)._0MH();
        this.mediatorMap.map(_0av)._1kd(_1cP);
        this._9R.map(_P3)._UN(_mE);
        this._9R.map(_ns)._UN(_1XM);
    }


}
}//package _1qN

