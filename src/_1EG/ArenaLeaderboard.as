// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG.ArenaLeaderboard

package _1EG {
import _07g._2v;

import _0Mr._5R;

import _0P7._0U1;

import _0y9._06T;
import _0y9._1Ds;

import _1Sm._sy;

import _1ik._1Sl;
import _1ik._2X;
import _1ik._rG;

import _6u._TG;

import _U1._1O0;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.rotmg.graphics.ScreenGraphic;
import com.company.util.AssetLibrary;
import com.company.util.BitmapUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class ArenaLeaderboard extends Sprite {

    public const _A8:_sy = new _sy(_rG);
    public const close:_sy = new _sy();

    public function ArenaLeaderboard() {
        this.list = this._0YP();
        this.title = this._JX();
        this._006 = this._21L(false);
        this._1rH = this._21L(true);
        this._mU = this._1Y0();
        this._0W = this._0is();
        super();
        addChild(this.list);
        addChild(new ScreenGraphic());
        addChild(this._006);
        addChild(this._1rH);
        addChild(this.title);
        this._1mg();
        this._1gh();
        addChild(this._0W);
    }
    private var list:_1hh;
    private var title:_1Ds;
    private var _006:Bitmap;
    private var _1rH:Bitmap;
    private var _mU:Vector.<_E7>;
    private var selected:_E7;
    private var _Mt:_1O0;
    private var _0W:_0U1;

    public function init():void {
        var _local1:_E7 = this._mU[0];
        this.selected = _local1;
        _local1.setSelected(true);
        _local1.selected.dispatch(_local1);
    }

    public function destroy():void {
        var _local1:_E7;
        for each (_local1 in this._mU) {
            _local1.selected.remove(this._0a);
            _local1.destroy();
        }
        ;
    }

    public function _lN():void {
        this._0fK(this.selected._1FN()._M1());
    }

    public function _0fK(_arg1:Vector.<_2X>):void {
        this.list.setItems(_arg1, true);
    }

    private function _0a(_arg1:_E7):void {
        this.selected.setSelected(false);
        this.selected = _arg1;
        this.selected.setSelected(true);
        this._0W.visible = (_arg1._1FN().getKey() == "weekly");
        if (_arg1._1FN()._0j1()) {
            this.list.setItems(_arg1._1FN()._M1(), true);
        } else {
            this._A8.dispatch(_arg1._1FN());
        }
        ;
    }

    private function _1Y0():Vector.<_E7> {
        var _local3:_rG;
        var _local4:_E7;
        var _local1:_2v = new _2v();
        var _local2:Vector.<_E7> = new Vector.<_E7>();
        for each (_local3 in _1Sl._1PS) {
            _local4 = new _E7(_local3);
            _local4.y = 70;
            _local4.selected.add(this._0a);
            _local2.push(_local4);
            _local1.push(_local4._CQ);
            addChild(_local4);
        }
        ;
        _local1.complete.addOnce(this._N9);
        return (_local2);
    }

    private function _21L(_arg1:Boolean):Bitmap {
        var _local2:BitmapData = TextureRedrawer.redraw(AssetLibrary._Rb("lofiInterface2", 8), 64, true, 0, true);
        if (_arg1) {
            _local2 = BitmapUtil.mirror(_local2);
        }
        ;
        return (new Bitmap(_local2));
    }

    private function _JX():_1Ds {
        var _local1:_1Ds;
        _local1 = new _1Ds();
        _local1.setBold(true).setColor(0xB3B3B3).setSize(32);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        _local1.setStringBuilder(new _5R().setParams(_TG._0me));
        _local1.setAutoSize(TextFieldAutoSize.CENTER);
        _local1.y = 25;
        _local1.textChanged.addOnce(this._lg);
        return (_local1);
    }

    private function _1mg():void {
        this._Mt = new _1O0(_TG._t8, 36, false);
        this._Mt.setAutoSize(TextFieldAutoSize.CENTER);
        this._Mt.setVerticalAlign(_06T.MIDDLE);
        this._Mt.x = 400;
        this._Mt.y = 553;
        addChild(this._Mt);
        this._Mt.addEventListener(MouseEvent.CLICK, this.onCloseClick);
    }

    private function _1gh():void {
        var _local1:Shape = new Shape();
        addChild(_local1);
        var _local2:Graphics = _local1.graphics;
        _local2.lineStyle(2, 0x545454);
        _local2.moveTo(0, 100);
        _local2.lineTo(800, 100);
    }

    private function _0YP():_1hh {
        var _local1:_1hh = new _1hh();
        _local1.x = 15;
        _local1.y = 115;
        return (_local1);
    }

    private function _N9():void {
        var _local2:_E7;
        var _local1:int = 20;
        for each (_local2 in this._mU) {
            _local2.x = _local1;
            _local1 = (_local1 + (_local2.width + 20));
        }
        ;
    }

    private function _0is():_0U1 {
        var _local1:_0U1;
        _local1 = new _0U1();
        _local1.y = 72;
        _local1.x = 440;
        return (_local1);
    }

    private function _lg():void {
        this.title.x = (stage.stageWidth / 2);
        this._006.x = ((((stage.stageWidth / 2) - (this.title.width / 2)) - this._006.width) + 10);
        this._006.y = 15;
        this._1rH.x = (((stage.stageWidth / 2) + (this.title.width / 2)) - 10);
        this._1rH.y = 15;
    }

    private function onCloseClick(_arg1:MouseEvent):void {
        this.close.dispatch();
    }


}
}//package _1EG

