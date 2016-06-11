// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._J7

package _0t {
import com.company.assembleegameclient.map._0d7;
import com.company.util._0Ax;

class _J7 extends _0B5 {

    public function _J7() {
        var _local1:String;
        var _local3:int;
        var _local4:_02f;
        super(_0J9._0Xy);
        var _local2:Vector.<String> = new Vector.<String>();
        for (_local1 in _0d7._qb) {
            _local2.push(_local1);
        }
        ;
        _local2.sort(_0Ax._1SE);
        for each (_local1 in _local2) {
            _local3 = _0d7._qb[_local1];
            _local4 = new _02f(_0d7._18H[_local3]);
            _SO(_local4);
        }
        ;
    }

}
}//package _0t-

