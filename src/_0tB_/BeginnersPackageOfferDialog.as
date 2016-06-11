// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tB.BeginnersPackageOfferDialog

package _0tB_ {
import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import _jX._Av;

import flash.display.Sprite;
import flash.events.MouseEvent;

public class BeginnersPackageOfferDialog extends Sprite {

    public static const _gq:String = "BeginnersPackageOfferDialog.dayLeft";
    public static const _0zk:String = "BeginnersPackageOfferDialog.daysLeft";

    public static var _065:Class = _ba;

    public function BeginnersPackageOfferDialog() {
        this._0kH();
        this._5u();
        this._1mg();
        this._0hq();
    }
    public var close:_sy;
    public var buy:_sy;
    private var _Rz:_06T;

    public function _Xl(_arg1:int):void {
        var _local2:String = (((_arg1 > 1)) ? _0zk : _gq);
        this._Rz.setStringBuilder(new _5R().setParams(_local2, {days: _arg1}));
    }

    public function _1gi():void {
        x = ((stage.stageWidth - width) * 0.5);
        y = ((stage.stageHeight - height) * 0.5);
    }

    private function _0kH():void {
        addChild(new _065());
    }

    private function _5u():void {
        this._Rz = new _06T().setSize(14).setColor(0xE3C900);
        this._Rz.setBold(true);
        this._Rz.x = 307;
        this._Rz.y = 380;
        addChild(this._Rz);
    }

    private function _0hq():void {
        var _local1:Sprite = this._AV(270, 400, 150, 40);
        this.buy = new _0q(_local1, MouseEvent.CLICK);
    }

    private function _1mg():void {
        var _local1:Sprite = this._AV(550, 30, 30, 30);
        this.close = new _0q(_local1, MouseEvent.CLICK);
    }

    private function _AV(_arg1:int, _arg2:int, _arg3:int, _arg4:int):Sprite {
        var _local5:_Av = new _Av(_arg1, _arg2, _arg3, _arg4);
        addChild(_local5);
        return (_local5);
    }


}
}//package _0tB

