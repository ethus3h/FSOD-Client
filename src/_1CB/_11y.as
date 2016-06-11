// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._11y

package _1CB {
import _07g._gC;

import _0MO._07F;
import _0MO._0Lo;

import _0Sj._0ea;

import _1Fr._1IN;
import _1Fr._qf;

import _1L3._IG;

import _r7._17v;

import _vp._1Zd;

import com.company.assembleegameclient.objects.Player;

import kabam.rotmg.assets.services._Zm;

public class _11y extends _17v {

    [Inject]
    public var view:_S1;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _Hn:_1IN;
    [Inject]
    public var _1VF:_07F;
    [Inject]
    public var _197:_0Lo;
    [Inject]
    public var _1pn:_1Zd;
    [Inject]
    public var _0k5:_Zm;
    [Inject]
    public var _0tg:_0r;
    [Inject]
    public var _Q6:_gC;
    [Inject]
    public var _1a:_0wl;
    [Inject]
    public var _M9:_IG;
    private var _0Tr:Boolean = true;


    override public function initialize():void {
        this.view._0jE.add(this._5U);
        this._1VF.addOnce(this._1c5);
        this._0tg.add(this._1ta);
        this._Q6.add(this._0aK);
        this._1a.add(this._1YV);
        this._1pn.add(this._12G);
    }

    override public function destroy():void {
        this.view._0jE.remove(this._5U);
        this._197.remove(this._098);
    }

    private function _1ta(_arg1:__0Vh):void {
        this._0Tr = false;
        this._1un();
        this._1c5(this._1b._1P.map.player_);
    }

    private function _0aK():void {
        this._0Tr = true;
        this._1un();
        this._1c5(this._1b._1P.map.player_);
        this.view._0Jz(1);
    }

    private function _1YV():void {
        var _local1:int = (this.view._0Hj + 1);
        _local1 = (_local1 % this.view._mU.length);
        this.view._0Jz(_local1);
    }

    private function _1c5(_arg1:Player):void {
        if (!_arg1) {
            return;
        }
        ;
        this.view._03S(this._0k5._0Hz(_1Jz._hP), new _0FB(_arg1));
        if (this._0Tr) {
            this.view._03S(this._0k5._0Hz(_1Jz._0MM), new _LI(this.view.HEIGHT));
        }
        ;
        if (_arg1._0kQ) {
            this.view._03S(this._0k5._0Hz(_1Jz._aL), new _1fK(_arg1));
        } else {
            this._197.add(this._098);
        }
        ;
        if (this._M9._0ER()) {
            this.view._03S(this._0k5._0Hz(_1Jz._1qS), new _0ea());
        }
        ;
    }

    private function _1un():void {
        this.view._1un();
    }

    private function _5U(_arg1:String):void {
        this._Hn._1C6 = _arg1;
    }

    private function _098(_arg1:Boolean):void {
        var _local2:Player;
        if (_arg1) {
            _local2 = this._1b._1P.map.player_;
            this.view._03S(this._0k5._0Hz(_1Jz._aL), new _1fK(_local2));
            this._197.remove(this._098);
        }
        ;
    }

    private function _12G():void {
        this._1un();
        this._1c5(this._1b._1P.map.player_);
    }


}
}//package _1CB

