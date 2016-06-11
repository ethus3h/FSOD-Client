// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Hk.SteamAccountDetailDialog

package __Hk {
import _0Mc.Frame;

import _0Mr._1M;
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.ui._Wt;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class SteamAccountDetailDialog extends Sprite {

    public function SteamAccountDetailDialog() {
        this._9S = new _sy();
        this.register = new _sy();
    }
    public var _9S:_sy;
    public var register:_sy;
    public var link:_sy;
    private var _13G:_06T;
    private var _0on:_06T;
    private var _0XS:_06T;
    private var _1f9:_06T;
    private var _20o:_Wt;

    public function _0Pf(_arg1:String, _arg2:String, _arg3:Boolean):void {
        var _local4:Frame;
        _local4 = new Frame(_TG._1ux, "", _TG._k9, "/steamworksCurrentLogin");
        addChild(_local4);
        this._13G = new _06T().setSize(18).setColor(0xB3B3B3);
        this._13G.setBold(true);
        this._13G.setStringBuilder(new _5R().setParams(_TG._012));
        this._13G.filters = [new DropShadowFilter(0, 0, 0)];
        this._13G.y = (_local4.h_ - 60);
        this._13G.x = 17;
        _local4.addChild(this._13G);
        this._0on = new _06T().setSize(16).setColor(0xB3B3B3);
        this._0on.setTextWidth(238).setTextHeight(30);
        this._0on.setStringBuilder(new _1M(_arg1));
        this._0on.y = (_local4.h_ - 30);
        this._0on.x = 17;
        _local4.addChild(this._0on);
        _local4.h_ = (_local4.h_ + 88);
        if (_arg3) {
            _local4.h_ = (_local4.h_ - 20);
            this._0XS = new _06T().setSize(18).setColor(0xB3B3B3);
            this._0XS.setBold(true);
            this._0XS.setStringBuilder(new _5R().setParams(_TG._0iw));
            this._0XS.filters = [new DropShadowFilter(0, 0, 0)];
            this._0XS.y = (_local4.h_ - 60);
            this._0XS.x = 17;
            _local4.addChild(this._0XS);
            this._1f9 = new _06T().setSize(16).setColor(0xB3B3B3);
            this._1f9.setStringBuilder(new _1M(_arg2));
            this._1f9.y = (_local4.h_ - 30);
            this._1f9.x = 17;
            _local4.addChild(this._1f9);
            _local4.h_ = (_local4.h_ + 88);
        } else {
            this._20o = new _Wt(12, false, _TG._0hr);
            this._20o.addEventListener(MouseEvent.CLICK, this._jy);
            _local4._Kd(this._20o);
        }
        ;
        _local4._01h.addEventListener(MouseEvent.CLICK, this._1Xd);
    }

    public function _jy(_arg1:MouseEvent):void {
        this.register.dispatch();
    }

    private function _1Xd(_arg1:MouseEvent):void {
        this._9S.dispatch();
    }


}
}//package _Hk

