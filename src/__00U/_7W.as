// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_00U._7W

package __00U {
import _0cA._0bz;

import flash.utils.Dictionary;

public class _7W implements _06U {

    public function _7W(_arg1:_06U) {
        this.provider = _arg1;
    }
    public var provider:_06U;

    public function apply(_arg1:Class, _arg2:_0bz, _arg3:Dictionary):Object {
        return (this.provider.apply(_arg1, _arg2, _arg3));
    }

    public function destroy():void {
        this.provider.destroy();
    }


}
}//package _00U

