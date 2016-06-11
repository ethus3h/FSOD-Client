// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects._NZ

package com.company.assembleegameclient.objects {
import _1ES._return;

import flash.display.BitmapData;
import flash.geom.ColorTransform;

public class _NZ {

    public function _NZ(_arg1:int, _arg2:uint, _arg3:Number, _arg4:int) {
        this.startTime_ = _arg1;
        this.color_ = _arg2;
        this._1LT = (_arg3 * 1000);
        this._16z = _arg4;
        this._1W5 = ((_arg2 >> 16) & 0xFF);
        this._Kn = ((_arg2 >> 8) & 0xFF);
        this._0XH = (_arg2 & 0xFF);
    }
    public var startTime_:int;
    public var color_:uint;
    public var _1LT:int;
    public var _16z:int;
    public var _1W5:int;
    public var _Kn:int;
    public var _0XH:int;

    public function apply(_arg1:BitmapData, _arg2:int):BitmapData {
        var _local3:int = ((_arg2 - this.startTime_) % this._1LT);
        var _local4:Number = Math.sin(((_local3 / this._1LT) * Math.PI));
        var _local5:Number = (_local4 * 0.5);
        var _local6:ColorTransform = new ColorTransform((1 - _local5), (1 - _local5), (1 - _local5), 1, (_local5 * this._1W5), (_local5 * this._Kn), (_local5 * this._0XH), 0);
        var _local7:BitmapData = _arg1.clone();
        _local7.colorTransform(_local7.rect, _local6);
        return (_local7);
    }

    public function _TI(_arg1:BitmapData, _arg2:int):void {
        var _local3:int = ((_arg2 - this.startTime_) % this._1LT);
        var _local4:Number = Math.sin(((_local3 / this._1LT) * Math.PI));
        var _local5:Number = (_local4 * 0.5);
        var _local6:ColorTransform = new ColorTransform((1 - _local5), (1 - _local5), (1 - _local5), 1, (_local5 * this._1W5), (_local5 * this._Kn), (_local5 * this._0XH), 0);
        _return._1Pk(_arg1, _local6);
    }

    public function _va(_arg1:int):Boolean {
        return ((_arg1 > (this.startTime_ + (this._1LT * this._16z))));
    }


}
}//package com.company.assembleegameclient.objects

