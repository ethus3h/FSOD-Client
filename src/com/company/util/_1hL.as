// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util._1hL

package com.company.util {
public class _1hL {

    public function _1hL() {
        this.clear();
    }
    public var _1a7:Number;
    public var _12O:Number;
    public var _by:Number;
    public var _QD:Number;

    public function add(_arg1:Number, _arg2:Number):void {
        if (_arg1 < this._1a7) {
            this._1a7 = _arg1;
        }
        ;
        if (_arg2 < this._12O) {
            this._12O = _arg2;
        }
        ;
        if (_arg1 > this._by) {
            this._by = _arg1;
        }
        ;
        if (_arg2 > this._QD) {
            this._QD = _arg2;
        }
        ;
    }

    public function clear():void {
        this._1a7 = Number.MAX_VALUE;
        this._12O = Number.MAX_VALUE;
        this._by = Number.MIN_VALUE;
        this._QD = Number.MIN_VALUE;
    }

    public function toString():String {
        return ((((((((("min:(" + this._1a7) + ", ") + this._12O) + ") max:(") + this._by) + ", ") + this._QD) + ")"));
    }


}
}//package com.company.util

