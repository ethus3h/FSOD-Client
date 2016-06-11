// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util._0xu

package com.company.util {
public class _0xu implements _1xs {

    public function _0xu(_arg1:Array) {
        this._GW = _arg1;
        this._1U1 = 0;
    }
    private var _GW:Array;
    private var _1U1:int;

    public function reset():void {
        this._1U1 = 0;
    }

    public function next():Object {
        return (this._GW[this._1U1++]);
    }

    public function _1cA():Boolean {
        return ((this._1U1 < this._GW.length));
    }


}
}//package com.company.util

