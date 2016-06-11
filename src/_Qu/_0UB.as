// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Qu._0UB

package _Qu {
import _0cA._0bz;

import _1cr.*;

public class _0UB implements _Fv, _0VP {

    private static const _1ve:int = 0x0100;

    private const _1W7:Vector.<MessageCenterMapping> = new Vector.<MessageCenterMapping>(_1ve, true);
    private const _rl:Vector.<_1ff> = new Vector.<_1ff>(_1ve, true);

    private var _sk:_0bz;


    public function setInjector(_arg1:_0bz):_0UB {
        this._sk = _arg1;
        return (this);
    }

    public function map(_arg1:int):_cK {
        return ((this._1W7[_arg1] = ((this._1W7[_arg1]) || (this._1jl(_arg1)))));
    }

    public function _g(_arg1:int):void {
        ((this._rl[_arg1]) && (this._rl[_arg1].dispose()));
        this._rl[_arg1] = null;
        this._1W7[_arg1] = null;
    }

    public function _1SN(_arg1:int):_cx {
        var _local2:_1ff = (this._rl[_arg1] = ((this._rl[_arg1]) || (this._1gw(_arg1))));
        return (_local2._1SN());
    }

    private function _1jl(_arg1:int):MessageCenterMapping {
        return ((new MessageCenterMapping().setInjector(this._sk).setID(_arg1) as MessageCenterMapping));
    }

    private function _1gw(_arg1:uint):_1ff {
        var _local2:MessageCenterMapping = this._1W7[_arg1];
        return (((_local2) ? _local2._1gw() : null));
    }


}
}//package _Qu

