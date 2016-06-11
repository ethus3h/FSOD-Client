// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0BD._0nP

package _0BD {
import _04g._13e;
import _04g._1Zt;
import _04g._AE;
import _04g._GE;

import _07g.AgeVerificationDialog;
import _07g.CharacterDetailsView;
import _07g.CharacterSlotNeedGoldDialog;
import _07g.ChooseNameRegisterDialog;
import _07g.TitleView;
import _07g._03x;
import _07g._08Q;
import _07g._0Ek;
import _07g._0Fm;
import _07g._0GQ;
import _07g._0Ps;
import _07g._0T8;
import _07g._0Uw;
import _07g._0Yv;
import _07g._0rY;
import _07g._11N;
import _07g._1CX;
import _07g._1QQ;
import _07g._1eW;
import _07g._1in;
import _07g._1k2;
import _07g._1mn;
import _07g._1t;
import _07g._2S;
import _07g._59;
import _07g._BL;
import _07g._EV;
import _07g._JF;
import _07g._K;
import _07g._Me;
import _07g._gC;
import _07g._gF;
import _07g._v2;

import _0MO._07F;
import _0MO._092;
import _0MO._0IV;
import _0MO._0Lo;
import _0MO._0QJ;
import _0MO._0U6;
import _0MO._0WQ;
import _0MO._0ua;
import _0MO._1B0;
import _0MO._1nu;
import _0MO._218;
import _0MO._gs;
import _0MO._qB;
import _0MO._uR;

import _0Mc.CreateGuildFrame;
import _0Mc.NewChooseNameFrame;
import _0Mc._0ng;
import _0Mc._0wy;
import _0Mc._bP;

import _0Nb._22;

import _0cA._0bz;

import _0no.NameChangerPanel;
import _0no.NameChangerPanelMediator;
import _0no.TextPanel;
import _0no._2u;

import _0t._Ko;

import _1CB._0r;
import _1CB._0wl;

import _1Dd.ProductionNoServersDialogFactory;
import _1Dd._0Qf;
import _1Dd._1i6;

import _1E._1ne;

import _1Fr._qf;

import _1Jc._1aj;

import _1Kr._0MU;
import _1Kr._0lW;

import _1LY._0Xl;
import _1LY._0mS;
import _1LY._14h;
import _1LY._15b;
import _1LY._1ai;
import _1LY._1uL;
import _1LY._GS;

import _1Ld._0Gd;
import _1Ld._ni;

import _1PM.*;

import _1VR._1IS;

import _1bt._1LA;

import _1f4.ArenaPortalPanel;
import _1f4.GuildRegisterPanel;
import _1f4._0Da;

import _1kP.ResurrectionView;
import _1kP._195;

import _1qi._1K8;

import _45._0Ou;
import _45._0uo;
import _45._1Qz;
import _45._tz;

import _4p._1ae;

import _93._0I1;
import _93._DS;

import _Ny._1nF;
import _Ny._200;

import _U1.CharacterSelectionAndNewsScreen;
import _U1._0zY;
import _U1._1sS;
import _U1._4H;
import _U1._Y5;
import _U1._break;
import _U1._bv;

import _UB._210;

import _Vb.ErrorDialog;

import _ZR._0Lx;

import _gr._1U7;

import com.company.assembleegameclient.objects._1Sg;
import com.company.assembleegameclient.screens.charrects.CharacterRectList;
import com.company.assembleegameclient.screens.charrects.CurrentCharacterRect;

public class _0nP implements _YL {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var setup:_1ae;
    [Inject]
    public var startup:_1U7;


    public function configure():void {
        this._sk.map(_0WQ)._0MH();
        this._sk.map(_1ne)._0MH();
        this._sk.map(_qB)._0MH();
        this._sk.map(_0Lo)._0MH();
        this._sk.map(_0r)._0MH();
        this._sk.map(_gC)._0MH();
        this._sk.map(_0wl)._0MH();
        this._sk.map(_1aj)._0MH();
        this._sk.map(_1Sg)._0MH();
        this._9R.map(_0U6)._UN(_15b);
        this._9R.map(_092)._UN(_0Xl);
        this._9R.map(_218)._UN(_1uL);
        this._9R.map(_0IV)._UN(_GS);
        this.mediatorMap.map(_4H)._1kd(_JF);
        this.mediatorMap.map(_0zY)._1kd(_2S);
        this.mediatorMap.map(_break)._1kd(_1t);
        this.mediatorMap.map(CharacterSelectionAndNewsScreen)._1kd(_BL);
        this.mediatorMap.map(_13e)._1kd(_AE);
        this.mediatorMap.map(_Y5)._1kd(_1k2);
        this.mediatorMap.map(TitleView)._1kd(_0Ps);
        this.mediatorMap.map(_1sS)._1kd(_1eW);
        this.mediatorMap.map(_Ko)._1kd(_0rY);
        this.mediatorMap.map(CurrentCharacterRect)._1kd(_Me);
        this.mediatorMap.map(CharacterRectList)._1kd(_0T8);
        this.mediatorMap.map(ErrorDialog)._1kd(_59);
        this.mediatorMap.map(_bv)._1kd(_1in);
        this.mediatorMap.map(_0Ek)._1kd(_gF);
        this.mediatorMap.map(_0Da)._1kd(_0uo);
        this.mediatorMap.map(TextPanel)._1kd(_2u);
        this.mediatorMap.map(_1K8)._1kd(_0Ou);
        this.mediatorMap.map(ChooseNameRegisterDialog)._1kd(_08Q);
        this.mediatorMap.map(_v2)._1kd(_0Uw);
        this.mediatorMap.map(_GE)._1kd(_1Zt);
        this.mediatorMap.map(CharacterSlotNeedGoldDialog)._1kd(_1CX);
        this.mediatorMap.map(NameChangerPanel)._1kd(NameChangerPanelMediator);
        this.mediatorMap.map(GuildRegisterPanel)._1kd(_tz);
        this.mediatorMap.map(_0ng)._1kd(_0wy);
        this.mediatorMap.map(CreateGuildFrame)._1kd(_22);
        this.mediatorMap.map(NewChooseNameFrame)._1kd(_bP);
        this.mediatorMap.map(_1IS)._1kd(_0bw);
        this.mediatorMap.map(AgeVerificationDialog)._1kd(_1mn);
        this.mediatorMap.map(_ni)._1kd(_0Gd);
        this.mediatorMap.map(ArenaPortalPanel)._1kd(_1Qz);
        this.mediatorMap.map(_11N)._1kd(_03x);
        this.mediatorMap.map(_1QQ)._1kd(_K);
        this.mediatorMap.map(_0MU)._1kd(_0lW);
        this.mediatorMap.map(ResurrectionView)._1kd(_195);
        this.mediatorMap.map(_0Lx)._1kd(_DS);
        this.mediatorMap.map(_0Yv)._1kd(_0I1);
        this._02L();
        this._0v9();
        this._A4();
        this.startup._1CI(_0U6, -1);
        this.startup._0q3(_1nF);
        this.startup._0q3(_200);
        this.startup._1CI(_092, _1U7._1nH);
    }

    private function _02L():void {
        this._sk.map(_1B0)._nR(new _1B0());
        this._sk.map(_0QJ)._nR(new _0QJ());
        this._9R.map(_1nu)._UN(_0mS);
        this._9R.map(_0ua)._UN(_1ai);
        this.mediatorMap.map(_0GQ)._1kd(_0Fm);
    }

    private function _0v9():void {
        if (this.setup._0Hb()) {
            this._sk.map(_0Qf)._5Z(ProductionNoServersDialogFactory);
        } else {
            this._sk.map(_0Qf)._5Z(_1i6);
        }
        ;
    }

    private function _A4():void {
        this._sk.map(_qf)._0MH();
        this._sk.map(_07F)._0MH();
        this._sk.map(_gs)._0MH();
        this._9R.map(_uR)._UN(_14h);
        this.mediatorMap.map(CharacterDetailsView)._1kd(_EV);
    }


}
}//package _0BD

