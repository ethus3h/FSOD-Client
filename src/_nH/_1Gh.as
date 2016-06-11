// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_nH._1Gh

package _nH {

import _04j._1g7;

import _0cA._0bz;

import _14._18r;
import _14._1oH;

import _1Fr._qf;

import _1TC._08E;

import _207._071;
import _207._0sk;

import _DO.GTween;

import __Nj._0ay;
import __Nj._M4;

import _eK._9W;

import _n._19y;

import _r7._17v;

import flash.events.MouseEvent;
import flash.events.TimerEvent;

public class _1Gh extends _17v {

    public static var _0jl:Number = -1;

    [Inject]
    public var container:_1IA;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _Vv:_0sk;
    [Inject]
    public var _1Mf:_071;
    public var _GZ:int = -1;
    public var _0Au:_9W;
    public var _0FI:_19y;
    public var _NW:_08E;
    private var view:_1eP;
    private var _0ae:_1eP;
    private var _1KM:Boolean = false;


    override public function initialize():void {
        if (this.container.parent == null) {
            return;
        }
        ;
        var _local1:Number = 0.2;
        if (((!((this.view == null))) && (!((this.view.parent == null))))) {
            this._tY();
            this._0ae = this.view;
            this.resetVars();
            new GTween(this._0ae, 0.4, {alpha: 0});
            new _1g7(0.4, this._0VT);
            _local1 = 0.4;
        }
        ;
        this.view = new _1eP();
        this.container.addChild(this.view);
        this.view.alpha = 0;
        new GTween(this.view, _local1, {alpha: 1});
        if (((((!((this._1b == null))) && (!((this._1b._1P == null))))) && (!((this._1b._1P.gsc_ == null))))) {
            this._NW = this._1b._1P.gsc_;
            this._NW.questFetch();
            this.view._14T(true);
        } else {
            this._0mM();
            return;
        }
        ;
        this._Vv.add(this._19G);
        this._1Mf.add(this._20V);
        _1eP.closed.add(this._0mM);
    }

    override public function destroy():void {
        this._tY();
    }

    private function _0jb():void {
        this._tY();
        this.initialize();
    }

    private function _0VT():void {
        if (((!((this._0ae == null))) && (!((this._0ae.parent == null))))) {
            this.container.removeChild(this._0ae);
        }
        ;
    }

    private function _0mM():void {
        _1eP.closed.removeAll();
        this._tY();
        this.closeDialogs.dispatch();
    }

    private function _19G(_arg1:_18r):void {
        this._GZ = int(_arg1.goal);
        var _local2:int = _arg1.tier;
        if (_local2 > 0) {
            this.view.init(int(_arg1.tier), this._GZ, _arg1.description, _arg1.image);
            this._1Pw();
        } else {
            if (_local2 == -1) {
                if (((!((this._0ae == null))) || (((!((_0jl == -1))) && ((_0jl == new Date().dayUTC)))))) {
                    this.view._do();
                    _0jl = new Date().dayUTC;
                } else {
                    this._0mM();
                }
                ;
            } else {
                this.view._215(_arg1.description);
            }
            ;
        }
        ;
    }

    private function _20V(_arg1:_1oH):void {
        var _local2:Boolean = Boolean(_arg1.ok);
        var _local3:String = String(_arg1.message);
        this._1KM = false;
        if (this._0FI != null) {
            this._0FI.addEventListener(MouseEvent.CLICK, this._IP);
            this._0FI._1UV();
            this._0FI._1Nq("OK");
            this._0FI._0cB(0x545454);
            this._0FI.draw();
            this._0Au._1Hj();
            this.view._1lI();
        }
        ;
    }

    private function _1Pw():void {
        this._0Au = this.view._In();
        this._0FI = this.view._W7();
        this._0Au._1Ul.remove(this._1P3);
        this._0Au._1Ul.add(this._1P3);
        this._0Au._0za.remove(this._Zd);
        this._0Au._0za.add(this._Zd);
        this._0FI.removeEventListener(MouseEvent.CLICK, this._WM);
        this._0FI.removeEventListener(MouseEvent.CLICK, this._IP);
    }

    private function _tY():void {
        this._Vv.remove(this._19G);
        this._1Mf.remove(this._19G);
        if (this._0Au != null) {
            this._0Au._1Ul.remove(this._1P3);
            this._0Au._0za.remove(this._Zd);
        }
        ;
        if (this._0FI != null) {
            this._0FI.removeEventListener(MouseEvent.CLICK, this._WM);
            this._0FI.removeEventListener(MouseEvent.CLICK, this._IP);
        }
        ;
    }

    private function resetVars():void {
        this._GZ = -1;
        this._0Au = null;
        this._0FI = null;
        this._GZ = -1;
        this._0Au = null;
        this._0FI = null;
        this._NW = null;
    }

    private function _1P3(_arg1:int):void {
        if (((!((this._0Au == null))) && (!(this._1KM)))) {
            if (_arg1 == this._GZ) {
                this._0FI.addEventListener(MouseEvent.CLICK, this._WM);
                this._0Au._0QF(false);
                this._0Au._02M = false;
                this._0Au.updateTitle();
            } else {
                this._0Au._3Z();
                this._0Au._0kO();
                this._0Au._0QF(true);
            }
            ;
        }
        ;
    }

    private function _Zd():void {
    }

    private function _1eI(_arg1:TimerEvent):void {
        if (Math.random() < 0.5) {
            this.view.init(1, 3205, "AAAAAAHHH we are in need of this {goal} now. Help help help.", "http://i.imgur.com/ceobPxd.png");
        } else {
            this.view.init(1, 1793, "WOAAH we are in need of this {goal} now. Help help.", "https://www.google.com/images/srpr/logo11w.png");
        }
        ;
    }

    private function _WM(_arg1:MouseEvent):void {
        if (this._NW != null) {
            this._0FI.removeEventListener(MouseEvent.CLICK, this._WM);
            this._0FI._1Nq("Tinkering");
            this._0FI._0cB(0x545454);
            this._0FI.draw();
            this._1KM = true;
            this._NW.questRedeem(this._0Au.objectId, this._0Au._0k, this._0Au.itemId);
            this.view._WM();
        }
        ;
    }

    private function _IP(_arg1:MouseEvent):void {
        this.initialize();
    }


}
}//package _nH

