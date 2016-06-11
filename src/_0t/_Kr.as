// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._Kr

package _0t {

public class _Kr {

    public function _Kr() {
        this._W = new <int>[-1, -1, -1];
        super();
    }
    public var _W:Vector.<int>;
    public var _1KD:String = null;

    public function clone():_Kr {
        var _local1:_Kr = new _Kr();
        _local1._W = this._W.concat();
        _local1._1KD = this._1KD;
        return (_local1);
    }

    public function isEmpty():Boolean {
        var _local1:int;
        while (_local1 < _0J9._zL) {
            if (this._W[_local1] != -1) {
                return (false);
            }
            ;
            _local1++;
        }
        ;
        return (true);
    }


}
}//package _0t-

