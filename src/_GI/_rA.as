// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._rA

package _GI {
public class _rA {

    public static const _x9:Object = {};


    public static function _0vQ(_arg1:XML):void {
        var _local2:XML;
        for each (_local2 in _arg1.Particle) {
            _x9[_local2.@id] = new _0ZY(_local2);
        }
        ;
    }


}
}//package _GI

