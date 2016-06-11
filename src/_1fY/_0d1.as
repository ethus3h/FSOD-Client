// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fY._0d1

package _1fY {
import flash.errors.IllegalOperationError;

public class _0d1 implements _1rS {


    public function describeMismatch(_arg1:Object, _arg2:Description):void {
        _arg2.appendText("was ")._1H7(_arg1);
    }

    public function matches(_arg1:Object):Boolean {
        throw (new IllegalOperationError("BaseMatcher#matches must be override by subclass"));
    }

    public function describeTo(_arg1:Description):void {
        throw (new IllegalOperationError("BaseMatcher#describeTo must be override by subclass"));
    }

    public function toString():String {
        return (_Ca.toString(this));
    }


}
}//package _1fY

