// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0pG.Animations

package _0pG {
import flash.display.BitmapData;

public class Animations {

    public function Animations(_arg1:_Qq) {
        this._on = _arg1;
    }
    public var _on:_Qq;
    public var _1NI:Vector.<int> = null;
    public var _0Jh:RunningAnimation = null;

    public function getTexture(_arg1:int):BitmapData {
        var _local2:_y;
        var _local4:BitmapData;
        var _local5:int;
        if (this._1NI == null) {
            this._1NI = new Vector.<int>();
            for each (_local2 in this._on._0Ry) {
                this._1NI.push(_local2._163(_arg1));
            }
            ;
        }
        ;
        if (this._0Jh != null) {
            _local4 = this._0Jh.getTexture(_arg1);
            if (_local4 != null) {
                return (_local4);
            }
            ;
            this._0Jh = null;
        }
        ;
        var _local3:int;
        while (_local3 < this._1NI.length) {
            if (_arg1 > this._1NI[_local3]) {
                _local5 = this._1NI[_local3];
                _local2 = this._on._0Ry[_local3];
                this._1NI[_local3] = _local2._im(_arg1);
                if (((!((_local2._UU == 1))) && ((Math.random() > _local2._UU)))) {
                } else {
                    this._0Jh = new RunningAnimation(_local2, _local5);
                    return (this._0Jh.getTexture(_arg1));
                }
                ;
            }
            ;
            _local3++;
        }
        ;
        return (null);
    }


}
}//package _0pG

import _0pG._1wd;
import _0pG._y;

import flash.display.BitmapData;

class RunningAnimation {

    public var animationData_:_y;
    public var start_:int;
    public var frameId_:int;
    public var frameStart_:int;
    public var texture_:BitmapData;

    public function RunningAnimation(_arg1:_y, _arg2:int) {
        this.animationData_ = _arg1;
        this.start_ = _arg2;
        this.frameId_ = 0;
        this.frameStart_ = _arg2;
        this.texture_ = null;
    }

    public function getTexture(_arg1:int):BitmapData {
        var _local2:_1wd = this.animationData_._xz[this.frameId_];
        while ((_arg1 - this.frameStart_) > _local2.time_) {
            if (this.frameId_ >= (this.animationData_._xz.length - 1)) {
                return (null);
            }
            ;
            this.frameStart_ = (this.frameStart_ + _local2.time_);
            this.frameId_++;
            _local2 = this.animationData_._xz[this.frameId_];
            this.texture_ = null;
        }
        ;
        if (this.texture_ == null) {
            this.texture_ = _local2._1Ip.getTexture((Math.random() * 100));
        }
        ;
        return (this.texture_);
    }


}

