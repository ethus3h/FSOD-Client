// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1mS._1nW

package _1mS {
import _0cA._0bz;

import _0fB._21C;

import _0hU._04Q;
import _0hU._0Oy;
import _0hU._0n;
import _0hU._1J4;
import _0hU._1hN;
import _0hU._1qW;

import _1EG.ArenaLeaderboard;
import _1EG.ArenaLeaderboardListItem;
import _1EG.ArenaQueryPanel;
import _1EG.BattleSummaryDialog;
import _1EG.ContinueOrQuitDialog;
import _1EG._080;
import _1EG._0pY;
import _1EG._0vn;
import _1EG._0w;
import _1EG._1KZ;
import _1EG._1Lo;
import _1EG._1fW;
import _1EG._1jL;
import _1EG._1to;
import _1EG._7M;
import _1EG._9y;
import _1EG._GX;
import _1EG._eS;

import _1PM.*;

import _1bt._1LA;

import _1d9._21G;

import _1fG._0qT;
import _1fG._null;

import _1ik._1Sl;
import _1ik._UD;
import _1ik._f0;

import _UB._210;

public class _1nW implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var commandCenter:_21C;


    public function configure():void {
        this._sk.map(_0qT);
        this._sk.map(_null);
        this._sk.map(_f0)._0MH();
        this._sk.map(_UD)._0MH();
        this._sk.map(_0n)._0MH();
        this._sk.map(_1Sl)._0MH();
        this._9R.map(_1J4)._UN(_04Q);
        this._9R.map(_1hN)._UN(_1qW);
        this._9R.map(_21G)._UN(_0Oy);
        this.mediatorMap.map(ContinueOrQuitDialog)._1kd(_080);
        this.mediatorMap.map(_GX)._1kd(_1KZ);
        this.mediatorMap.map(ArenaQueryPanel)._1kd(_eS);
        this.mediatorMap.map(ArenaLeaderboard)._1kd(_7M);
        this.mediatorMap.map(ArenaLeaderboardListItem)._1kd(_1to);
        this.mediatorMap.map(_9y)._1kd(_1jL);
        this.mediatorMap.map(_0vn)._1kd(_0w);
        this.mediatorMap.map(BattleSummaryDialog)._1kd(_0pY);
        this.mediatorMap.map(_1fW)._1kd(_1Lo);
    }


}
}//package _1mS

