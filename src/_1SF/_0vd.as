// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1SF._0vd

package _1SF {
import _02B.UseBuyPotionCommand;
import _02B._0H4;
import _02B._1OY;
import _02B._1e9;
import _02B._1rx;
import _02B._ts;

import _0GX._gw;

import _0Jq._08F;

import _0cA._0bz;

import _0no.GiftStatusDisplay;
import _0no.MoneyChangerPanel;
import _0no.SellableObjectPanel;
import _0no.SellableObjectPanelMediator;
import _0no.TextPanel;
import _0no._08w;
import _0no._0EC;
import _0no._0h0;
import _0no._1Wq;
import _0no._1di;
import _0no._2g;
import _0no._2u;
import _0no._fY;

import _0yE._0Ej;
import _0yE._ww;

import _1CB._11y;
import _1CB._1EW;
import _1CB._1Qk;
import _1CB._S1;
import _1CB.__0Vh;
import _1CB._cg;

import _1E._03e;
import _1E._1pC;
import _1E._Pf;

import _1Em._1zd;

import _1Fr._1IN;

import _1PM.*;

import _1bt._1LA;

import _1d9._0fc;
import _1d9._0l;
import _1d9._0nV;
import _1d9._145;
import _1d9._1gY;
import _1d9._1k4;
import _1d9._21G;
import _1d9._HW;
import _1d9._Mm;
import _1d9._pF;

import _1f4.PortalPanel;
import _1f4._0Da;
import _1f4._0Yy;

import _1i0._1Gx;

import _1qi._1K8;
import _1qi._ry;

import _45._0Ou;
import _45._0uo;
import _45._1NY;
import _45._rr;

import _4p._1ae;

import _Qu._hs;

import _UB._210;

import _qd._1yE;
import _qd._Fy;
import _qd._ys;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.game._1g;
import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map._0H0;
import com.company.assembleegameclient.map._V8;
import com.company.assembleegameclient.ui._0Nu;
import com.company.assembleegameclient.ui._1Eg;

public class _0vd implements _YL {

    [Inject]
    public var context:_Ld;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var setup:_1ae;

    public function configure():void {
        this.context.configure(_gw);
        this._sk.map(_03e)._0MH();
        this._Ah();
        this.context.configure(_08F);
    }

    private function _Ah():void {
        this._sk.map(_0l)._0MH();
        this._sk.map(_1gY)._0MH();
        this._sk.map(_0nV)._0MH();
        this._sk.map(_0fc)._0MH();
        this._sk.map(_1pC)._0MH();
        this._sk.map(_1g)._0MH();
        this._sk.map(_1IN)._0MH();
        this._sk.map(_pF)._0MH();
        this._sk.map(_0H0)._0MH();
        this._sk.map(_hs)._0MH();
        this._1tm();
        this._0fv();
        this.mediatorMap.map(PortalPanel)._1kd(_08w);
        this.mediatorMap.map(_0Yy)._1kd(_1NY);
        this.mediatorMap.map(_0Da)._1kd(_0uo);
        this.mediatorMap.map(_1K8)._1kd(_0Ou);
        this.mediatorMap.map(_ry)._1kd(_rr);
        this.mediatorMap.map(_0Ej)._1kd(_ww);
        this.mediatorMap.map(_0Nu)._1kd(_1Eg);
        this.mediatorMap.map(_1zd)._1kd(_2g);
        this.mediatorMap.map(Map)._1kd(_V8);
        this.mediatorMap.map(_cg)._1kd(_1EW);
        this.mediatorMap.map(__0Vh)._1kd(_1Qk);
        this.mediatorMap.map(_S1)._1kd(_11y);
        this._9R.map(_1Gx)._UN(_1e9);
        this._9R.map(_1k4)._UN(_1OY);
        this._9R.map(_HW)._UN(UseBuyPotionCommand);
        this._9R.map(_21G)._UN(_ts);
        this._9R.map(_Mm)._UN(_0H4);
        this._0DX();
    }

    private function _1tm():void {
        this._sk.map(_Pf)._0MH();
        this._9R.map(_145, true)._UN(_1rx);
        this.mediatorMap.map(TextPanel)._1kd(_2u);
    }

    private function _0fv():void {
        this.mediatorMap.map(GiftStatusDisplay)._1kd(_1Wq);
        this.mediatorMap.map(GameSprite)._1kd(_0h0);
        this.mediatorMap.map(_fY)._1kd(_0EC);
        this.mediatorMap.map(MoneyChangerPanel)._1kd(_1di);
        this.mediatorMap.map(SellableObjectPanel)._1kd(SellableObjectPanelMediator);
    }

    private function _0DX():void {
        if (this.setup._1PZ()) {
            this._sk.map(_1yE)._131(_Fy);
        } else {
            this._sk.map(_1yE)._131(_ys);
        }
        ;
    }


}
}//package _1SF

