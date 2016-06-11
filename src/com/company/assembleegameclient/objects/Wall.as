// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Wall

package com.company.assembleegameclient.objects {
import com.company.assembleegameclient.engine3d.Face3D;
import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.map._18q;
import com.company.util.BitmapUtil;

import flash.display.BitmapData;
import flash.display.IGraphicsData;

public class Wall extends GameObject {

    private static const _0HJ:Vector.<Number> = new <Number>[0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0];
    private static const _1tx:Vector.<int> = new <int>[0, 1, 0, -1];
    private static const _0tq:Vector.<int> = new <int>[-1, 0, 1, 0];

    public function Wall(_arg1:XML) {
        this.faces_ = new Vector.<Face3D>();
        super(_arg1);
        _Ci = false;
        var _local2:_1kQ = ObjectLibrary._13a[objectType_];
        this._wD = _local2.getTexture(0);
    }
    public var faces_:Vector.<Face3D>;
    private var _1GU:Face3D = null;
    private var _wD:BitmapData = null;

    override public function setObjectId(_arg1:int):void {
        super.setObjectId(_arg1);
        var _local2:_1kQ = ObjectLibrary._13a[objectType_];
        this._wD = _local2.getTexture(_arg1);
    }

    override public function getColor():uint {
        return (BitmapUtil._1t(this._wD));
    }

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        var _local6:BitmapData;
        var _local7:Face3D;
        var _local8:Square;
        if (texture_ == null) {
            return;
        }
        ;
        if (this.faces_.length == 0) {
            this._0nJ();
        }
        ;
        var _local4:BitmapData = texture_;
        if (_9k != null) {
            _local6 = _9k.getTexture(_arg3);
            if (_local6 != null) {
                _local4 = _local6;
            }
            ;
        }
        ;
        var _local5:int;
        while (_local5 < this.faces_.length) {
            _local7 = this.faces_[_local5];
            _local8 = map_.lookupSquare((x_ + _1tx[_local5]), (y_ + _0tq[_local5]));
            if ((((((_local8 == null)) || ((_local8.texture_ == null)))) || (((((!((_local8 == null))) && ((_local8.obj_ is Wall)))) && (!(_local8.obj_._0HD)))))) {
                _local7._1dg = true;
            } else {
                _local7._1dg = false;
                if (_9k != null) {
                    _local7._0x(_local4);
                }
                ;
            }
            ;
            _local7.draw(_arg1, _arg2);
            _local5++;
        }
        ;
        this._1GU.draw(_arg1, _arg2);
    }

    public function _0nJ():void {
        this.faces_.length = 0;
        var _local1:int = x_;
        var _local2:int = y_;
        var _local3:Vector.<Number> = new <Number>[_local1, _local2, 1, (_local1 + 1), _local2, 1, (_local1 + 1), (_local2 + 1), 1, _local1, (_local2 + 1), 1];
        this._1GU = new Face3D(this._wD, _local3, _0HJ, false, true);
        this._1GU.bitmapFill_.repeat = true;
        this._g6(_local1, _local2, 1, (_local1 + 1), _local2, 1);
        this._g6((_local1 + 1), _local2, 1, (_local1 + 1), (_local2 + 1), 1);
        this._g6((_local1 + 1), (_local2 + 1), 1, _local1, (_local2 + 1), 1);
        this._g6(_local1, (_local2 + 1), 1, _local1, _local2, 1);
    }

    private function _g6(_arg1:Number, _arg2:Number, _arg3:Number, _arg4:Number, _arg5:Number, _arg6:Number):void {
        var _local7:Vector.<Number> = new <Number>[_arg1, _arg2, _arg3, _arg4, _arg5, _arg6, _arg4, _arg5, (_arg6 - 1), _arg1, _arg2, (_arg3 - 1)];
        var _local8:Face3D = new Face3D(texture_, _local7, _0HJ, true, true);
        _local8.bitmapFill_.repeat = true;
        this.faces_.push(_local8);
    }


}
}//package com.company.assembleegameclient.objects

