// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1MJ

package _0t {
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.util._0Ax;

class _1MJ extends _0B5 {

    public function _1MJ() {
        var _local1:String;
        var _local3:int;
        var _local4:XML;
        var _local5:_1sa;
        super(_0J9._46);
        var _local2:Vector.<String> = new Vector.<String>();
        for (_local1 in ObjectLibrary._qb) {
            _local2.push(_local1);
        }
        ;
        _local2.sort(_0Ax._1SE);
        for each (_local1 in _local2) {
            _local3 = ObjectLibrary._qb[_local1];
            _local4 = ObjectLibrary._18H[_local3];
            if (!((((_local4.hasOwnProperty("Item")) || (_local4.hasOwnProperty("Player")))) || ((_local4.Class == "Projectile")))) {
                _local5 = new _1sa(_local4);
                _SO(_local5);
            }
            ;
        }
        ;
    }

}
}//package _0t-

