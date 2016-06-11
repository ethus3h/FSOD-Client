// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0jj._1ez

package _0jj {
import _0cZ._018;

import __Nj._M4;

public class _1ez {

    private static const _0JL:String = "Package Purchased";
    private static const _0yg:String = "You've already purchased this package!";
    private static const _0DF:String = "Please check your vault for any items purchased";

    [Inject]
    public var _nU:_M4;


    public function execute():void {
        this._nU.dispatch(this._1l1());
    }

    private function _1l1():_018 {
        return (new _018().setTitle(_0JL).setBody(_0yg, _0DF));
    }


}
}//package _0jj

