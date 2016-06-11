// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_20I._1-Z

package _20I {
import _1Sm._sy;

public class _1Z {

    public static const _1RC:int = 782;

    public const selected:_sy = new _sy(_E0);
    private const map:Object = {};
    private const classes:Vector.<_E0> = new <_E0>[];

    private var count:uint = 0;
    private var _0iK:_E0;


    public function _1br():uint {
        return (this.count);
    }

    public function _0tX(_arg1:int):_E0 {
        return (this.classes[_arg1]);
    }

    public function _Sb(_arg1:int):_E0 {
        return ((this.map[_arg1] = ((this.map[_arg1]) || (this._0gh()))));
    }

    public function _0ZN():_E0 {
        return (((this._0iK) || (this._Sb(_1RC))));
    }

    public function _208(_arg1:int):_1GP {
        var _local2:_1GP;
        var _local3:_E0;
        for each (_local3 in this.classes) {
            _local2 = _local3._0fJ._1PW(_arg1);
            if (_local2 != _local3._0fJ._1HK()) break;
        }
        ;
        return (_local2);
    }

    private function _0gh():_E0 {
        var _local1:_E0 = new _E0();
        _local1.selected.add(this._0j9);
        this.count = this.classes.push(_local1);
        return (_local1);
    }

    private function _0j9(_arg1:_E0):void {
        if (this._0iK != _arg1) {
            ((this._0iK) && (this._0iK._1dU(false)));
            this._0iK = _arg1;
            this.selected.dispatch(_arg1);
        }
        ;
    }


}
}//package _20I

