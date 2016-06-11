// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_8x._CJ

package _8x {
import _08f.Console;
import _08f._0Rt;

import _0fO.*;

import _0oZ._function;

import flash.display.BlendMode;
import flash.display.Sprite;
import flash.geom.Rectangle;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;

public final class _CJ extends Sprite implements _oh {

    private static const _eN:String = "kabam.lib/console";

    private const _14c:RegExp = /\[0x(.+)\:(.+)\]/ig;
    private const _Vw:String = "<font color='#$1'>$2</font>";
    private const _1I2:Array = [];
    private const _uV:Array = [];
    private const _XP:Object = {};

    public function _CJ() {
        this._zA = new TextField();
        super();
        alpha = 0.8;
        blendMode = BlendMode.LAYER;
        addChild(this._zA);
        this._zA.alpha = 0.6;
        this._zA.defaultTextFormat = new TextFormat("_sans", 14, 0xFFFFFF, true);
        this._zA.htmlText = _eN;
        this._zA.selectable = false;
        this._zA.multiline = true;
        this._zA.wordWrap = true;
        this._zA.autoSize = TextFieldAutoSize.LEFT;
        this._zA.background = true;
        this._zA.border = false;
        this._zA.backgroundColor = 0x3300;
        this._2G = new Console("", new _0Rt());
        addChild(this._2G);
    }
    private var _zA:TextField;
    private var _2G:Console;
    private var _1s1:Number;

    public function _1f(_arg1:_function):void {
        var _local2:_function = (this._XP[_arg1.name] = ((this._XP[_arg1.name]) || (this._OZ(_arg1.name))));
        _local2.data = _arg1.data.replace(this._14c, this._Vw);
        this._jM();
    }

    public function _18p(_arg1:String):void {
        var _local2:_function = this._XP[_arg1];
        if (_local2) {
            delete this._XP[_arg1];
            this._uV.splice(this._uV.indexOf(_local2), 1);
        }
        ;
    }

    public function log(_arg1:String):void {
        var _local2:String = _arg1.replace(this._14c, this._Vw);
        this._1I2.push(_local2);
        this._2G._ra(_local2);
    }

    public function clear():void {
        var _local1:String;
        this._1I2.length = 0;
        this._uV.length = 0;
        for (_local1 in this._XP) {
            delete this._XP[_local1];
        }
        ;
    }

    public function resize(_arg1:Rectangle):void {
        this._1s1 = (_arg1.height - _1A.HEIGHT);
        x = _arg1.x;
        y = _arg1.y;
        this._zA.width = _arg1.width;
        this._2G.width = _arg1.width;
        this._xW();
    }

    public function _4D():String {
        return (this._1I2.join("\r"));
    }

    private function _OZ(_arg1:String):_function {
        var _local2:_function = new _function(_arg1);
        this._uV.push(_local2);
        return (_local2);
    }

    private function _xW():void {
        this._zA.y = (this._1s1 - this._zA.height);
    }

    private function _jM():void {
        this._zA.htmlText = this._uV.join("\n");
        this._xW();
    }


}
}//package _8x

