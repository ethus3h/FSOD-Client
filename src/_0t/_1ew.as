// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1ew

package _0t {
import _0tk._0Jw;
import _0tk._1k5;
import _0tk._Tv;

import com.company.util._1N;

public class _1ew extends _Tv {

    public static const _04X:int = 0;
    public static const _0AZ:int = 1;
    public static const _f1:int = 2;
    public static const _01t:int = 3;
    public static const _1lh:int = 4;
    public static const _X5:int = 5;
    public static const _1yX:int = 6;
    public static const _0t4:int = 7;

    public function _1ew() {
        _T5("(D)raw", _1N.D, this.select, _0AZ);
        _T5("(E)rase", _1N.E, this.select, _f1);
        _T5("S(A)mple", _1N.A, this.select, _01t);
        _T5("Ed(I)t", _1N.I, this.select, _1lh);
        _T5("(U)ndo", _1N.U, this._1vI, _04X);
        _T5("(R)edo", _1N.R, this._0ZO, _04X);
        _T5("(C)lear", _1N.C, this._1tF, _04X);
        _T5("Cut", -1, this.select, _X5);
        _T5("Copy", -1, this.select, _1yX);
        _T5("Paste", -1, this.select, _0t4);
        _T5("(L)oad", _1N.L, this._093, _04X);
        _T5("(S)ave", _1N.S, this._in, _04X);
        _T5("(T)est", _1N.T, this._TE, _04X);
    }

    private function select(_arg1:_0Jw):void {
        setSelected(_arg1);
        dispatchEvent(new _1k5(_1k5.SELECT_COMMAND_EVENT));
    }

    private function _1vI(_arg1:_0Jw):void {
        dispatchEvent(new _1k5(_1k5.UNDO_COMMAND_EVENT));
    }

    private function _0ZO(_arg1:_0Jw):void {
        dispatchEvent(new _1k5(_1k5.REDO_COMMAND_EVENT));
    }

    private function _1tF(_arg1:_0Jw):void {
        dispatchEvent(new _1k5(_1k5.CLEAR_COMMAND_EVENT));
    }

    private function _093(_arg1:_0Jw):void {
        dispatchEvent(new _1k5(_1k5.LOAD_COMMAND_EVENT));
    }

    private function _in(_arg1:_0Jw):void {
        dispatchEvent(new _1k5(_1k5.SAVE_COMMAND_EVENT));
    }

    private function _TE(_arg1:_0Jw):void {
        dispatchEvent(new _1k5(_1k5.TEST_COMMAND_EVENT));
    }


}
}//package _0t-

