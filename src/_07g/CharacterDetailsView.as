// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g.CharacterDetailsView

package _07g {
import _0Mr._1M;

import _0Ql._ZQ;

import _0y9._06T;

import _1Jc.IconButton;
import _1Jc._1aj;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects._1Sg;
import com.company.assembleegameclient.ui._0ME;
import com.company.assembleegameclient.ui._QS;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class CharacterDetailsView extends Sprite {

    public static const NEXUS_BUTTON:String = "NEXUS_BUTTON";
    public static const OPTIONS_BUTTON:String = "OPTIONS_BUTTON";
    public static const _0v0:String = "lofiInterfaceBig";
    public static const _1uc:int = 6;
    public static const _0Wh:int = 5;

    public function CharacterDetailsView() {
        this._1yv = new _sy();
        this._0Zv = new _sy();
        this._0H = new Bitmap(null);
        this.nameText_ = new _06T().setSize(20).setColor(0xB3B3B3);
        this._0XM = new _ZQ(this.button, MouseEvent.CLICK);
        this._yE = new _ZQ(this.button, MouseEvent.CLICK);
        super();
    }
    public var _1yv:_sy;
    public var _0Zv:_sy;
    public var _1yz:_1aj;
    public var _196:_1Sg;
    private var _0H:Bitmap;
    private var button:IconButton;
    private var nameText_:_06T;
    private var _0XM:_ZQ;
    private var _yE:_ZQ;
    private var _0xL:_0ME;
    private var _1hs:_QS;

    public function init(_arg1:String, _arg2:String):void {
        this._0D();
        this._1YL(_arg1);
        this._1aT(_arg2);
    }

    public function update(_arg1:Player):void {
        this._0H.bitmapData = _arg1.getPortrait();
    }

    public function draw(_arg1:Player):void {
        if (this._1hs) {
            this._1hs.update(_arg1._1uv);
        }
        ;
        if (((_arg1._1XI) || (_arg1._kw))) {
            this._0xL = ((this._0xL) || (new _0ME(_arg1)));
            if (this._0H) {
                this._0H.x = 13;
            }
            ;
            if (this.nameText_) {
                this.nameText_.x = 47;
            }
            ;
            this._0xL.x = 6;
            this._0xL.y = 5;
            addChild(this._0xL);
        } else {
            if (this._0xL) {
                removeChild(this._0xL);
                this._0xL = null;
                this._0H.x = -2;
                this.nameText_.x = 36;
            }
            ;
        }
        ;
    }

    public function setName(_arg1:String):void {
        this.nameText_.setStringBuilder(new _1M(_arg1));
    }

    private function _1aT(_arg1:String):void {
        if (_arg1 == NEXUS_BUTTON) {
            this.button = this._1yz.create(this._196._Rb(_0v0, _1uc), _TG._1k9, "escapeToNexus");
            this._0XM = new _ZQ(this.button, MouseEvent.CLICK, MouseEvent);
            this._0XM.add(this._hl);
        } else {
            if (_arg1 == OPTIONS_BUTTON) {
                this.button = this._1yz.create(this._196._Rb(_0v0, _0Wh), _TG._0Pb, "options");
                this._yE = new _ZQ(this.button, MouseEvent.CLICK, MouseEvent);
                this._yE.add(this._1Hw);
            }
            ;
        }
        ;
        this.button.x = 172;
        this.button.y = 4;
        addChild(this.button);
    }

    private function _0D():void {
        this._0H.x = -2;
        this._0H.y = -8;
        addChild(this._0H);
    }

    private function _1YL(_arg1:String):void {
        this.nameText_.setBold(true);
        this.nameText_.x = 36;
        this.nameText_.y = 3;
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        this.setName(_arg1);
        addChild(this.nameText_);
    }

    private function _hl(_arg1:MouseEvent):void {
        this._1yv.dispatch();
    }

    private function _1Hw(_arg1:MouseEvent):void {
        this._0Zv.dispatch();
    }


}
}//package _07g

