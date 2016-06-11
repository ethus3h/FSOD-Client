// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_lr._DT

package _lr {
import _04g.MoneyFrame;

import _0Aa._0H2;

import _0MO._1Jf;

import _0Mc._21;

import _0Qm._0bR;

import _0cA._0bz;

import _0hi._0XG;
import _0hi._1Bh;
import _0hi._1IP;

import _1PE._kn;

import _1PM.*;

import _1T3._1cZ;

import _1bt._1LA;

import _1fj._1DC;

import _1i0._00d;
import _1i0._1aE;

import _Ny._200;
import _Ny._jA;

import _UB._210;

import _YV._0sD;
import _YV._1fv;

import _nl._He;

import _yh._0EX;

import flash.display.DisplayObjectContainer;
import flash.display.LoaderInfo;

public class _DT implements _YL {

    [Inject]
    public var root:DisplayObjectContainer;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _9R:_1LA;
    [Inject]
    public var mediatorMap:_210;
    [Inject]
    public var context:_Ld;
    [Inject]
    public var info:LoaderInfo;
    [Inject]
    public var _1TT:_1YQ;


    public function configure():void {
        this._fe();
        this._0m();
        this.context._11b._Dy(this.init);
    }

    private function _fe():void {
        this._sk.map(_1aE)._0MH();
        this._sk.map(_1IP)._0MH();
        this._sk.map(_jA);
        this._sk.map(_200);
        this._sk.map(_00d)._0MH();
        this._sk.map(_1cZ)._0MH();
        this.mediatorMap.map(MoneyFrame)._1kd(_21);
        this._9R.map(_1Jf)._UN(_kn)._8z(_0bR);
        this._9R.map(_1Bh)._UN(_1fv);
        this._9R.map(_0XG)._UN(_0sD);
    }

    private function _0m():void {
        if (this._0sL()) {
            this.context.configure(_0H2);
        } else {
            if (this._0D5()) {
                this.context.configure(_He);
            } else {
                if (this._UF()) {
                    this.context.configure(_0EX);
                } else {
                    this.context.configure(_1DC);
                }
                ;
            }
            ;
        }
        ;
    }

    private function _0sL():Boolean {
        return (!((this.info.parameters.kongregate_api_path == null)));
    }

    private function _0D5():Boolean {
        return (!((this.info.parameters.steam_api_path == null)));
    }

    private function _UF():Boolean {
        return (!((this.info.parameters.kabam_signed_request == null)));
    }

    private function init():void {
        this._1TT.info("isKongregate {0}", [this._0sL()]);
        this._1TT.info("isSteam {0}", [this._0D5()]);
        this._1TT.info("isKabam {0}", [this._UF()]);
    }


}
}//package _lr

