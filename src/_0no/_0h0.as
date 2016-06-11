// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no._0h0

package _0no {
import _0CT._8w;

import _0MO._07F;
import _0MO._gs;
import _0MO._uR;

import _0Rk._0Vz;

import _0gF._0La;

import _0jj._10z;
import _0jj._1t5;
import _0jj._CH;
import _0jj._mX;

import _10a._12l;
import _10a._FU;

import _1E._m;

import _1Yg._1Fn;

import _1d9._1gY;
import _1d9._21G;
import _1d9._Mm;

import _1i0._0Ie;
import _1i0._Q;
import _1i0._cz;
import _1i0._nB;

import _1oE._0bY;
import _1oE._cm;

import _1xN._1TQ;

import _R2._0LX;

import __Nj._0ay;

import _qd._1yE;

import _r7._17v;

import _rB._1P7;

import _vp._0VK;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;

import flash.utils.getTimer;

public class _0h0 extends _17v {

    public static function _0ro(_arg1:int):void {
        var _local2:int = getTimer();
        while (true) {
            if ((getTimer() - _local2) >= _arg1) break;
        }
        ;
    }
    [Inject]
    public var view:GameSprite;
    [Inject]
    public var _P7:_1gY;
    [Inject]
    public var _1Dx:_cz;
    [Inject]
    public var _09N:_nB;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var _04M:_Mm;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _1Df:_21G;
    [Inject]
    public var _aI:_12l;
    [Inject]
    public var _1Tk:_1Fn;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _1ZX:_1yE;
    [Inject]
    public var _177:_uR;
    [Inject]
    public var _0J:_07F;
    [Inject]
    public var _1fy:_gs;
    [Inject]
    public var _11H:_0Ie;
    [Inject]
    public var _1Gr:_mX;
    [Inject]
    public var _0ZK:_10z;
    [Inject]
    public var _0Ws:_CH;
    [Inject]
    public var _0nX:_1TQ;
    [Inject]
    public var _1m4:_1P7;
    [Inject]
    public var _0Cx:_1t5;
    [Inject]
    public var _0vV:_0VK;
    [Inject]
    public var _uO:_0bY;
    [Inject]
    public var _k:_0LX;

    override public function initialize():void {
        this._uO.dispatch();
        this.view._1m4 = this._1m4;
        this._P7.add(this._1GQ);
        _1p8(_0La.RECONNECT, this._1oQ);
        this.view._N3.add(this._1bS);
        this.view._0hh.add(this._05W);
        this._1fy.add(this._1LH);
        this._0vV.add(this._19C);
        this.view._1ZX.add(this._1P1);
        this.view.closed.add(this._0zc);
        this.view._aI = this._aI;
        this.view._1Tk = this._1Tk;
        this.view.connect();
        this._11H.dispatch("/gameStarted");
        this.view._0nX = this._0nX;
        this.view._7y.add(this._1KT);
        this._k.add(this._fk);
    }

    override public function destroy():void {
        this.view._7y.remove(this._1KT);
        this._P7.remove(this._1GQ);
        _5h(_0La.RECONNECT, this._1oQ);
        this.view._N3.remove(this._1bS);
        this.view._0hh.remove(this._05W);
        this._1fy.remove(this._1LH);
        this._1Gr.remove(this._1Ms);
        this._0ZK.remove(this._11J);
        this.view.closed.remove(this._0zc);
        this.view._1ZX.remove(this._1P1);
        this._k.remove(this._fk);
        this.view.disconnect();
    }

    public function _1GQ(_arg1:Boolean):void {
        this.view.mui_.setEnablePlayerInput(_arg1);
    }

    private function _1KT():void {
        var _local1:_0Vz = this._1m4._sf();
        if (_local1) {
            this._0Cx.dispatch(_local1.packageID);
        }
        ;
    }

    private function _1P1(_arg1:String, _arg2:int):void {
        this._1ZX._0J6(_arg1, _arg2);
    }

    private function _1Ms():void {
        this.view._UO();
    }

    private function _11J():void {
        this.view._1GB();
    }

    private function _0zc():void {
        this._1Df.dispatch();
        this.closeDialogs.dispatch();
        var _local1:_cm = _8w._1Sz().getInstance(_cm);
        _local1.dispatch();
        _0ro(100);
    }

    private function _1bS():void {
        this._177.dispatch(this.view);
        this._1Gr.add(this._1Ms);
        this._0ZK.add(this._11J);
        this._0Ws.dispatch();
    }

    private function _05W(_arg1:Player):void {
        this._0J.dispatch(_arg1);
    }

    private function _1LH():void {
        this.view._1fy();
    }

    private function _19C(_arg1:Boolean):void {
        this.view._1Ks(_arg1);
    }

    private function _fk():void {
        this.view._DW();
    }

    private function _1oQ(_arg1:_0La):void {
        if (this.view.isEditor) {
            return;
        }
        ;
        var _local2:_m = new _m();
        _local2.server = _arg1.server_;
        _local2.gameId = _arg1.gameId_;
        _local2._HG = _arg1._1HQ;
        _local2.charId = _arg1.charId_;
        _local2._00F = _arg1.keyTime_;
        _local2.key = _arg1.key_;
        _local2._01u = _arg1.isFromArena_;
        this._04M.dispatch(_local2);
    }


}
}//package _0no

