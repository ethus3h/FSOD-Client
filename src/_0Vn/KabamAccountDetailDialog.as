// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Vn.KabamAccountDetailDialog

package _0Vn {
import _0Mc.Frame;

import _0Mr._1M;
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class KabamAccountDetailDialog extends Sprite {

    public function KabamAccountDetailDialog() {
        this._9S = new _sy();
    }
    public var _9S:_sy;
    private var _13G:_06T;
    private var _0on:_06T;

    public function _0Pf(_arg1:String):void {
        var _local2:Frame = new Frame(_TG._Mp, "", _TG._0Pu, "/currentKabamLogin");
        addChild(_local2);
        this._13G = new _06T().setSize(18).setColor(0xB3B3B3);
        this._13G.setBold(true);
        this._13G.setStringBuilder(new _5R().setParams(_TG._00E));
        this._13G.filters = [new DropShadowFilter(0, 0, 0)];
        this._13G.y = (_local2.h_ - 60);
        this._13G.x = 17;
        _local2.addChild(this._13G);
        this._0on = new _06T().setSize(16).setColor(0xB3B3B3).setTextWidth(238).setTextHeight(30);
        this._0on.setStringBuilder(new _1M(_arg1));
        this._0on.y = (_local2.h_ - 30);
        this._0on.x = 17;
        _local2.addChild(this._0on);
        _local2.h_ = (_local2.h_ + 88);
        _local2.w_ = (_local2.w_ + 60);
        _local2._01h.addEventListener(MouseEvent.CLICK, this._1Xd);
    }

    private function _1Xd(_arg1:MouseEvent):void {
        this._9S.dispatch();
    }


}
}//package _0Vn

