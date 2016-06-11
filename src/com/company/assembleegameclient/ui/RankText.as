// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.RankText

package com.company.assembleegameclient.ui {
import _07g._2v;

import _0Mr._1M;
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import com.company.assembleegameclient.util._0ZU;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;

public class RankText extends Sprite {

    public function RankText(_arg1:int, _arg2:Boolean, _arg3:Boolean) {
        this._qH = new _2v();
        super();
        this._J = _arg2;
        if (_arg3) {
            this._0DB = this.makeText();
            this._0DB.setStringBuilder(new _5R().setParams(_TG._m0));
            this._0DB.filters = [new DropShadowFilter(0, 0, 0)];
            this._0DB.textChanged.addOnce(this.position);
            addChild(this._0DB);
        }
        mouseEnabled = false;
        mouseChildren = false;
        this.draw(_arg1);
    }
    public var background:Sprite = null;
    public var _J:Boolean;
    private var numStars_:int = -1;
    private var _0DB:_06T = null;
    private var _qH:_2v;
    private var icon:Sprite;

    public function makeText():_06T {
        var _local1:int = ((this._J) ? 18 : 16);
        var _local2:_06T = new _06T();
        _local2.setSize(_local1).setColor(0xB3B3B3);
        _local2.setBold(this._J);
        return (_local2);
    }

    public function draw(_arg1:int):void {
        var text:_06T;
        var onTextChanged:Function;
        var numStars:int = _arg1;
        onTextChanged = function ():void {
            text.y = text.height;
            icon.x = (text.width + 2);
            icon.y = (text.y - icon.height);
            var _local1:int = (icon.x + icon.width);
            background.graphics.clear();
            background.graphics.beginFill(0, 0.4);
            var _local2:Number = (icon.height + 8);
            background.graphics.drawRoundRect(-2, (icon.y - 3), (_local1 + 6), _local2, 12, 12);
            background.graphics.endFill();
            position();
        };
        if (numStars == this.numStars_) {
            return;
        }
        ;
        this.numStars_ = numStars;
        if (((!((this.background == null))) && (contains(this.background)))) {
            removeChild(this.background);
        }
        ;
        if (this.numStars_ < 0) {
            return;
        }
        ;
        this.background = new Sprite();
        text = this.makeText();
        text.setVerticalAlign(_06T.BOTTOM);
        text.setStringBuilder(new _1M(this.numStars_.toString()));
        text.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        this.background.addChild(text);
        this.icon = ((this._J) ? _0ZU._0Pz(this.numStars_) : _0ZU._033(this.numStars_));
        this.background.addChild(this.icon);
        text.textChanged.addOnce(onTextChanged);
        addChild(this.background);
        if (this._0DB != null) {
            this._qQ();
        }
        ;
    }

    private function _qQ():void {
        if (this._qH.isEmpty()) {
            this.position();
        } else {
            this._qH.complete.addOnce(this.position);
        }
        ;
    }

    private function position():void {
        if (this._0DB) {
            this.background.x = this._0DB.width;
            this._0DB.y = (this.icon.y - 3);
        }
        ;
    }


}
}//package com.company.assembleegameclient.ui

