// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._oL

package _0od {
import _04g._AJ;

import _0CT._8w;

import _0Ql._0q;

import _0tf._0yo;

import _1PE.Account;

import _1Sm._sy;

import _1l6._0Dr;

import __Nj._0ay;

import _n._0se;

import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.utils.Timer;

public class _oL extends _AJ {

    public function _oL(_arg1:Account, _arg2:Number) {
        this._wF = new Timer(2000, 0);
        super(500, 220, "Maintenance Needed");
        this._0Gn = false;
        _wl((("Press OK to begin maintenance on \n\n" + _arg1._02H()) + "\n\nor cancel to login with a different account"), true);
        this._Xw("Cancel");
        this._02O("OK");
        this.account = _arg1;
        this.status = _arg2;
        this.client = _8w._1Sz().getInstance(_0yo);
        this._1tY = new _0q(this._01h, MouseEvent.CLICK);
        cancel = new _0q(this._4j, MouseEvent.CLICK);
        this._9S = new _sy();
        this._1tY.addOnce(this._1iR);
        this._9S.addOnce(this._1V4);
        cancel.addOnce(this._08c);
        cancel.addOnce(this._1V4);
    }
    public var _9S:_sy;
    protected var _4j:_0se;
    protected var _01h:_0se;
    private var _1tY:_sy;
    private var account:Account;
    private var client:_0yo;
    private var _cC:_0yo;
    private var _16D:Number = 0;
    private var total:Number = 100;
    private var _ht:_lk;
    private var _wF:Timer;
    private var status:Number = 0;
    private var _0Gn:Boolean;

    private function _1iR():void {
        var _local1:Object;
        this._01h.setEnabled(false);
        if (this.status == 1) {
            _local1 = this.account._1iT();
            this.client.complete.addOnce(this._1Y2);
            this.client.sendRequest("/migrate/doMigration", _local1);
        }
        ;
    }

    private function _DX():void {
        this._wF.addEventListener(TimerEvent.TIMER, this._1yB);
        if (this._cC == null) {
            this._cC = _8w._1Sz().getInstance(_0Dr);
        }
        ;
        this._wF.start();
        this._yb(0);
    }

    private function _1tL():void {
        this._yb(100);
        this._wF.stop();
        this._wF.removeEventListener(TimerEvent.TIMER, this._1yB);
    }

    private function _0oh(_arg1:Boolean, _arg2):void {
        var _local3:XML;
        var _local4:String;
        var _local5:Number;
        var _local6:Number;
        if (_arg1) {
            if (this._0Gn == true) {
                return;
            }
            ;
            _local3 = new XML(_arg2);
            if (_local3.hasOwnProperty("Percent")) {
                _local4 = _local3.Percent;
                _local5 = Number(_local4);
                if (_local5 == 100) {
                    if (this._0Gn == false) {
                        this._1tL();
                        this._yb(_local5);
                        this._9S.dispatch();
                    }
                    ;
                } else {
                    if (_local5 != this._16D) {
                        this._yb(_local5);
                    }
                    ;
                }
                ;
            } else {
                if (_local3.hasOwnProperty("MigrateStatus")) {
                    _local6 = _local3.MigrateStatus;
                    if (_local6 == 44) {
                        this._1tL();
                        this.reset();
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }

    private function _yb(_arg1:Number):void {
        this._ht.update(_arg1);
        this._16D = _arg1;
        _wl((("" + _arg1) + "%"), true);
    }

    private function _1Y2(_arg1:Boolean, _arg2):void {
        var _local3:XML;
        var _local4:Number;
        if (this._0Gn) {
            return;
        }
        ;
        if (_arg1) {
            _local3 = new XML(_arg2);
            if (_local3.hasOwnProperty("MigrateStatus")) {
                _local4 = _local3.MigrateStatus;
                if (_local4 == 44) {
                    this._1tL();
                    this.reset();
                } else {
                    if (_local4 == 4) {
                        this._Oe();
                        setTitle("Migration In Progress", true);
                        this._DX();
                    } else {
                        this._1tL();
                        this.reset();
                    }
                    ;
                }
                ;
            }
            ;
        } else {
            this._1tL();
            this.reset();
        }
        ;
    }

    private function reset():void {
        setTitle("Error, please try again. Maintenance needed", true);
        _wl((("Press OK to begin maintenance on \n\n" + this.account._02H()) + "\n\nor cancel to login with a different account"), true);
        this._kX();
        this._1tY.addOnce(this._1iR);
        this._01h.setEnabled(true);
    }

    private function _Oe():void {
        var _local2:Number;
        this._kX();
        var _local1:Number = _Uk;
        _local2 = (_ZZ / 3);
        var _local3:Number = (_0JX - (_local1 * 2));
        var _local4:Number = 40;
        this._ht = new _lk(_local3, _local4);
        addChild(this._ht);
        this._ht.x = _local1;
        this._ht.y = _local2;
    }

    private function _kX():void {
        if (((!((this._ht == null))) && (!((this._ht.parent == null))))) {
            removeChild(this._ht);
        }
        ;
    }

    private function _08c():void {
        this._9S.removeAll();
    }

    private function _1V4():void {
        this._0Gn = true;
        var _local1:_0ay = _8w._1Sz().getInstance(_0ay);
        _local1.dispatch();
    }

    private function _Xw(_arg1:String):void {
        this._4j = new _0se(_arg1);
        if (_arg1 != "") {
            this._4j.buttonMode = true;
            addChild(this._4j);
            this._4j.x = (((_0JX / 2) - 100) - this._4j.width);
            this._4j.y = (_ZZ - 50);
        }
        ;
    }

    private function _02O(_arg1:String):void {
        this._01h = new _0se(this._4j.text.text);
        this._01h._1UV();
        this._01h._1Nq(_arg1);
        if (_arg1 != "") {
            this._01h.buttonMode = true;
            addChild(this._01h);
            this._01h.x = ((_0JX / 2) + 100);
            this._01h.y = (_ZZ - 50);
        }
        ;
    }

    private function _1yB(_arg1:TimerEvent):void {
        var _local2:Object = this.account._1iT();
        this._cC.complete.addOnce(this._0oh);
        this._cC.sendRequest("/migrate/progress", _local2);
    }


}
}//package _0od

