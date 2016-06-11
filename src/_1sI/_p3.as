// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1sI._p3

package _1sI {
import _0TL._1EQ;
import _0TL._uZ;

import _0cA._0bz;

import _0yS.ConfirmDeleteCharacterDialog;
import _0yS._0RU;

import _1PM.*;

import _1bt._1LA;

import _1pf._2n;

import _UB._210;

public class _p3 implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;


    public function configure():void {
        this._sk.map(_2n);
        this.mediatorMap.map(ConfirmDeleteCharacterDialog)._1kd(_0RU);
        this._9R.map(_uZ)._UN(_1EQ);
    }


}
}//package _1sI

