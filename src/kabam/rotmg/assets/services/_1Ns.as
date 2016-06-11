// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.assets.services._1Ns

package kabam.rotmg.assets.services {
import _Jm._0R9;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0pu;
import com.company.assembleegameclient.util._0zq;
import com.company.util.BitmapUtil;

import flash.display.BitmapData;

import kabam.rotmg.assets.model.Animation;
import kabam.rotmg.assets.model._1ZZ;

public class _1Ns {

    private var texture1:int;
    private var texture2:int;
    private var size:int;


    public function _1fP(_arg1:_1ZZ):_0zq {
        return (_0pu._1Iw(_arg1.file, _arg1.index));
    }

    public function makeIcon(_arg1:_1ZZ, _arg2:int = 100, _arg3:int = 0, _arg4:int = 0):BitmapData {
        this.texture1 = _arg3;
        this.texture2 = _arg4;
        this.size = _arg2;
        var _local5:_0zq = this._1fP(_arg1);
        var _local6:BitmapData = this._c4(_local5, _0zq._c0, 0);
        _local6 = _0R9._ud(_local6, 0);
        _local6 = BitmapUtil._6L(_local6, 6, 6, (_local6.width - 12), (_local6.height - 6));
        return (_local6);
    }

    public function _0kq(_arg1:_1ZZ, _arg2:int = 100, _arg3:int = 0, _arg4:int = 0):Animation {
        this.texture1 = _arg3;
        this.texture2 = _arg4;
        this.size = _arg2;
        var _local5:_0zq = this._1fP(_arg1);
        var _local6:BitmapData = this._c4(_local5, _0zq._1W2, 0.5);
        _local6 = _0R9._ud(_local6, 0);
        var _local7:BitmapData = this._c4(_local5, _0zq._1W2, 0);
        _local7 = _0R9._ud(_local7, 0);
        var _local8:Animation = new Animation();
        _local8._sv(_local6, _local7);
        return (_local8);
    }

    private function _c4(_arg1:_0zq, _arg2:int, _arg3:Number):BitmapData {
        var _local4:_0T2 = _arg1.imageFromDir(_0zq.RIGHT, _arg2, _arg3);
        return (TextureRedrawer.resize(_local4.image_, _local4.mask_, this.size, false, this.texture1, this.texture2));
    }


}
}//package kabam.rotmg.assets.services

