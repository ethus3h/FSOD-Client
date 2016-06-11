// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZR._20n

package _ZR {
import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects._1CH;

import flash.display.Sprite;
import flash.events.Event;

public class _20n extends Sprite {

    public function _20n(_arg1:Map) {
        var _local3:_16P;
        super();
        this.map_ = _arg1;
        this._1MS = new Vector.<_16P>(_1CH._17r, true);
        var _local2:int;
        while (_local2 < _1CH._17r) {
            _local3 = new _16P();
            this._1MS[_local2] = _local3;
            addChild(_local3);
            _local2++;
        }
        ;
        this.questArrow_ = new _qY(this.map_);
        addChild(this.questArrow_);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var map_:Map;
    public var _1MS:Vector.<_16P> = null;
    public var questArrow_:_qY;

    public function draw(_arg1:_18q, _arg2:int):void {
        var _local6:_16P;
        var _local7:Player;
        var _local8:int;
        var _local9:_16P;
        var _local10:Number;
        var _local11:Number;
        if (this.map_.player_ == null) {
            return;
        }
        ;
        var _local3:_1CH = this.map_.party_;
        var _local4:Player = this.map_.player_;
        var _local5:int;
        while (_local5 < _1CH._17r) {
            _local6 = this._1MS[_local5];
            if (_local6._cL) {
            } else {
                if (_local5 >= _local3._12q.length) {
                    _local6._1bQ(null);
                } else {
                    _local7 = _local3._12q[_local5];
                    if (((((_local7._07t) || ((_local7.map_ == null)))) || (_local7._0HD))) {
                        _local6._1bQ(null);
                    } else {
                        _local6._1bQ(_local7);
                        _local8 = 0;
                        while (_local8 < _local5) {
                            _local9 = this._1MS[_local8];
                            _local10 = (_local6.x - _local9.x);
                            _local11 = (_local6.y - _local9.y);
                            if (((_local10 * _local10) + (_local11 * _local11)) < 64) {
                                if (!_local9._cL) {
                                    _local9._1dJ(_local7);
                                }
                                ;
                                _local6._1bQ(null);
                                break;
                            }
                            ;
                            _local8++;
                        }
                        ;
                        _local6.draw(_arg2, _arg1);
                    }
                    ;
                }
                ;
            }
            ;
            _local5++;
        }
        ;
        if (!this.questArrow_._cL) {
            this.questArrow_.draw(_arg2, _arg1);
        }
        ;
    }

    private function onRemovedFromStage(_arg1:Event):void {
        _0Lx._i2();
    }


}
}//package _ZR

