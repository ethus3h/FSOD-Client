// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects._1CH

package com.company.assembleegameclient.objects {

import _14._L2;

import com.company.assembleegameclient.map.Map;
import com.company.util.PointUtil;

import flash.utils.Dictionary;

public class _1CH {

    public static const _17r:int = 6;
    private static const _05d:Array = ["starred_", "distSqFromThisPlayer_", "objectId_"];
    private static const _1HF:Array = [(Array.NUMERIC | Array.DESCENDING), Array.NUMERIC, Array.NUMERIC];
    private static const _1gB:int = (50 * 50);//2500

    public function _1CH(_arg1:Map) {
        this._12q = [];
        this.starred_ = new Dictionary(true);
        this._18i = new Dictionary(true);
        super();
        this.map_ = _arg1;
    }
    public var map_:Map;
    public var _12q:Array;
    private var starred_:Dictionary;
    private var _18i:Dictionary;
    private var lastUpdate_:int = -2147483648;

    public function update(_arg1:int, _arg2:int):void {
        var _local4:GameObject;
        var _local5:Player;
        if (_arg1 < (this.lastUpdate_ + 500)) {
            return;
        }
        ;
        this.lastUpdate_ = _arg1;
        this._12q.length = 0;
        var _local3:Player = this.map_.player_;
        if (_local3 == null) {
            return;
        }
        ;
        for each (_local4 in this.map_.goDict_) {
            _local5 = (_local4 as Player);
            if ((((_local5 == null)) || ((_local5 == _local3)))) {
            } else {
                _local5.starred_ = !((this.starred_[_local5.accountId_] == undefined));
                _local5._18i = !((this._18i[_local5.accountId_] == undefined));
                _local5.distSqFromThisPlayer_ = PointUtil._Fw(_local3.x_, _local3.y_, _local5.x_, _local5.y_);
                if (!(((_local5.distSqFromThisPlayer_ > _1gB)) && (!(_local5.starred_)))) {
                    this._12q.push(_local5);
                }
                ;
            }
            ;
        }
        ;
        this._12q.sortOn(_05d, _1HF);
        if (this._12q.length > _17r) {
            this._12q.length = _17r;
        }
        ;
    }

    public function _cs(_arg1:Player):void {
        this.starred_[_arg1.accountId_] = 1;
        this.lastUpdate_ = int.MIN_VALUE;
        this.map_.gs_.gsc_.editAccountList(0, true, _arg1.objectId_);
    }

    public function _Vz(_arg1:Player):void {
        delete this.starred_[_arg1.accountId_];
        _arg1.starred_ = false;
        this.lastUpdate_ = int.MIN_VALUE;
        this.map_.gs_.gsc_.editAccountList(0, false, _arg1.objectId_);
    }

    public function setStars(_arg1:_L2):void {
        var _local3:String;
        var _local2:int;
        while (_local2 < _arg1.accountIds_.length) {
            _local3 = _arg1.accountIds_[_local2];
            this.starred_[_local3] = 1;
            this.lastUpdate_ = int.MIN_VALUE;
            _local2++;
        }
        ;
    }

    public function removeStars(_arg1:_L2):void {
        var _local3:String;
        var _local2:int;
        while (_local2 < _arg1.accountIds_.length) {
            _local3 = _arg1.accountIds_[_local2];
            delete this.starred_[_local3];
            this.lastUpdate_ = int.MIN_VALUE;
            _local2++;
        }
        ;
    }

    public function _078(_arg1:Player):void {
        this._18i[_arg1.accountId_] = 1;
        this.lastUpdate_ = int.MIN_VALUE;
        this.map_.gs_.gsc_.editAccountList(1, true, _arg1.objectId_);
    }

    public function _1TJ(_arg1:Player):void {
        delete this._18i[_arg1.accountId_];
        _arg1._18i = false;
        this.lastUpdate_ = int.MIN_VALUE;
        this.map_.gs_.gsc_.editAccountList(1, false, _arg1.objectId_);
    }

    public function setIgnores(_arg1:_L2):void {
        var _local3:String;
        this._18i = new Dictionary(true);
        var _local2:int;
        while (_local2 < _arg1.accountIds_.length) {
            _local3 = _arg1.accountIds_[_local2];
            this._18i[_local3] = 1;
            this.lastUpdate_ = int.MIN_VALUE;
            _local2++;
        }
        ;
    }


}
}//package com.company.assembleegameclient.objects

