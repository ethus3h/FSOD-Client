// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0y9._06T

package _0y9 {

import _0Mr._1vN;

import _175._dS;

import _1Sm._sy;

import _6u._03W;

import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.text.TextLineMetrics;

public class _06T extends Sprite implements _0n2 {

    public static const MIDDLE:String = "middle";
    public static const BOTTOM:String = "bottom";
    private static const _Jl:int = 2;

    public const textChanged:_sy = new _sy();

    private static function _T8(_arg1:TextLineMetrics):Number {
        return ((_arg1.height - _arg1.leading));
    }
    public var textField:TextField;
    private var _0us:_dS;
    private var _cE:_1vN;
    private var size:int = 12;
    private var color:uint;
    private var font:_03W;
    private var bold:Boolean;
    private var autoSize:String = "left";
    private var _0j3:String = "left";
    private var _5G:String;
    private var multiline:Boolean;
    private var wordWrap:Boolean;
    private var textWidth:Number = 0;
    private var textHeight:Number = 0;
    private var html:Boolean;
    private var displayAsPassword:Boolean;
    private var _0BL:String;
    private var leftMargin:int = 0;
    private var indent:int = 0;
    private var leading:int = 0;

    public function setIndent(_arg1:int):_06T {
        this.indent = _arg1;
        this._rn();
        return (this);
    }

    public function setLeading(_arg1:int):_06T {
        this.leading = _arg1;
        this._rn();
        return (this);
    }

    public function setLeftMargin(_arg1:int):_06T {
        this.leftMargin = _arg1;
        this._rn();
        return (this);
    }

    public function setDisplayAsPassword(_arg1:Boolean):_06T {
        this.displayAsPassword = _arg1;
        this._rn();
        return (this);
    }

    public function setTextFieldName(_arg1:String):_06T {
        this._0BL = _arg1;
        ((this.textField) && ((this.textField.name = this._0BL)));
        return (this);
    }

    public function setSize(_arg1:int):_06T {
        this.size = _arg1;
        this._rn();
        return (this);
    }

    public function setColor(_arg1:uint):_06T {
        this.color = _arg1;
        this._rn();
        return (this);
    }

    public function setBold(_arg1:Boolean):_06T {
        this.bold = _arg1;
        this._rn();
        return (this);
    }

    public function setHorizontalAlign(_arg1:String):_06T {
        this._0j3 = _arg1;
        this._rn();
        return (this);
    }

    public function setAutoSize(_arg1:String):_06T {
        this.autoSize = _arg1;
        this._rn();
        return (this);
    }

    public function setMultiLine(_arg1:Boolean):_06T {
        this.multiline = _arg1;
        this._rn();
        return (this);
    }

    public function setWordWrap(_arg1:Boolean):_06T {
        this.wordWrap = _arg1;
        this._rn();
        return (this);
    }

    public function setTextWidth(_arg1:Number):_06T {
        this.textWidth = _arg1;
        this._rn();
        return (this);
    }

    public function setTextHeight(_arg1:Number):_06T {
        this.textHeight = _arg1;
        this._rn();
        return (this);
    }

    public function setHTML(_arg1:Boolean):_06T {
        this.html = _arg1;
        return (this);
    }

    public function setStringBuilder(_arg1:_1vN):_06T {
        this._cE = _arg1;
        this._0A();
        return (this);
    }

    public function _1FF():_1vN {
        return (this._cE);
    }

    public function setPosition(_arg1:Number, _arg2:Number):_06T {
        this.x = _arg1;
        this.y = _arg2;
        return (this);
    }

    public function setVerticalAlign(_arg1:String):_06T {
        this._5G = _arg1;
        return (this);
    }

    public function update():void {
        this._0A();
    }

    public function _1qt(_arg1:_03W):void {
        this.font = _arg1;
    }

    public function _qO(_arg1:_dS):void {
        this._0us = _arg1;
        this._0A();
    }

    public function _0Q7(_arg1:TextField):void {
        _arg1.width = this.textWidth;
        _arg1.height = this.textHeight;
        ((this._0BL) && ((_arg1.name = this._0BL)));
        this._YK(_arg1);
        this.textField = _arg1;
        this._1kM();
        addChild(this.textField);
    }

    public function _1Nq(_arg1:String):void {
        if (this.html) {
            this.textField.htmlText = _arg1;
        } else {
            this.textField.text = _arg1;
        }
    }

    public function setTextFormat(_arg1:TextFormat, _arg2:int = -1, _arg3:int = -1):void {
        this.textField.defaultTextFormat = _arg1;
        this.textField.setTextFormat(_arg1, _arg2, _arg3);
    }

    public function _Dn():Number {
        return (this.font._Dn(Number(this.textField.getTextFormat().size)));
    }

    public function _4D():String {
        return (((this.textField) ? this.textField.text : "null"));
    }

    public function getColor():uint {
        return (this.color);
    }

    public function _Ie():int {
        return (this.size);
    }

    public function _nn():Boolean {
        return (!((this.textField == null)));
    }

    public function _O3():Boolean {
        return (!((this._0us == null)));
    }

    public function _zD():Boolean {
        return (!((this.font == null)));
    }

    public function getTextFormat(_arg1:int = -1, _arg2:int = -1):TextFormat {
        return (this.textField.getTextFormat(_arg1, _arg2));
    }

    private function _rn():void {
        if (this.textField) {
            this._1kM();
        }
        ;
    }

    private function _1kM():void {
        this._1H();
        this._1L8();
    }

    private function _1L8():void {
        if (this.textWidth != 0) {
            this.textField.width = this.textWidth;
        }
        ;
        if (this.textHeight != 0) {
            this.textField.height = this.textHeight;
        }
        ;
        this.textField.selectable = false;
        this.textField.textColor = this.color;
        this.textField.autoSize = this.autoSize;
        this.textField.multiline = this.multiline;
        this.textField.wordWrap = this.wordWrap;
        this.textField.displayAsPassword = this.displayAsPassword;
        this.textField.embedFonts = true;
    }

    private function _1H():void {
        var _local1:TextFormat = new TextFormat();
        _local1.size = this.size;
        _local1.font = this.font.getName();
        _local1.bold = this.bold;
        _local1.align = this._0j3;
        _local1.leftMargin = this.leftMargin;
        _local1.indent = this.indent;
        _local1.leading = this.leading;
        this.setTextFormat(_local1);
    }

    private function _YK(_arg1:TextField):void {
        if (this.textField) {
            _arg1.text = this.textField.text;
            removeChild(this.textField);
        }
        ;
    }

    private function _0A():void {
        var _local1:String;
        if (this._kY()) {
            this._cE._qO(this._0us);
            _local1 = this._cE.getString();
            this._1Nq(_local1);
            this._UQ();
            this._0Rn();
            this.textChanged.dispatch();
        }
    }

    private function _0Rn():void {
        this.textField.height;
    }

    private function _UQ():void {
        var _local1:TextLineMetrics;
        if (this._5G == MIDDLE) {
            this._x();
        } else {
            if (this._5G == BOTTOM) {
                _local1 = this.textField.getLineMetrics(0);
                this.textField.y = -(_T8(_local1));
            }
        }
    }

    private function _x():void {
        this.textField.height;
        var _local1:TextFormat = this.textField.getTextFormat();
        var _local2:Number = this._Dv(_local1);
        var _local3:Number = this._0cN(_local1);
        this.textField.y = -((this.textField.height - (((_local2 / 2) + _local3) + _Jl)));
    }

    private function _Dv(_arg1:TextFormat):Number {
        return (this.font._0Vs(Number(_arg1.size)));
    }

    private function _0cN(_arg1:TextFormat):Number {
        return (this.font._Dn(Number(_arg1.size)));
    }

    private function _kY():Boolean {
        return (((((this._0us) && (this._cE))) && (this.textField)));
    }


}
}//package _0y9

