// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0GX._gw

package _0GX {
import _0cA._0bz;

import _1PM.*;

import _1Sm._sy;

import _1bt._1LA;

import _Gf._1nb;
import _Gf._4t;
import _Gf._GC;

import _UB._210;

import _Vj._0eI;

import com.company.assembleegameclient.game.GameSprite;

public class _gw implements _YL {

    [Inject]
    public var context:_Ld;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var mediatorMap:_210;


    public function configure():void {
        this._sk.map(_GC)._0MH();
        this._9R.map(_4t)._UN(_1nb);
        this.mediatorMap.map(GameSprite)._1kd(_0eI);
        this.context._11b._Dy(this.init);
    }

    private function init():void {
        _sy(this._sk.getInstance(_4t)).dispatch();
    }


}
}//package _0GX

