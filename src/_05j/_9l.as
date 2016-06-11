// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j._9l

package _05j {
import _04g._GE;

import _085._LQ;

import _0hi._1JC;

import _1Fr._qf;

import _1PE.Account;

import _6u._TG;

import _Kt._1SB;
import _Kt._1Wa;

import __Nj._0ay;
import __Nj._M4;

import _md._0AH;
import _md._1tJ;
import _md._J4;

import _r7._17v;

import flash.display.Sprite;
import flash.display.Stage;
import flash.events.Event;
import flash.events.KeyboardEvent;

public class _9l extends _17v {

    private static const _0r1:int = 10;

    [Inject]
    public var view:Chat;
    [Inject]
    public var model:_0AH;
    [Inject]
    public var account:Account;
    [Inject]
    public var _Sl:_J4;
    [Inject]
    public var _1JV:_1Wa;
    [Inject]
    public var _0rV:_1SB;
    [Inject]
    public var _1Zq:_1tJ;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var register:_1JC;
    private var stage:Stage;
    private var _0xh:int;
    private var _fP:int;
    private var _156:Boolean = false;


    override public function initialize():void {
        this.view.x = this.model._5m.left;
        this.view.y = this.model._5m.top;
        this.view.setup(this.model, this.account._vD());
        this.stage = this.view.stage;
        this._V();
        this._1JV.add(this._0yX);
        this._nU.add(this._Xb);
        this._00G.add(this._LK);
        this.register.add(this._jy);
    }

    override public function destroy():void {
        this._0eP();
        this._1JV.remove(this._0yX);
        this._nU.remove(this._Xb);
        this._00G.remove(this._LK);
        this.stage = null;
    }

    private function _Xb(_arg1:Sprite):void {
        this._0eP();
    }

    private function _LK():void {
        this._V();
    }

    private function _0yX(_arg1:Boolean, _arg2:String):void {
        if (_arg1) {
            this.stage.focus = this.view;
            this._156 = false;
        } else {
            this._V();
            this.stage.focus = null;
        }
        ;
    }

    private function _jy(_arg1:_LQ):void {
        if (_arg1.error == null) {
            this.view._1If();
        }
        ;
    }

    private function _V():void {
        if (!this._156) {
            this.stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
            this.stage.addEventListener(KeyboardEvent.KEY_UP, this._1Gn);
            this._156 = true;
        }
        ;
    }

    private function _0eP():void {
        if (this._156) {
            this.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
            this.stage.removeEventListener(KeyboardEvent.KEY_UP, this._1Gn);
            this.stage.removeEventListener(Event.ENTER_FRAME, this._Lt);
            this._156 = false;
        }
        ;
    }

    private function _1af(_arg1:int):void {
        this._0xh = _arg1;
        this._0rV.dispatch(_arg1);
        this._fP = 0;
        this.view.addEventListener(Event.ENTER_FRAME, this._Lt);
    }

    private function _0Dy(_arg1:uint):void {
        if ((((this.stage.focus == null)) || ((_arg1 == this._Sl._u7())))) {
            if (_arg1 == this._Sl._01c()) {
                this._1CP("/");
            } else {
                if (_arg1 == this._Sl._0XN()) {
                    this._1CP("");
                } else {
                    if (_arg1 == this._Sl._VL()) {
                        this._1CP("/g ");
                    } else {
                        if (_arg1 == this._Sl._u7()) {
                            this._1CP((("/tell " + this._1Zq._04l()) + " "));
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }

    private function _1CP(_arg1:String):void {
        if (this.account._vD()) {
            this._1JV.dispatch(true, _arg1);
        } else {
            if (((!((this._1b._1P == null))) && (this._1b._1P.evalIsNotInCombatMapArea()))) {
                this._nU.dispatch(new _GE(_TG._0h1));
            }
            ;
        }
        ;
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if (_arg1.keyCode == this._Sl._0ZF()) {
            this._1af(-1);
        } else {
            if (_arg1.keyCode == this._Sl._0Ww()) {
                this._1af(1);
            }
            ;
        }
        ;
    }

    private function _Lt(_arg1:Event):void {
        if (this._fP++ >= _0r1) {
            this._0rV.dispatch(this._0xh);
        }
        ;
    }

    private function _1Gn(_arg1:KeyboardEvent):void {
        if (this._156) {
            this._0Dy(_arg1.keyCode);
        }
        ;
        if ((((_arg1.keyCode == this._Sl._0ZF())) || ((_arg1.keyCode == this._Sl._0Ww())))) {
            this.view.removeEventListener(Event.ENTER_FRAME, this._Lt);
        }
        ;
    }


}
}//package _05j

