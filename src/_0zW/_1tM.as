// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0zW._1tM

package _0zW {
import _1fY.Description;
import _1fY._0d1;
import _1fY._1rS;

public class _1tM extends _0d1 {

    public function _1tM(_arg1:_1rS) {
        _matcher = _arg1;
    }
    private var _matcher:_1rS;

    override public function matches(_arg1:Object):Boolean {
        return (!(_matcher.matches(_arg1)));
    }

    override public function describeTo(_arg1:Description):void {
        _arg1.appendText("not ")._vE(_matcher);
    }


}
}//package _0zW

