// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._Ig

package _0hL {
import _1PM.*;

import flash.utils.getTimer;

public class _Ig implements _1YQ {

    public function _Ig(_arg1:Object, _arg2:_041) {
        this._1c9 = _arg1;
        this._0O = _arg2;
    }
    private var _1c9:Object;
    private var _0O:_041;

    public function debug(_arg1, _arg2:Array = null):void {
        this._0O.log(this._1c9, 32, getTimer(), _arg1, _arg2);
    }

    public function info(_arg1, _arg2:Array = null):void {
        this._0O.log(this._1c9, 16, getTimer(), _arg1, _arg2);
    }

    public function _1Sh(_arg1, _arg2:Array = null):void {
        this._0O.log(this._1c9, 8, getTimer(), _arg1, _arg2);
    }

    public function error(_arg1, _arg2:Array = null):void {
        this._0O.log(this._1c9, 4, getTimer(), _arg1, _arg2);
    }

    public function _Gq(_arg1, _arg2:Array = null):void {
        this._0O.log(this._1c9, 2, getTimer(), _arg1, _arg2);
    }


}
}//package _0hL

