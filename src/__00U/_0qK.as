// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_00U._0qK

package __00U {
import _0cA._0bz;

import flash.utils.Dictionary;

public class _0qK extends _7W {

    public function _0qK(_arg1:_0bz, _arg2:_06U) {
        super(_arg2);
        this._sk = _arg1;
    }
    public var _sk:_0bz;

    override public function apply(_arg1:Class, _arg2:_0bz, _arg3:Dictionary):Object {
        return (provider.apply(_arg1, this._sk, _arg3));
    }


}
}//package _00U

