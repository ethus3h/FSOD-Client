// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fY._1gE

package _1fY {
import flash.errors.IllegalOperationError;

public class _1gE extends _0d1 {


    override public function describeMismatch(_arg1:Object, _arg2:Description):void {
        matchesOrDescribesMismatch(_arg1, _arg2);
    }

    override public function matches(_arg1:Object):Boolean {
        return (matchesOrDescribesMismatch(_arg1, new _0rl()));
    }

    protected function matchesOrDescribesMismatch(_arg1:Object, _arg2:Description):Boolean {
        throw (new IllegalOperationError("DiagnosingMatcher#matches is abstract and must be overriden in a subclass"));
    }


}
}//package _1fY

