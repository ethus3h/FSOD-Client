// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._be

package com.company.assembleegameclient.util {
import _0CT._8w;

import _1PE.Account;

import _4p._1ae;

import _6u._TG;

import com.company.assembleegameclient.util.offer.Offer;

import flash.net.URLVariables;

public class _be {

    public static const _0xg:_be = new _be(_TG._01y, "co", "");
    public static const _07B:_be = new _be(_TG._Ma, "ps", "P3");
    public static const _0vu:_be = new _be(_TG._FS, "ps", "CH");
    public static const _1WW:Vector.<_be> = new <_be>[_0xg, _07B, _0vu];

    public static function _0ju(_arg1:String):_be {
        var _local2:_be;
        for each (_local2 in _1WW) {
            if (_local2.label_ == _arg1) {
                return (_local2);
            }
            ;
        }
        ;
        return (null);
    }

    public function _be(_arg1:String, _arg2:String, _arg3:String) {
        this.label_ = _arg1;
        this._o3 = _arg2;
        this._0dV = _arg3;
    }
    public var label_:String;
    public var _o3:String;
    public var _0dV:String;

    public function _1ZB(_arg1:String, _arg2:String, _arg3:Offer):String {
        var _local4:Account = _8w._1Sz().getInstance(Account);
        var _local5:_1ae = _8w._1Sz().getInstance(_1ae);
        var _local6:URLVariables = new URLVariables();
        _local6["tok"] = _arg1;
        _local6["exp"] = _arg2;
        _local6["guid"] = _local4.getUserId();
        _local6["provider"] = this._o3;
        switch (this._o3) {
            case "co":
                _local6["jwt"] = _arg3.jwt_;
                break;
            case "ps":
                _local6["jwt"] = _arg3.jwt_;
                _local6["price"] = _arg3.price_.toString();
                _local6["paymentid"] = this._0dV;
                break;
        }
        ;
        return (((_local5._kx(true) + "/credits/add?") + _local6.toString()));
    }


}
}//package com.company.assembleegameclient.util

