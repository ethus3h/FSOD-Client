// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._1cY

package _0hL {
import _1HX._0o6;
import _1HX._Xs;

import _1PM._1YQ;
import _1PM._Ld;

import flash.utils.Dictionary;

public class _1cY {

    private const _01p:String = _1As.create(_1cY);
    private const _02W:Dictionary = new Dictionary(true);
    private const _0A0:_0o6 = new _Xs();

    public function _1cY(_arg1:_Ld) {
        this._0rd = _arg1;
        this._0gD = this._0rd._F4(this);
    }
    private var _0rd:_Ld;
    private var _0gD:_1YQ;

    public function _6T(_arg1:Object):void {
        var _local2:Class;
        if ((_arg1 is Class)) {
            ((this._02W[_arg1]) || (this._6T(new ((_arg1 as Class))())));
        } else {
            _local2 = this._0A0._0KT(_arg1);
            if (this._02W[_local2]) {
                return;
            }
            ;
            this._0gD.debug("Installing extension {0}", [_arg1]);
            this._02W[_local2] = true;
            _arg1.extend(this._0rd);
        }
        ;
    }

    public function toString():String {
        return (this._01p);
    }


}
}//package _0hL

