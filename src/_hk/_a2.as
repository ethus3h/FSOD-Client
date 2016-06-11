// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_hK._a2

package _hk {
import _1fY.Description;
import _1fY._0d1;

import flash.utils.getQualifiedClassName;

public class _a2 extends _0d1 {

    public function _a2(_arg1:Class) {
        _1NF = _arg1;
        _aK = getQualifiedClassName(_arg1);
    }
    private var _aK:String;
    private var _1NF:Class;

    override public function describeTo(_arg1:Description):void {
        _arg1.appendText("an instance of ").appendText(_aK);
    }

    override public function matches(_arg1:Object):Boolean {
        return ((_arg1 is _1NF));
    }


}
}//package _hK

