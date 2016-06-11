// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0zW._ch

package _0zW {
import _1fY.Description;
import _1fY._1gE;
import _1fY._1rS;

public class _ch extends _1gE {

    public function _ch(_arg1:Array) {
        _nk = ((_arg1) || ([]));
    }
    private var _nk:Array;

    override protected function matchesOrDescribesMismatch(_arg1:Object, _arg2:Description):Boolean {
        var _local3:_1rS;
        for each (_local3 in _nk) {
            if (!_local3.matches(_arg1)) {
                _arg2._vE(_local3).appendText(" ")._Wx(_local3, _arg1);
                return (false);
            }
            ;
        }
        ;
        return (true);
    }

    override public function describeTo(_arg1:Description):void {
        _arg1._1YC("(", " and ", ")", _nk);
    }


}
}//package _0zW

