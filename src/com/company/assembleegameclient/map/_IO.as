// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._IO

package com.company.assembleegameclient.map {
import _1ES._return;

import com.company.assembleegameclient.engine3d.Face3D;
import com.company.assembleegameclient.parameters.Parameters;

import flash.display.BitmapData;
import flash.display.IGraphicsData;

public class _IO {

    public function _IO(_arg1:BitmapData, _arg2:Vector.<Number>, _arg3:Number, _arg4:Number, _arg5:int, _arg6:Number, _arg7:Number) {
        this.face_ = new Face3D(_arg1, _arg2, Square._0HJ.concat());
        this._Nl = _arg3;
        this._20G = _arg4;
        if (((!((this._Nl == 0))) || (!((this._20G == 0))))) {
            this.face_.bitmapFill_.repeat = true;
        }
        ;
        this.animate_ = _arg5;
        if (this.animate_ != _Ip._1sf) {
            this.face_.bitmapFill_.repeat = true;
        }
        ;
        this.animateDx_ = _arg6;
        this.animateDy_ = _arg7;
    }
    public var animate_:int;
    public var face_:Face3D;
    public var _Nl:Number = 0;
    public var _20G:Number = 0;
    public var animateDx_:Number = 0;
    public var animateDy_:Number = 0;

    public function dispose():void {
        this.face_.dispose();
        this.face_ = null;
    }

    public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):Boolean {
        var _local4:Number;
        var _local5:Number;
        if (this.animate_ != _Ip._1sf) {
            switch (this.animate_) {
                case _Ip._4r:
                    _local4 = (this._Nl + Math.sin(((this.animateDx_ * _arg3) / 1000)));
                    _local5 = (this._20G + Math.sin(((this.animateDy_ * _arg3) / 1000)));
                    break;
                case _Ip._1Dr:
                    _local4 = (this._Nl + ((this.animateDx_ * _arg3) / 1000));
                    _local5 = (this._20G + ((this.animateDy_ * _arg3) / 1000));
                    break;
            }
            ;
        } else {
            _local4 = this._Nl;
            _local5 = this._20G;
        }
        ;
        if (Parameters._0g5()) {
            _return._1mt(this.face_.bitmapFill_, _local4, _local5);
            _local5 = 0;
            _local4 = _local5;
        }
        ;
        this.face_._0rI.length = 0;
        this.face_._0rI.push((0 + _local4), (0 + _local5), 0, (1 + _local4), (0 + _local5), 0, (1 + _local4), (1 + _local5), 0, (0 + _local4), (1 + _local5), 0);
        this.face_._1uV(this.face_._0rI);
        return (this.face_.draw(_arg1, _arg2));
    }


}
}//package com.company.assembleegameclient.map

