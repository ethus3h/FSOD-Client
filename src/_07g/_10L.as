// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._10L

package _07g {
import _1Kr._0MU;

import flash.display.Sprite;

public class _10L extends Sprite {

    private static const _00w:Array = [1, 0, 0, 1];
    private static const _wC:Array = [0, 1, 1, 0];
    private static const _16Z:int = 4;

    private const _Ud:Array = [_00w, _wC];

    public function _10L() {
        var _local2:_0MU;
        super();
        var _local1:int;
        while (_local1 < 2) {
            _local2 = new _0MU(this._Ud[_local1], _local1);
            _local2.x = (_local1 * (_0MU._0zu + _16Z));
            addChild(_local2);
            _local1++;
        }
        ;
    }

}
}//package _07g

