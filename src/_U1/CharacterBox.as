// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1.CharacterBox

package _U1 {
import _0Mr._5R;

import _0Ql._ZQ;

import _0y9._06T;

import _10a._FU;

import _6u._TG;

import _DO.GTween;

import _Z0._0Fb;
import _Z0.ToolTip;

import _n._19y;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.appengine._1Ha;
import com.company.assembleegameclient.util.Currency;
import com.company.assembleegameclient.util._0ZU;
import com.company.assembleegameclient.util._0zq;
import com.company.rotmg.graphics.FullCharBoxGraphic;
import com.company.rotmg.graphics.LockedCharBoxGraphic;
import com.company.rotmg.graphics.StarGraphic;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;
import flash.text.TextFieldAutoSize;

public class CharacterBox extends Sprite {

    public static const DELETE_CHAR:String = "DELETE_CHAR";
    public static const ENTER_NAME:String = "ENTER_NAME";
    private static const _0F1:ColorTransform = new ColorTransform(0.8, 0.8, 0.8);
    private static const _0nt:ColorTransform = new ColorTransform(0.2, 0.2, 0.2);

    public function CharacterBox(_arg1:XML, _arg2:_1Ha, _arg3:_FU, _arg4:Boolean = false) {
        var _local5:Sprite;
        this._J8 = _Gd;
        super();
        this.model = _arg3;
        this.playerXML_ = _arg1;
        this.charStats_ = _arg2;
        this._0uY = ((_arg4) || (_arg3._8I(this.objectType())));
        if (!this._0uY) {
            this._ZI = new LockedCharBoxGraphic();
            this.cost = this.playerXML_.UnlockCost;
        } else {
            this._ZI = new FullCharBoxGraphic();
        }
        ;
        this._b4 = new Sprite();
        addChild(this._b4);
        this._b4.addChild(this._ZI);
        this._vm = new _ZQ(this._b4, MouseEvent.CLICK, MouseEvent);
        this.bitmap_ = new Bitmap(null);
        this.setImage(_0zq.DOWN, _0zq._c0, 0);
        this._ZI.addChild(this.bitmap_);
        this.classNameText_ = new _06T().setSize(14).setColor(0xFFFFFF).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(this._ZI.width).setBold(true);
        this.classNameText_.setStringBuilder(new _5R().setParams(this.playerXML_.DisplayId));
        this.classNameText_.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
        this._ZI.addChild(this.classNameText_);
        this._Ui();
        this._0v7();
        if (this._0uY) {
            _local5 = this._0uA(_0ZU.numStars(_arg3._1dt(this.objectType())), _0ZU._1RK.length);
            _local5.y = 60;
            _local5.x = ((this._ZI.width / 2) - (_local5.width / 2));
            _local5.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            this._b4.addChild(_local5);
            this.classNameText_.y = 74;
        } else {
            addChild(this._my);
            this._d = new Bitmap(AssetLibrary._Rb("lofiInterface2", 5));
            this._d.scaleX = 2;
            this._d.scaleY = 2;
            this._d.x = 4;
            this._d.y = 8;
            addChild(this._d);
            addChild(this._0Ip);
            this.classNameText_.y = 78;
        }
        ;
    }
    public var playerXML_:XML = null;
    public var charStats_:_1Ha;
    public var model:_FU;
    public var _0uY:Boolean;
    public var _1c4:_ZQ;
    public var _vm:_ZQ;
    private var _J8:Class;
    private var _b4:Sprite;
    private var _ZI:Sprite;
    private var bitmap_:Bitmap;
    private var _0Ip:_06T;
    private var classNameText_:_06T;
    private var _my:_19y;
    private var cost:int = 0;
    private var _d:Bitmap;
    private var _0gi:_06T;
    private var _4Z:_06T;
    private var _1LG;

    public function objectType():int {
        return (int(this.playerXML_.@type));
    }

    public function unlock():void {
        var _local1:Sprite;
        var _local2:GTween;
        if (this._0uY == false) {
            this._0uY = true;
            this._b4.removeChild(this._ZI);
            this._ZI = new FullCharBoxGraphic();
            this._b4.addChild(this._ZI);
            this.setImage(_0zq.DOWN, _0zq._c0, 0);
            this._ZI.addChild(this.bitmap_);
            this._ZI.addChild(this.classNameText_);
            if (contains(this._0Ip)) {
                removeChild(this._0Ip);
            }
            ;
            if (contains(this._my)) {
                removeChild(this._my);
            }
            ;
            if (((this._d) && (contains(this._d)))) {
                removeChild(this._d);
            }
            ;
            if (((this._1LG) && (contains(this._1LG)))) {
                removeChild(this._1LG);
            }
            ;
            if (((this._0gi) && (contains(this._0gi)))) {
                removeChild(this._0gi);
            }
            ;
            _local1 = this._0uA(_0ZU.numStars(this.model._1dt(this.objectType())), _0ZU._1RK.length);
            _local1.y = 60;
            _local1.x = ((this._ZI.width / 2) - (_local1.width / 2));
            _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
            addChild(_local1);
            this.classNameText_.y = 74;
            if (!this._4Z) {
                this._HU();
            }
            ;
            addChild(this._4Z);
            _local2 = new GTween(this._4Z, 2.5, {
                alpha: 0,
                y: -30
            });
            _local2.onComplete = this._6Z;
        }
        ;
    }

    public function getTooltip():ToolTip {
        return (new _0Fb(this.playerXML_, this.model, this.charStats_));
    }

    public function _1zm(_arg1:Boolean):void {
        if (!this._0uY) {
            return;
        }
        ;
        if (_arg1) {
            transform.colorTransform = new ColorTransform(1.2, 1.2, 1.2);
        } else {
            transform.colorTransform = new ColorTransform(1, 1, 1);
        }
        ;
    }

    public function _zy(_arg1:int):void {
        if (!this._1LG) {
            this._1LG = new this._J8();
            this._1LG.x = 38;
            this._1LG.y = 8;
            addChild(this._1LG);
        }
        ;
        if (!this._0gi) {
            this._06u();
            addChild(this._0gi);
        }
        ;
        this._0gi.setStringBuilder(new _5R().setParams(_TG._Yp, {percent: String(_arg1)}));
    }

    public function _1H2(_arg1:Boolean):void {
        this._my.setEnabled(_arg1);
    }

    private function _6Z(_arg1:GTween):void {
        removeChild(this._4Z);
    }

    private function setImage(_arg1:int, _arg2:int, _arg3:Number):void {
        this.bitmap_.bitmapData = SavedCharacter.getImage(null, this.playerXML_, _arg1, _arg2, _arg3, this._0uY, false);
        this.bitmap_.x = ((this._ZI.width / 2) - (this.bitmap_.bitmapData.width / 2));
    }

    private function _0uA(_arg1:int, _arg2:int):Sprite {
        var _local5:Sprite;
        var _local3:Sprite = new Sprite();
        var _local4:int;
        var _local6:int;
        while (_local4 < _arg1) {
            _local5 = new StarGraphic();
            _local5.x = _local6;
            _local5.transform.colorTransform = _0F1;
            _local3.addChild(_local5);
            _local6 = (_local6 + _local5.width);
            _local4++;
        }
        ;
        while (_local4 < _arg2) {
            _local5 = new StarGraphic();
            _local5.x = _local6;
            _local5.transform.colorTransform = _0nt;
            _local3.addChild(_local5);
            _local6 = (_local6 + _local5.width);
            _local4++;
        }
        ;
        return (_local3);
    }

    private function _Ui():void {
        this._my = new _19y(_TG._kS, 13, this.cost, Currency._1mE);
        this._my.y = (this._my.y + this._ZI.height);
        this._my.setWidth(this._ZI.width);
        this._1c4 = new _ZQ(this._my, MouseEvent.CLICK, MouseEvent);
    }

    private function _0v7():void {
        this._0Ip = new _06T().setSize(14).setColor(0xFF0000).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextWidth(this._ZI.width);
        this._0Ip.setStringBuilder(new _5R().setParams(_TG.LOCKED));
        this._0Ip.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
        this._0Ip.y = 58;
    }

    private function _06u():void {
        this._0gi = new _06T().setSize(14).setColor(0xFFFFFF).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setTextHeight(this._1LG.height).setTextWidth(this._1LG.width);
        this._0gi.x = 42;
        this._0gi.y = 12;
    }

    private function _HU():void {
        this._4Z = new _06T().setSize(14).setColor(0xFF00).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
        this._4Z.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
        this._4Z.setStringBuilder(new _5R().setParams(_TG._2g));
        this._4Z.y = -20;
    }


}
}//package _U1

