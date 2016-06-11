// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1zr._FG

package _1zr {
import _0Qm._0bR;

import _0cA._0bz;

import _0hi._1Uy;
import _0hi._1pq;

import _13d._RK;

import _1PM.*;

import _1bt._1LA;

import _1q1._10t;
import _1q1._17l;
import _1q1._1nT;
import _1q1._1q7;
import _1q1._1st;
import _1q1._6z;
import _1q1._JI;
import _1q1._qL;

import _20I._1Z;

import _4.CharacterSkinListItem;
import _4.ClassDetailView;
import _4._0Qj;
import _4._0cX;
import _4._0eN;
import _4._1C;
import _4._1CJ;
import _4._1sR;
import _4._1z6;

import _UB._210;

import kabam.rotmg.assets._1tT;

public class _FG implements _YL {

    [Inject]
    public var context:_Ld;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;


    public function configure():void {
        this._sk.map(_1Z)._0MH();
        this._sk.map(_1C)._0MH();
        this._sk.map(_JI)._0MH();
        this._sk.map(_RK);
        this.mediatorMap.map(CharacterSkinListItem)._1kd(_1sR);
        this.mediatorMap.map(_0Qj)._1kd(_1z6);
        this.mediatorMap.map(_1CJ)._1kd(_0eN);
        this.mediatorMap.map(ClassDetailView)._1kd(_0cX);
        this._9R.map(_1pq)._UN(_1nT);
        this._9R.map(_1Uy)._UN(_17l);
        this._9R.map(_6z)._UN(_10t);
        this._9R.map(_6z)._UN(_qL);
        this._9R.map(_1st)._UN(_1q7)._8z(_0bR);
        this.context._11b._Dy(this.init);
    }

    private function init():void {
        var _local1:XML = XML(new _1tT.PlayersCXML());
        var _local2:_6z = this._sk.getInstance(_6z);
        _local2.dispatch(_local1);
    }


}
}//package _1zr

