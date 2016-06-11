// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_s2._hU

package _s2 {
import flash.utils.Dictionary;

public class _hU {

    public function _hU(_arg1, _arg2:Boolean = false) {
        this._19X = _arg2;
        this._1hm = _arg1;
    }
    private var _y6;
    private var _19X:Boolean;

    public function get _1hm() {
        var _local1:*;
        if (this._19X) {
            return (this._y6);
        }
        ;
        for (_local1 in this._y6) {
            return (_local1);
        }
        ;
        return (null);
    }

    public function set _1hm(_arg1):void {
        if (this._19X) {
            this._y6 = _arg1;
        } else {
            this._y6 = new Dictionary(true);
            this._y6[_arg1] = null;
        }
        ;
    }

    public function get strong():Boolean {
        return (this._19X);
    }


}
}//package _s2

