// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0pG._Qq

package _0pG {
public class _Qq {

    public function _Qq(_arg1:XML) {
        var _local2:XML;
        this._0Ry = new Vector.<_y>();
        super();
        for each (_local2 in _arg1.Animation) {
            this._0Ry.push(new _y(_local2));
        }
        ;
    }
    public var _0Ry:Vector.<_y>;

}
}//package _0pG

