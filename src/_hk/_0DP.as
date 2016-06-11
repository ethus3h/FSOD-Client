// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_hK._0DP

package _hk {
import _1fY.Description;
import _1fY._0d1;

public class _0DP extends _0d1 {

    public function _0DP(_arg1:Object) {
        _value = _arg1;
    }
    private var _value:Object;

    override public function describeTo(_arg1:Description):void {
        _arg1._1H7(_value);
    }

    override public function matches(_arg1:Object):Boolean {
        return (_VK(_arg1, _value));
    }

    private function _VK(_arg1:Object, _arg2:Object):Boolean {
        if (isNaN((_arg1 as Number))) {
            return (isNaN((_arg2 as Number)));
        }
        ;
        if (_arg1 == null) {
            return ((_arg2 == null));
        }
        ;
        if ((_arg1 is Array)) {
            return ((((_arg2 is Array)) && (_0z3((_arg1 as Array), (_arg2 as Array)))));
        }
        ;
        return ((_arg1 == _arg2));
    }

    private function _0z3(_arg1:Array, _arg2:Array):Boolean {
        return (((_0op(_arg1, _arg2)) && (_1RJ(_arg1, _arg2))));
    }

    private function _1RJ(_arg1:Array, _arg2:Array):Boolean {
        var _local3:int;
        var _local4:int = _arg1.length;
        while (_local3 < _local4) {
            if (!_VK(_arg1[_local3], _arg2[_local3])) {
                return (false);
            }
            ;
            _local3++;
        }
        ;
        return (true);
    }

    private function _0op(_arg1:Array, _arg2:Array):Boolean {
        return ((_arg1.length == _arg2.length));
    }


}
}//package _hK

