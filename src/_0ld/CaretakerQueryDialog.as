// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld.CaretakerQueryDialog

package _0ld {
import _07g._2v;

import _08Y._sC;

import _0Mr._5R;

import _0Ql._0q;

import _0Sj._1e;
import _0Sj._1l_;
import _0Sj._gc;

import _0y9._06T;

import _1Sm._sy;

import _v9._ND;

import com.company.assembleegameclient.ui._1jP;

import flash.display.BitmapData;
import flash.display.DisplayObjectContainer;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextFieldAutoSize;

public class CaretakerQueryDialog extends Sprite {

    public static const WIDTH:int = 274;
    public static const HEIGHT:int = 428;
    public static const TITLE:String = "CaretakerQueryDialog.title";
    public static const _20:String = "CaretakerQueryDialog.query";
    public static const CLOSE:String = "Close.text";
    public static const BACK:String = "Screens.back";
    public static const _C3:Array = [{
        category: "CaretakerQueryDialog.category_petYard",
        info: "CaretakerQueryDialog.info_petYard"
    }, {
        category: "CaretakerQueryDialog.category_pets",
        info: "CaretakerQueryDialog.info_pets"
    }, {
        category: "CaretakerQueryDialog.category_abilities",
        info: "CaretakerQueryDialog.info_abilities"
    }, {
        category: "CaretakerQueryDialog.category_feedingPets",
        info: "CaretakerQueryDialog.info_feedingPets"
    }, {
        category: "CaretakerQueryDialog.category_fusingPets",
        info: "CaretakerQueryDialog.info_fusingPets"
    }, {
        category: "CaretakerQueryDialog.category_evolution",
        info: "CaretakerQueryDialog.info_evolution"
    }];

    private const _28:_2v = _1UQ();
    private const container:DisplayObjectContainer = makeContainer();
    private const background:_1l_ = _0kH();
    private const caretaker:_gc = _0Jn();
    private const title:_06T = _JX();
    private const _2s:_1e = _0WM();
    private const _0zC:_1jP = _3w();
    private const _Mt:_1jP = _1mg();
    public const closed:_sy = new _0q(_Mt, MouseEvent.CLICK);

    public function _0nD(_arg1:BitmapData):void {
        this.caretaker._0nD(_arg1);
    }

    private function _1UQ():_2v {
        var _local1:_2v = new _2v();
        _local1.complete.addOnce(this._0Gb);
        return (_local1);
    }

    private function _0Gb():void {
        var _local1:_ND = new _ND();
        _local1.layout(WIDTH, this._Mt);
        _local1.layout(WIDTH, this._0zC);
    }

    private function makeContainer():DisplayObjectContainer {
        var _local1:Sprite;
        _local1 = new Sprite();
        _local1.x = ((800 - WIDTH) / 2);
        _local1.y = ((600 - HEIGHT) / 2);
        addChild(_local1);
        return (_local1);
    }

    private function _0kH():_1l_ {
        var _local1:_1l_ = new _1l_();
        _local1.draw(WIDTH, HEIGHT);
        _local1._0ho(_1l_.HORIZONTAL_DIVISION, 34);
        this.container.addChild(_local1);
        return (_local1);
    }

    private function _0Jn():_gc {
        var _local1:_gc;
        _local1 = new _gc();
        _local1.x = 20;
        _local1.y = 50;
        this.container.addChild(_local1);
        return (_local1);
    }

    private function _JX():_06T {
        var _local1:_06T;
        _local1 = _sC._1h(0xFFFFFF, 18, true);
        _local1.setStringBuilder(new _5R().setParams(TITLE));
        _local1.setAutoSize(TextFieldAutoSize.CENTER);
        _local1.x = (WIDTH / 2);
        _local1.y = 24;
        this.container.addChild(_local1);
        return (_local1);
    }

    private function _3w():_1jP {
        var _local1:_1jP = new _1jP(16, BACK, 80);
        _local1.y = 382;
        _local1.visible = false;
        _local1.addEventListener(MouseEvent.CLICK, this._lo);
        this.container.addChild(_local1);
        this._28.push(_local1.textChanged);
        return (_local1);
    }

    private function _1mg():_1jP {
        var _local1:_1jP = new _1jP(16, CLOSE, 110);
        _local1.y = 382;
        this.container.addChild(_local1);
        this._28.push(_local1.textChanged);
        return (_local1);
    }

    private function _0WM():_1e {
        var _local1:_1e = new _1e(_C3);
        _local1.x = 20;
        _local1.y = 110;
        _local1.selected.add(this._0BH);
        this.container.addChild(_local1);
        this._28.push(_local1.ready);
        return (_local1);
    }

    private function _0BH(_arg1:String):void {
        this._2s.visible = false;
        this._Mt.visible = false;
        this._0zC.visible = true;
        this.caretaker._1tk(_arg1);
    }

    private function _lo(_arg1:MouseEvent):void {
        this.caretaker._1YD();
        this._2s.visible = true;
        this._Mt.visible = true;
        this._0zC.visible = false;
    }


}
}//package _0ld

