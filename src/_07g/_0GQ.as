// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._0GQ

package _07g {
import _1Fr._i6;

import flash.display.Sprite;

import mx.core.BitmapAsset;

public class _0GQ extends Sprite {

    private static var _0rC:Class = _Pd;
    private static var _W1:Class = _0JZ;
    private static var _W9:Class = _Zn;
    private static var _1bE:Class = _0Dn;
    private static var _1Ge:Class = _1N5;

    public function _0GQ() {
        this.base = new _0rC();
        addChild(this.base);
        this._jF = new Vector.<BitmapAsset>(4, true);
        this._jF[0] = new _1Ge();
        this._jF[1] = new _W1();
        this._jF[2] = new _W9();
        this._jF[3] = new _1bE();
        var _local1:int;
        while (_local1 < 4) {
            this._jF[_local1].x = (12 + (40 * _local1));
            this._jF[_local1].y = 12;
            _local1++;
        }
        ;
    }
    private var base:BitmapAsset;
    private var _jF:Vector.<BitmapAsset>;

    public function _Cu(_arg1:_i6):void {
        var _local2:BitmapAsset = this._jF[_arg1.position];
        if (!contains(_local2)) {
            addChild(_local2);
        }
        ;
    }

    public function _a5(_arg1:_i6):void {
        var _local2:BitmapAsset = this._jF[_arg1.position];
        if (contains(_local2)) {
            removeChild(_local2);
        }
        ;
    }


}
}//package _07g

