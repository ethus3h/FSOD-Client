// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._1KH

package _0hL {
import _1PM._hq;

public class _1KH {

    private const _1E3:String = "You can't change the guards and hooks on an existing mapping. Unmap first.";
    private const _iu:String = " The stacktrace for this error was stored at the time when you duplicated the mapping - you may have failed to add guards and hooks that were already present.";

    public function _1KH(_arg1:Array, _arg2:Array, _arg3, _arg4) {
        this._8E = _arg1;
        this._1Cl = _arg2;
        this._lQ = _arg3;
        this._fu = _arg4;
        super();
    }
    private var _8E:Array;
    private var _1Cl:Array;
    private var _lQ;
    private var _fu;
    private var _5o:_hq;
    private var _109:Boolean = false;

    public function get _0Rr():Boolean {
        return (this._109);
    }

    public function _1Dx():void {
        this._109 = false;
        this._5o = new _hq((this._1E3 + this._iu), this._lQ, this._fu);
    }

    public function _1g1(_arg1:Array, _arg2:Array):void {
        if (((!(this._Z8(this._8E, _arg1))) || (!(this._Z8(this._1Cl, _arg2))))) {
            ((this._13H()) || (this._hF()));
        }
        ;
        this._109 = true;
        this._5o = null;
    }

    public function _0aI(_arg1:Array):void {
        if (this._04R(this._8E, _arg1)) {
            this._hF();
        }
        ;
    }

    public function _tc(_arg1:Array):void {
        if (this._04R(this._1Cl, _arg1)) {
            this._hF();
        }
        ;
    }

    public function _0VJ(_arg1:Array):Array {
        var _local3:*;
        var _local2:Array = [];
        for each (_local3 in _arg1) {
            if ((_local3 is Array)) {
                _local2 = _local2.concat(this._0VJ((_local3 as Array)));
            } else {
                _local2.push(_local3);
            }
            ;
        }
        ;
        return (_local2);
    }

    private function _04R(_arg1:Array, _arg2:Array):Boolean {
        var _local3:*;
        _arg2 = this._0VJ(_arg2);
        for each (_local3 in _arg2) {
            if (_arg1.indexOf(_local3) == -1) {
                return (true);
            }
            ;
        }
        ;
        return (false);
    }

    private function _Z8(_arg1:Array, _arg2:Array):Boolean {
        var _local3:int;
        _arg1 = _arg1.slice();
        if (_arg1.length != _arg2.length) {
            return (false);
        }
        ;
        var _local4:uint = _arg2.length;
        var _local5:uint;
        while (_local5 < _local4) {
            _local3 = _arg1.indexOf(_arg2[_local5]);
            if (_local3 == -1) {
                return (false);
            }
            ;
            _arg1.splice(_local3, 1);
            _local5++;
        }
        ;
        return (true);
    }

    private function _hF():void {
        throw (new _hq(this._1E3, this._lQ, this._fu));
    }

    private function _13H():Boolean {
        if (this._5o) {
            throw (this._5o);
        }
        ;
        return (false);
    }


}
}//package _0hL

