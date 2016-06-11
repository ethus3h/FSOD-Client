// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._0mW

package _0Sj {
import _1L3._1FO;

import _Jm._0R9;

import com.company.assembleegameclient.util.TextureRedrawer;

import flash.display.Bitmap;
import flash.display.BitmapData;

public class _0mW {

    public var _1dG:Number = 1.4;


    public function create(_arg1:_1FO, _arg2:int):_1vA {
        var _local3:BitmapData = this._lt(_arg1, _arg2);
        var _local4:Bitmap = new Bitmap(_local3);
        var _local5:_1vA = new _1vA(_arg1);
        _local5._1Zj(_local4);
        return (_local5);
    }

    public function _lt(_arg1:_1FO, _arg2:int):BitmapData {
        var _local4:Number;
        var _local5:BitmapData;
        var _local3:BitmapData = ((_arg1._Fn()) ? _arg1._Fn().image_ : null);
        if (_local3) {
            _local4 = ((_arg2 - TextureRedrawer._tZ) / _local3.width);
            _local5 = TextureRedrawer.resize(_local3, _arg1._Fn().mask_, 100, true, 0, 0, _local4);
            _local5 = _0R9._ud(_local5, 0, this._1dG);
            return (_local5);
        }
        ;
        return (new _0Iy(_arg2, _arg2));
    }


}
}//package _0Sj

