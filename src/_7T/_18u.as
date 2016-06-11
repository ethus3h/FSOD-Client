// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_7T._18u

package _7T {
import _0AI._1Jg;

import _1PE.Account;

import _R2._0LX;
import _R2._fo;

import com.company.assembleegameclient.parameters.Parameters;

public class _18u {

    private static const COUNT:int = 3;
    public static const _s9:int = 4;

    [Inject]
    public var update:_fo;
    [Inject]
    public var _0KR:_0LX;
    [Inject]
    public var account:Account;
    public var news:Vector.<_0CZ>;
    public var _ad:Vector.<_1Jg>;
    public var _1ct:Vector.<_0CZ>;


    public function _1Ck():void {
        this.news = new Vector.<_0CZ>(COUNT, true);
        var _local1:int;
        while (_local1 < COUNT) {
            this.news[_local1] = new _V9(_local1);
            _local1++;
        }
        ;
    }

    public function _1xu(_arg1:Vector.<_0CZ>):void {
        var _local3:_0CZ;
        var _local4:int;
        var _local5:int;
        this._1Ck();
        var _local2:Vector.<_0CZ> = new Vector.<_0CZ>();
        this._1ct = new Vector.<_0CZ>(4, true);
        for each (_local3 in _arg1) {
            if (_local3.slot <= 3) {
                _local2.push(_local3);
            } else {
                _local4 = (_local3.slot - 4);
                _local5 = (_local4 + 1);
                this._1ct[_local4] = _local3;
                if (Parameters.data_[("newsTimestamp" + _local5)] != _local3._0Gs) {
                    Parameters.data_[("newsTimestamp" + _local5)] = _local3._0Gs;
                    Parameters.data_[("hasNewsUpdate" + _local5)] = true;
                }
                ;
            }
            ;
        }
        ;
        this._0KM(_local2);
        this.update.dispatch(this.news);
        this._0KR.dispatch();
    }

    public function _0gG():Boolean {
        return (((((!((this.news[0] == null))) && (!((this.news[1] == null))))) && (!((this.news[2] == null)))));
    }

    public function _6K():Boolean {
        var _local1:int;
        while (_local1 < _s9) {
            if (this._1ct[_local1] == null) {
                return (false);
            }
            ;
            _local1++;
        }
        ;
        return (true);
    }

    public function _176():void {
        if (!this._6K()) {
            return;
        }
        ;
        this._ad = new Vector.<_1Jg>(_s9, true);
        var _local1:int;
        while (_local1 < _s9) {
            this._ad[_local1] = new _1Jg((this._1ct[_local1] as _0CZ)._Qn, (this._1ct[_local1] as _0CZ).linkDetail);
            _local1++;
        }
        ;
    }

    public function _0PM(_arg1:int):_1Jg {
        if (((((((!((this._ad == null))) && ((_arg1 > 0)))) && ((_arg1 <= this._ad.length)))) && (!((this._ad[(_arg1 - 1)] == null))))) {
            return (this._ad[(_arg1 - 1)]);
        }
        ;
        return (new _1Jg("No new information", "Please check back later."));
    }

    private function _0KM(_arg1:Vector.<_0CZ>):void {
        var _local2:_0CZ;
        for each (_local2 in _arg1) {
            if (((this._1jy(_local2)) && (this._2l(_local2)))) {
                this._6H(_local2);
            }
            ;
        }
        ;
    }

    private function _6H(_arg1:_0CZ):void {
        var _local2:uint = (_arg1.slot - 1);
        if (this.news[_local2]) {
            _arg1 = this._1ma(this.news[_local2], _arg1);
        }
        ;
        this.news[_local2] = _arg1;
    }

    private function _1ma(_arg1:_0CZ, _arg2:_0CZ):_0CZ {
        return ((((_arg1.priority) < _arg2.priority) ? _arg1 : _arg2));
    }

    private function _1jy(_arg1:_0CZ):Boolean {
        var _local2:Number = new Date().getTime();
        return ((((_arg1._1ph < _local2)) && ((_local2 < _arg1._0Gs))));
    }

    private function _2l(_arg1:_0CZ):Boolean {
        var _local2:String = this.account._0iC();
        return (!((_arg1._0.indexOf(_local2) == -1)));
    }


}
}//package _7T

