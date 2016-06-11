// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1iA._9Q

package _1iA {
public class _9Q {

    private static const _1V8:Vector.<int> = Vector.<int>([31, -1, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]);
    private static const _034:int = 2;

    public function _9Q() {
        this._1gP = new Date().getFullYear();
    }
    private var _1gP:int;

    public function _10i(_arg1:int):Boolean {
        return ((((_arg1 > 0)) && ((_arg1 <= 12))));
    }

    public function _0x5(_arg1:int, _arg2:int = -1, _arg3:int = -1):Boolean {
        return ((((_arg1 > 0)) && ((_arg1 <= this._m6(_arg2, _arg3)))));
    }

    public function _m6(_arg1:int = -1, _arg2:int = -1):int {
        if (_arg1 == -1) {
            return (31);
        }
        ;
        return ((((_arg1 == _034)) ? this._pp(_arg2) : _1V8[(_arg1 - 1)]));
    }

    public function _ye(_arg1:int):Boolean {
        var _local2 = ((_arg1 % 4) == 0);
        var _local3 = ((_arg1 % 100) == 0);
        var _local4 = ((_arg1 % 400) == 0);
        return (((_local2) && (((!(_local3)) || (_local4)))));
    }

    public function _u6(_arg1:int, _arg2:int, _arg3:int, _arg4:int):Boolean {
        return (((((this._Wh(_arg3, _arg4)) && (this._10i(_arg1)))) && (this._0x5(_arg2, _arg1, _arg3))));
    }

    public function _Wh(_arg1:int, _arg2:int):Boolean {
        return ((((_arg1 <= this._1gP)) && ((_arg1 > (this._1gP - _arg2)))));
    }

    private function _pp(_arg1:int):int {
        if ((((_arg1 == -1)) || (this._ye(_arg1)))) {
            return (29);
        }
        ;
        return (28);
    }


}
}//package _1iA

