// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._1g

package com.company.assembleegameclient.ui {
import _0Mr._1M;

import _0y9._06T;

import com.company.assembleegameclient.util.GuildUtil;
import com.company.util._dT;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _1g extends Sprite {

    public function _1g(_arg1:String, _arg2:int, _arg3:int = 0) {
        this._0nd = new Bitmap(null);
        this._0nd.y = -8;
        this._0nd.x = -8;
        var _local4:int = (((_arg3 == 0)) ? 0 : (_arg3 - (this._0nd.width - 16)));
        this.guildName_ = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth(_local4);
        this.guildName_.setAutoSize(TextFieldAutoSize.LEFT);
        this.guildName_.filters = [new DropShadowFilter(0, 0, 0)];
        this.guildName_.x = 24;
        this.guildName_.y = 2;
        this.draw(_arg1, _arg2);
    }
    private var name_:String;
    private var _02V:int;
    private var _0nd:Bitmap;
    private var guildName_:_06T;

    public function draw(_arg1:String, _arg2:int):void {
        if ((((this.name_ == _arg1)) && ((_arg2 == _arg2)))) {
            return;
        }
        ;
        this.name_ = _arg1;
        this._02V = _arg2;
        if ((((this.name_ == null)) || ((this.name_ == "")))) {
            _dT._vn(this, this._0nd);
            _dT._vn(this, this.guildName_);
        } else {
            this._0nd.bitmapData = GuildUtil._ca(this._02V, 20);
            _dT._1gf(this, this._0nd);
            this.guildName_.setStringBuilder(new _1M(this.name_));
            _dT._1gf(this, this.guildName_);
        }
        ;
    }


}
}//package com.company.assembleegameclient.ui

