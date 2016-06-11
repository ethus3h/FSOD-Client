// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Sign

package com.company.assembleegameclient.objects {
import _0CT._8w;

import _175._dS;

import _6u._00t;

import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.util.TextureRedrawer;

import flash.display.BitmapData;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;

public class Sign extends GameObject {

    public function Sign(_arg1:XML) {
        super(_arg1);
        texture_ = null;
        this._0us = _8w._1Sz().getInstance(_dS);
        this._b1 = _8w._1Sz().getInstance(_00t);
    }
    private var _0us:_dS;
    private var _b1:_00t;

    override protected function getTexture(_arg1:_18q, _arg2:int):BitmapData {
        if (texture_ != null) {
            return (texture_);
        }
        ;
        var _local3:TextField = new TextField();
        _local3.multiline = true;
        _local3.wordWrap = false;
        _local3.autoSize = TextFieldAutoSize.LEFT;
        _local3.textColor = 0xFFFFFF;
        _local3.embedFonts = true;
        var _local4:TextFormat = new TextFormat();
        _local4.align = TextFormatAlign.CENTER;
        _local4.font = this._b1._0OE().getName();
        _local4.size = 24;
        _local4.color = 0xFFFFFF;
        _local4.bold = true;
        _local3.defaultTextFormat = _local4;
        var _local5:String = this._0us.getValue(this._1JD(name_));
        _local3.text = _local5.split("|").join("\n");
        var _local6:BitmapData = new _0Iy(_local3.width, _local3.height, true, 0);
        _local6.draw(_local3);
        texture_ = TextureRedrawer.redraw(_local6, size_, false, 0);
        return (texture_);
    }

    private function _1JD(_arg1:String):String {
        var _local2:Boolean = ((((!((_arg1 == null))) && ((_arg1.charAt(0) == "{")))) && ((_arg1.charAt((_arg1.length - 1)) == "}")));
        return (((_local2) ? _arg1.substr(1, (_arg1.length - 2)) : _arg1));
    }


}
}//package com.company.assembleegameclient.objects

