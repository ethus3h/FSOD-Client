// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG.ArenaLeaderboardListItem

package _1EG {
import _0CT._8w;

import _0Mr._1M;
import _0Mr._5R;

import _0P7._mu;

import _0Sj._0mW;
import _0Sj._Q7;

import _0y9._1Ds;

import _1L3._1FO;

import _1Sm._sy;

import _1ik._2X;

import _6u._TG;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class ArenaLeaderboardListItem extends Sprite {

    private static const HEIGHT:int = 60;

    public const _5:_sy = new _sy(Sprite);
    public const hideTooltip:_sy = new _sy();

    public function ArenaLeaderboardListItem() {
        this._1Rq = new Sprite();
        this._0Fg = new Sprite();
        this._1F2 = new Bitmap();
        this._37 = this._0Ef();
        this._8o = this._0WU();
        this.playerName = this._0WU();
        this.waveNumber = this._0WU();
        this._0qU = this._0WU();
        this.background = this._0kH();
        this._pN = new _1M();
        this._0E8 = new _1M();
        this._1Cw = new _5R();
        this._1d0 = new _1M();
        super();
        this._BY = _8w._1Sz().getInstance(_0mW);
        this._8o.setAutoSize(TextFieldAutoSize.RIGHT);
        this._1dN();
        this.addEventListeners();
    }
    private var _1Rq:Sprite;
    private var _0Fg:Sprite;
    private var _1F2:Bitmap;
    private var _TH:_mu;
    private var _2O:_Q7;
    private var rank:int = 0;
    private var _0Yg:Bitmap;
    private var _37:Sprite;
    private var _BY:_0mW;
    private var _8o:_1Ds;
    private var playerName:_1Ds;
    private var waveNumber:_1Ds;
    private var _0qU:_1Ds;
    private var background:Sprite;
    private var _EW:Boolean = false;
    private var _13C:Boolean = false;
    private var _pN:_1M;
    private var _0E8:_1M;
    private var _1Cw:_5R;
    private var _1d0:_1M;

    public function apply(_arg1:_2X, _arg2:Boolean):void {
        this._EW = !((_arg1 == null));
        if (_arg1) {
            this._fF(_arg1);
            this._03q(_arg1);
            if (((_arg1.rank) && (_arg2))) {
                this._8o.visible = true;
                this._8o.setStringBuilder(this._pN.setString((_arg1.rank + ".")));
            } else {
                this._8o.visible = false;
            }
            ;
            if (this._0Yg) {
                this._0Y8();
            }
            ;
            if (_arg1.pet) {
                this._1E7(_arg1);
            }
            ;
            this.rank = _arg1.rank;
            this._13C = _arg1._13C;
            this.setColor();
        } else {
            this.clear();
        }
        ;
        this.align();
    }

    public function setColor():void {
        var _local1:uint = 0xFFFFFF;
        if (this._13C) {
            _local1 = 16567065;
        } else {
            if (this.rank == 1) {
                _local1 = 16777103;
            }
            ;
        }
        ;
        this.playerName.setColor(_local1);
        this.waveNumber.setColor(_local1);
        this._0qU.setColor(_local1);
        this._8o.setColor(_local1);
    }

    public function clear():void {
        this._1F2.bitmapData = null;
        this.playerName.setStringBuilder(this._0E8.setString(""));
        this.waveNumber.setStringBuilder(this._1Cw.setParams(""));
        this._0qU.setStringBuilder(this._1d0.setString(""));
        this._8o.setStringBuilder(this._pN.setString(""));
        if (this._0Yg) {
            this._0Y8();
        }
        ;
        this._0Yg = null;
        this._37.visible = false;
        this.rank = 0;
    }

    private function addEventListeners():void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        this._1Rq.addEventListener(MouseEvent.MOUSE_OVER, this._0N0);
        this._1Rq.addEventListener(MouseEvent.MOUSE_OUT, this._0wM);
        this._0Fg.addEventListener(MouseEvent.MOUSE_OVER, this._1gU);
        this._0Fg.addEventListener(MouseEvent.MOUSE_OUT, this._R7);
    }

    private function _1dN():void {
        addChild(this.background);
        addChild(this._1Rq);
        addChild(this._37);
        addChild(this._0Fg);
        addChild(this._8o);
        addChild(this.playerName);
        addChild(this.waveNumber);
        addChild(this._0qU);
        this._1Rq.addChild(this._1F2);
    }

    private function _03q(_arg1:_2X):void {
        this.waveNumber.setStringBuilder(this._1Cw.setParams(_TG._lA, {waveNumber: (_arg1._1qz - 1).toString()}));
        this._0qU.setStringBuilder(this._1d0.setString(this._03Z(Math.floor(_arg1._0fh))));
    }

    private function _fF(_arg1:_2X):void {
        this._1F2.bitmapData = _arg1._1PC;
        this._TH = new _mu(_arg1);
        this.playerName.setStringBuilder(this._0E8.setString(_arg1.name));
    }

    private function _1E7(_arg1:_2X):void {
        this._2O = new _Q7(_arg1.pet);
        this._0Yg = this._1kV(_arg1.pet, 48);
        this._0Fg.addChild(this._0Yg);
        this._37.visible = true;
    }

    private function _0Y8():void {
        this._0Fg.removeChild(this._0Yg);
        this._2O = null;
        this._0Yg = null;
        this._37.visible = false;
    }

    private function _1kV(_arg1:_1FO, _arg2:int):Bitmap {
        return (new Bitmap(this._BY._lt(_arg1, _arg2)));
    }

    private function _0WU():_1Ds {
        var _local1:_1Ds;
        _local1 = new _1Ds();
        _local1.setBold(true).setSize(24);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        return (_local1);
    }

    private function _0kH():Sprite {
        var _local1:Sprite = new Sprite();
        _local1.graphics.beginFill(0, 0.5);
        _local1.graphics.drawRect(0, 0, 750, 60);
        _local1.graphics.endFill();
        _local1.alpha = 0;
        return (_local1);
    }

    private function _0Ef():Sprite {
        var _local1:Sprite = new Sprite();
        _local1.graphics.beginFill(0x545454);
        _local1.graphics.drawRoundRect(0, 0, 40, 40, 10, 10);
        _local1.graphics.endFill();
        _local1.visible = false;
        return (_local1);
    }

    private function _03Z(_arg1:int):String {
        var _local2:int = Math.floor((_arg1 / 60));
        var _local3:String = ((((_local2 < 10)) ? "0" : "") + _local2.toString());
        var _local4:int = (_arg1 % 60);
        var _local5:String = ((((_local4 < 10)) ? "0" : "") + _local4.toString());
        return (((_local3 + ":") + _local5));
    }

    private function align():void {
        this._8o.x = 75;
        this._8o.y = ((HEIGHT / 2) - (this._8o.height / 2));
        this._1F2.x = 110;
        this._1F2.y = (((HEIGHT / 2) - (this._1F2.height / 2)) - 3);
        if (this._0Yg) {
            this._0Yg.x = 170;
            this._0Yg.y = ((HEIGHT / 2) - (this._0Yg.height / 2));
            this._37.x = 175;
            this._37.y = ((HEIGHT / 2) - (this._37.height / 2));
        }
        ;
        this.playerName.x = 230;
        this.playerName.y = ((HEIGHT / 2) - (this.playerName.height / 2));
        this.waveNumber.x = 485;
        this.waveNumber.y = ((HEIGHT / 2) - (this.waveNumber.height / 2));
        this._0qU.x = 635;
        this._0qU.y = ((HEIGHT / 2) - (this._0qU.height / 2));
    }

    private function _0wM(_arg1:MouseEvent):void {
        this.hideTooltip.dispatch();
    }

    private function _0N0(_arg1:MouseEvent):void {
        if (this._TH) {
            this._5.dispatch(this._TH);
        }
        ;
    }

    private function _R7(_arg1:MouseEvent):void {
        this.hideTooltip.dispatch();
    }

    private function _1gU(_arg1:MouseEvent):void {
        if (this._TH) {
            this._5.dispatch(this._2O);
        }
        ;
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        if (this._EW) {
            this.background.alpha = 0;
        }
        ;
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        if (this._EW) {
            this.background.alpha = 1;
        }
        ;
    }


}
}//package _1EG

