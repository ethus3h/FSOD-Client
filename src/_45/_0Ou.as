// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_45._0Ou

package _45 {
import _0yE._110;
import _0yE._2P;
import _0yE._J6;

import _10a._12l;
import _10a._FU;

import _1CB._S1;

import _1E._1ne;

import _1Fr._1IN;
import _1Fr._qf;

import _1L3._0xm;

import _1TC._08E;

import _1i0._1PV;

import _1qi._1K8;
import _1qi._1p4;
import _1qi._ry;

import _MU._0t5;

import _Z0.ToolTip;

import _eK._9W;

import _gl._0An;

import _nH._1eP;

import _r7._17v;

import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.objects.Container;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.OneWayContainer;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util._bp;

public class _0Ou extends _17v {

    [Inject]
    public var view:_1K8;
    [Inject]
    public var _aI:_12l;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _0eE:_1ne;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _Hn:_1IN;
    [Inject]
    public var showToolTip:_1PV;
    [Inject]
    public var _Iv:_0xm;


    override public function initialize():void {
        this.view.addEventListener(_110.ITEM_MOVE, this._1dW);
        this.view.addEventListener(_110.ITEM_SHIFT_CLICK, this._0wr);
        this.view.addEventListener(_110.ITEM_DOUBLE_CLICK, this._Yy);
        this.view.addEventListener(_110.ITEM_CTRL_CLICK, this._09U);
        this.view._HF.add(this._0B0);
    }

    override public function destroy():void {
        super.destroy();
    }

    private function _0B0(_arg1:ToolTip):void {
        this.showToolTip.dispatch(_arg1);
    }

    private function _Ey(_arg1:_J6):Function {
        var itemSlot:_J6 = _arg1;
        return (function ():void {
            itemSlot.blockingItemUpdates = false;
        });
    }

    private function _nT(_arg1:_J6):void {
        if (((((((!(_08E._a9)) || (!(this.view._1Ug)))) || (!(_arg1)))) || ((this._0eE._9s(_arg1._mJ())._0al <= this._1b._1P.map.player_.getPotionCount(_arg1._mJ()))))) {
            return;
        }
        ;
        _08E._a9.invSwapPotion(this.view.curPlayer, this.view.owner, _arg1._1lz, _arg1._Vc.itemId, this.view.curPlayer, _1ne._1Kn(_arg1._mJ()), _0An._5v);
        _arg1.setItem(_0An._5v);
        _arg1._0IB(this.view.curPlayer);
    }

    private function _1BT(_arg1:_J6, _arg2:_J6):Boolean {
        if (!_arg1.canHoldItem(_arg2._mJ())) {
            return (false);
        }
        ;
        if (!_arg2.canHoldItem(_arg1._mJ())) {
            return (false);
        }
        ;
        if ((_1K8(_arg2.parent).owner is OneWayContainer)) {
            return (false);
        }
        ;
        if (((_arg1.blockingItemUpdates) || (_arg2.blockingItemUpdates))) {
            return (false);
        }
        ;
        return (true);
    }

    private function _0yr(_arg1:_J6):void {
        var _local4:Container;
        var _local5:Vector.<int>;
        var _local6:int;
        var _local7:int;
        var _local2:Boolean = ObjectLibrary._i(_arg1._Vc.itemId);
        var _local3:Container = (this.view.owner as Container);
        if ((((this.view.owner == this.view.curPlayer)) || (((((_local3) && ((_local3.ownerId_ == this.view.curPlayer.accountId_)))) && (!(_local2)))))) {
            _local4 = (this._aI._O1 as Container);
            if (_local4) {
                _local5 = _local4._0Z;
                _local6 = _local5.length;
                _local7 = 0;
                while (_local7 < _local6) {
                    if (_local5[_local7] < 0) {
                        break;
                    }
                    ;
                    _local7++;
                }
                ;
                if (_local7 < _local6) {
                    this._0Hm(_arg1, _local4, _local7);
                } else {
                    _08E._a9.invDrop(this.view.owner, _arg1._1lz, _arg1._mJ());
                }
                ;
            } else {
                _08E._a9.invDrop(this.view.owner, _arg1._1lz, _arg1._mJ());
            }
            ;
        }
        ;
        _arg1.setItem(-1);
    }

    private function _Kc(_arg1:_2P, _arg2:_2P):Boolean {
        if (((((((!(_08E._a9)) || (!(this.view._1Ug)))) || (!(_arg1)))) || (!(_arg2)))) {
            return (false);
        }
        ;
        _08E._a9.invSwap(this.view.curPlayer, this.view.owner, _arg1._1lz, _arg1._Vc.itemId, _arg2._1A8.owner, _arg2._1lz, _arg2._Vc.itemId);
        var _local3:int = _arg1._mJ();
        _arg1.setItem(_arg2._mJ());
        _arg2.setItem(_local3);
        _arg1._0IB(this.view.curPlayer);
        _arg2._0IB(this.view.curPlayer);
        return (true);
    }

    private function _0Hm(_arg1:_2P, _arg2:Container, _arg3:int):void {
        if (((((((!(_08E._a9)) || (!(this.view._1Ug)))) || (!(_arg1)))) || (!(_arg2)))) {
            return;
        }
        ;
        _08E._a9.invSwap(this.view.curPlayer, this.view.owner, _arg1._1lz, _arg1._Vc.itemId, _arg2, _arg3, -1);
        _arg1.setItem(_0An._5v);
    }

    private function _1Hv(_arg1:_J6):Boolean {
        return ((((_arg1._mJ() == _1ne._0ip)) || ((_arg1._mJ() == _1ne._0Kh))));
    }

    private function _1ZM(_arg1:_J6):void {
        var _local2:int = this.view.curPlayer.nextAvailableInventorySlot();
        if (_local2 != -1) {
            _08E._a9.invSwap(this.view.curPlayer, this.view.owner, _arg1._1lz, _arg1._Vc.itemId, this.view.curPlayer, _local2, _0An._5v);
        }
        ;
    }

    private function _1Ek(_arg1:_J6):void {
        var _local2:GameObject = _arg1._1A8.owner;
        var _local3:Player = this.view.curPlayer;
        var _local4:int = this.view.curPlayer.nextAvailableInventorySlot();
        if (_local4 != -1) {
            _08E._a9.invSwap(_local3, this.view.owner, _arg1._1lz, _arg1._Vc.itemId, this.view.curPlayer, _local4, _0An._5v);
        } else {
            _08E._a9.useItem_new(_local2, _arg1._1lz);
        }
        ;
    }

    private function _1RA(_arg1:_J6):void {
        var _local2:GameObject = _arg1._1A8.owner;
        var _local3:Player = this.view.curPlayer;
        var _local4:int = ObjectLibrary._1Dt(_arg1._mJ(), _local3);
        if (_local4 != -1) {
            _08E._a9.invSwap(_local3, _local2, _arg1._1lz, _arg1._mJ(), _local3, _local4, _local3._0Z[_local4]);
        } else {
            _08E._a9.useItem_new(_local2, _arg1._1lz);
        }
        ;
    }

    private function _1dW(_arg1:_110):void {
        var _local4:_J6;
        var _local5:_S1;
        var _local6:int;
        var _local7:_0t5;
        var _local8:_9W;
        var _local9:_1eP;
        var _local10:int;
        var _local2:_J6 = _arg1.tile;
        var _local3:* = _bp._0Wy(_local2._76(), _S1, _J6, _0t5, _1eP, Map);
        if ((((_local2._mJ() == _1ne._0ip)) || ((((_local2._mJ() == _1ne._0Kh)) && (!(Boolean((_local3 as _0t5)))))))) {
            this._004(_arg1);
            return;
        }
        ;
        if ((_local3 is _J6)) {
            _local4 = (_local3 as _J6);
            if (this._1BT(_local2, _local4)) {
                this._Kc(_local2, _local4);
            }
            ;
        } else {
            if ((_local3 is _S1)) {
                _local5 = (_local3 as _S1);
                _local6 = _local2._1A8.curPlayer.nextAvailableInventorySlot();
                if (_local6 != -1) {
                    _08E._a9.invSwap(this.view.curPlayer, _local2._1A8.owner, _local2._1lz, _local2._Vc.itemId, this.view.curPlayer, _local6, _0An._5v);
                    _local2.setItem(_0An._5v);
                    _local2._0IB(this.view.curPlayer);
                }
                ;
            } else {
                if ((((_local3 is _0t5)) || ((_local3 is _1eP)))) {
                    if ((_local3 is _9W)) {
                        _local8 = (_local3 as _9W);
                        _local7 = (_local3 as _0t5);
                    } else {
                        if ((_local3 is _1eP)) {
                            _local9 = (_local3 as _1eP);
                            _local7 = (_local9._In() as _0t5);
                        } else {
                            _local7 = (_local3 as _0t5);
                        }
                        ;
                    }
                    ;
                    if (((!(_local7._hL)) && (!(((!((_local8 == null))) && (!(_local8._0Vx))))))) {
                        this._Iv._Ux = _local2._1lz;
                        this._Iv._1N0 = _local2._1A8.owner.objectId_;
                        _local10 = _local2._mJ();
                        _local7.setItem(_local10, _local2._1lz, _local2._1A8.owner.objectId_, this._Ey(_local2));
                        _local2.setItem(_0An._5v);
                        _local2.blockingItemUpdates = true;
                        _local2._0IB(this.view.curPlayer);
                        _local7._1WY(_local10);
                    }
                    ;
                } else {
                    if ((((_local3 is Map)) || ((this._1b._1P.map.mouseX < 300)))) {
                        this._0yr(_local2);
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        _local2._1iF();
    }

    private function _004(_arg1:_110):void {
        var _local2:_J6 = _arg1.tile;
        var _local3:* = _bp._0Wy(_local2._76(), _S1, Map);
        if ((_local3 is _S1)) {
            this._nT(_local2);
        } else {
            if ((((_local3 is Map)) || ((this._1b._1P.map.mouseX < 300)))) {
                this._0yr(_local2);
            }
            ;
        }
        ;
        _local2._1iF();
    }

    private function _0wr(_arg1:_110):void {
        var _local2:_J6 = _arg1.tile;
        if ((((_local2._1A8 is _ry)) || ((_local2._1A8 is _1p4)))) {
            _08E._a9.useItem_new(_local2._1A8.owner, _local2._1lz);
        }
        ;
    }

    private function _09U(_arg1:_110):void {
        var _local2:_J6;
        var _local3:int;
        if (Parameters.data_.inventorySwap) {
            _local2 = _arg1.tile;
            if ((_local2._1A8 is _ry)) {
                _local3 = _local2._1A8.curPlayer.swapInventoryIndex(this._Hn._1C6);
                if (_local3 != -1) {
                    _08E._a9.invSwap(this.view.curPlayer, _local2._1A8.owner, _local2._1lz, _local2._Vc.itemId, this.view.curPlayer, _local3, _0An._5v);
                    _local2.setItem(_0An._5v);
                    _local2._0IB(this.view.curPlayer);
                }
                ;
            }
            ;
        }
        ;
    }

    private function _Yy(_arg1:_110):void {
        var _local2:_J6 = _arg1.tile;
        if (this._1Hv(_local2)) {
            this._nT(_local2);
        } else {
            if ((_local2._1A8 is _1p4)) {
                this._1Ek(_local2);
            } else {
                this._1RA(_local2);
            }
            ;
        }
        ;
        this.view._0Mp();
    }


}
}//package _45

