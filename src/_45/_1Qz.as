// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_45._1Qz

package _45 {
import _04g._GE;

import _07g._0Ek;

import _0N._I7;

import _0cA._0bz;

import _1E._03e;

import _1PE.Account;

import _1TC._08E;

import _1cr._0VP;

import _1d9._pF;

import _1f4.ArenaPortalPanel;

import _1fG._null;

import _1ik._f0;

import _6u._TG;

import _Qu._en;

import _Vb.Dialog;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

import com.company.assembleegameclient.util.Currency;

import flash.events.Event;

public class _1Qz extends _17v {

    public static const TEXT:String = "SellableObjectPanelMediator.text";

    [Inject]
    public var view:ArenaPortalPanel;
    [Inject]
    public var _0Je:_en;
    [Inject]
    public var _1Zi:_0VP;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _Zs:_03e;
    [Inject]
    public var _0Xz:_f0;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _qc:_pF;
    [Inject]
    public var account:Account;
    private var _16Y:Dialog;


    override public function initialize():void {
        this.view._dA.add(this._fd);
    }

    private function _fd(_arg1:int):void {
        if ((_arg1 == Currency._1mE)) {
            this._0V();
        } else {
            this._0Re();
        }
        ;
    }

    private function _0Re():void {
        var _local1:_null;
        var _local2:_I7;
        if (this._Zs.player._0LC) {
            this._0Xz._1gz();
            _local1 = this._sk.getInstance(null);
            _local1.start();
            _local2 = (this._1Zi._1SN(_08E.ENTER_ARENA) as _I7);
            _local2.currency = Currency.FAME;
            this._0Je.sendMessage(_local2);
            this._qc.dispatch();
        } else {
            this._16Y = new Dialog(_TG._1UF, _TG._nC, _TG._0oW, null, null);
            this._16Y.addEventListener(Dialog.LEFT_BUTTON, this._0Hf);
            this._nU.dispatch(this._16Y);
        }
        ;
    }

    private function _0V():void {
        var _local1:_null;
        var _local2:_I7;
        if (!this.account._vD()) {
            this._nU.dispatch(new _GE(TEXT, {type: Currency._1sg(Currency._1mE)}));
        } else {
            if (!this._Zs.player._0LC) {
                this._16Y = new Dialog(_TG._1UF, _TG._nC, _TG._0oW, null, null);
                this._16Y.addEventListener(Dialog.LEFT_BUTTON, this._0Hf);
                this._nU.dispatch(this._16Y);
            } else {
                if (this._Zs.player.credits_ < 50) {
                    this._nU.dispatch(new _0Ek());
                } else {
                    this._0Xz._1gz();
                    _local1 = this._sk.getInstance(_null);
                    _local1.start();
                    _local2 = (this._1Zi._1SN(_08E.ENTER_ARENA) as _I7);
                    _local2.currency = Currency._1mE;
                    this._0Je.sendMessage(_local2);
                    this._qc.dispatch();
                }
                ;
            }
            ;
        }
        ;
    }

    private function _0Hf(_arg1:Event):void {
        if (((this._16Y) && (this._16Y.hasEventListener(Dialog.LEFT_BUTTON)))) {
            this._16Y.removeEventListener(Dialog.LEFT_BUTTON, this._0Hf);
        }
        ;
        this._16Y = null;
        this._00G.dispatch();
    }


}
}//package _45

