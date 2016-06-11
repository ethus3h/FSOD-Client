// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fe._1JX

package _1fe {
import _0cA._0bz;

import _1PM.*;

import _1bt._1LA;

import _1kP.ZombifyDialog;
import _1kP._0MR;
import _1kP._10f;

import _70._04b;
import _70._0i7;
import _70._1Ax;
import _70._1iP;
import _70._1wg;
import _70._KL;
import _70._dG;
import _70._pK;

import _GD._7t;

import _UB._210;

import com.company.assembleegameclient.game.GameSprite;

public class _1JX implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var mediatorMap:_210;


    public function configure():void {
        this._sk.map(_7t)._0MH();
        this._9R.map(_1iP)._UN(_04b);
        this._9R.map(_0i7)._UN(_pK);
        this._9R.map(_1Ax)._UN(_dG);
        this._9R.map(_KL)._UN(_1wg);
        this.mediatorMap.map(GameSprite)._1kd(_10f);
        this.mediatorMap.map(ZombifyDialog)._1kd(_0MR);
    }


}
}//package _1fe

