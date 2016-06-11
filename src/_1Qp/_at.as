// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Qp._at

package _1Qp {
import _0cA._0bz;
import _0cA._0cp;

import _0vT.SsInternal;

import __00U._06U;
import __00U._0Or;
import __00U._0Sd;
import __00U._0qK;
import __00U._13u;
import __00U._1hl;
import __00U._7W;
import __00U._bq;

public class _at implements _039, _1iQ {

    public function _at(_arg1:_0bz, _arg2:Class, _arg3:String, _arg4:String) {
        this._Og = _arg1;
        this._1NF = _arg2;
        this._name = _arg3;
        this._0dO = _arg4;
        this._1fq = true;
        this._61(new _0Sd(_arg2));
    }
    private var _1NF:Class;
    private var _name:String;
    private var _0dO:String;
    private var _Og:_0bz;
    private var _1fq:Boolean;
    private var _0K4:_0bz;
    private var _iR:Boolean;
    private var _0BT:Boolean;
    private var _1sw:Boolean;
    private var _1Rp:Object;

    public function get _07u():Boolean {
        return (this._1sw);
    }

    public function _0MH():_1iQ {
        this._5Z(this._1NF);
        return (this);
    }

    public function _131(_arg1:Class):_1iQ {
        this._1Rt(new _0Sd(_arg1));
        return (this);
    }

    public function _5Z(_arg1:Class):_1iQ {
        this._1Rt(new _13u(_arg1, this._Og));
        return (this);
    }

    public function _nR(_arg1:Object):_1iQ {
        this._1Rt(new _bq(_arg1));
        return (this);
    }

    public function _1Rt(_arg1:_06U):_1iQ {
        ((this._1sw) && (this._1ui()));
        if (((((this._Gp()) && (!((_arg1 == null))))) && (!(this._1fq)))) {
            trace(((((("Warning: Injector already has a mapping for " + this._0dO) + ".\n ") + "If you have overridden this mapping intentionally you can use ") + '"injector.unmap()" prior to your replacement mapping in order to ') + "avoid seeing this message."));
            ((this._Og.hasEventListener(_Q0._0qV)) && (this._Og.dispatchEvent(new _Q0(_Q0._0qV, this._1NF, this._name, this))));
        }
        ;
        this._0RE();
        this._1fq = false;
        this._61(_arg1);
        this._1TI();
        return (this);
    }

    public function _0Pc():_039 {
        var _local1:_06U;
        ((this._1sw) && (this._1ui()));
        if (!this._iR) {
            _local1 = this._1BQ();
            this._0RE();
            this._iR = true;
            this._61(_local1);
            this._1TI();
        }
        ;
        return (this);
    }

    public function _p():_039 {
        ((this._1sw) && (this._1ui()));
        if (this._0BT) {
            return (this);
        }
        ;
        var _local1:_06U = this._1BQ();
        this._0RE();
        this._0BT = true;
        this._61(_local1);
        this._1TI();
        return (this);
    }

    public function _8C():Object {
        if (this._1sw) {
            throw (new _0cp("Mapping is already sealed."));
        }
        ;
        this._1sw = true;
        this._1Rp = {};
        return (this._1Rp);
    }

    public function _tr(_arg1:Object):_at {
        if (!this._1sw) {
            throw (new _0cp("Can't unseal a non-sealed mapping."));
        }
        ;
        if (_arg1 !== this._1Rp) {
            throw (new _0cp("Can't unseal mapping without the correct key."));
        }
        ;
        this._1sw = false;
        this._1Rp = null;
        return (this);
    }

    public function _Gp():Boolean {
        return (Boolean(this._Og.SsInternal::_c2[this._0dO]));
    }

    public function _1BQ():_06U {
        var _local1:_06U = this._Og.SsInternal::_c2[this._0dO];
        while ((_local1 is _7W)) {
            _local1 = _7W(_local1).provider;
        }
        ;
        return (_local1);
    }

    public function setInjector(_arg1:_0bz):_at {
        ((this._1sw) && (this._1ui()));
        if (_arg1 == this._0K4) {
            return (this);
        }
        ;
        var _local2:_06U = this._1BQ();
        this._0K4 = _arg1;
        this._61(_local2);
        return (this);
    }

    private function _61(_arg1:_06U):void {
        if (this._iR) {
            _arg1 = new _0Or(_arg1);
        }
        ;
        if (this._0BT) {
            _arg1 = new _1hl(_arg1);
        }
        ;
        if (this._0K4) {
            _arg1 = new _0qK(this._0K4, _arg1);
        }
        ;
        this._Og.SsInternal::_c2[this._0dO] = _arg1;
    }

    private function _1ui():void {
        throw (new _0cp("Can't change a sealed mapping"));
    }

    private function _0RE():void {
        ((this._Og.hasEventListener(_Q0._Nt)) && (this._Og.dispatchEvent(new _Q0(_Q0._Nt, this._1NF, this._name, this))));
    }

    private function _1TI():void {
        ((this._Og.hasEventListener(_Q0._0Cr)) && (this._Og.dispatchEvent(new _Q0(_Q0._0Cr, this._1NF, this._name, this))));
    }


}
}//package _1Qp

