// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j._0kF

package _05j {
import _0Mr._1M;
import _0Mr._1vN;

import _0y9._JP;

import _6u._00t;

import _md._0AH;
import _md._1ty;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util._0ZU;
import com.company.assembleegameclient.util._1hw;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.display.StageQuality;
import flash.geom.Matrix;
import flash.text.TextField;
import flash.text.TextFormat;

public class _0kF {

    private static const _2h:Matrix = new Matrix();
    private static const _1jv:String = Parameters._1o9;//""
    private static const _D:String = Parameters._11L;//"*Client*"
    private static const _0qQ:String = Parameters._0Cn;//"*Help*"
    private static const ERROR:String = Parameters._0c;//"*Error*"
    private static const _1mu:String = Parameters._1Ke;//"*Guild*"
    private static const _tV:TextField = _Vg();

    private static function _Vg():TextField {
        var _local1:TextField = new TextField();
        var _local2:TextFormat = new TextFormat();
        _local2.size = 15;
        _local2.bold = true;
        _local1.defaultTextFormat = _local2;
        return (_local1);
    }
    [Inject]
    public var factory:_JP;
    [Inject]
    public var model:_0AH;
    [Inject]
    public var _b1:_00t;
    [Inject]
    public var _0FE:_1hw;
    private var message:_1ty;
    private var buffer:Vector.<DisplayObject>;

    public function make(_arg1:_1ty, _arg2:Boolean = false):_08Z {
        var _local5:int;
        var _local7:String;
        var _local8:int;
        this.message = _arg1;
        this.buffer = new Vector.<DisplayObject>();
        this._s6();
        this._Ja();
        this._kq();
        this._1u4();
        this._0Ah();
        var _local3:Boolean = (((_arg1.numStars == -1)) || ((_arg1.objectId == -1)));
        var _local4:Boolean;
        var _local6:String = _arg1.name;
        if (((_local3) && (!(((_local5 = _arg1.text.search("/trade ")) == -1))))) {
            _local5 = (_local5 + 7);
            _local7 = "";
            _local8 = _local5;
            while (_local8 < (_local5 + 10)) {
                if (_arg1.text.charAt(_local8) == '"') {
                    break;
                }
                ;
                _local7 = (_local7 + _arg1.text.charAt(_local8));
                _local8++;
            }
            ;
            _local6 = _local7;
            _local4 = true;
        }
        ;
        return (new _08Z(this.buffer, this.model._5m.width, this.model._1M4, _arg2, _arg1.objectId, _local6, (_arg1._1YE == _1mu), _local4));
    }

    private function _Ja():void {
        var _local1:int = this.message.numStars;
        if (_local1 >= 0) {
            this.buffer.push(_0ZU._1CO(_local1));
        }
        ;
    }

    private function _kq():void {
        var _local1:_1vN;
        var _local2:BitmapData;
        if (((this.message._17h) && (!(this.message._1et)))) {
            _local1 = new _1M("To: ");
            _local2 = this.getBitmapData(_local1, 61695);
            this.buffer.push(new Bitmap(_local2));
        }
        ;
    }

    private function _1u4():void {
        if (!this._0dp()) {
            this._0LB();
        }
        ;
    }

    private function _0dp():Boolean {
        var _local1:String = this.message.name;
        return ((((((((((_local1 == _1jv)) || ((_local1 == _D)))) || ((_local1 == _0qQ)))) || ((_local1 == ERROR)))) || ((_local1 == _1mu))));
    }

    private function _0LB():void {
        var _local1:_1vN = new _1M(this._1lW());
        var _local2:BitmapData = this.getBitmapData(_local1, this._0Wo());
        this.buffer.push(new Bitmap(_local2));
    }

    private function _1lW():String {
        var _local1:String = ((((this.message._17h) && (!(this.message._1et)))) ? this.message._1YE : this.message.name);
        if ((((_local1.charAt(0) == "#")) || ((_local1.charAt(0) == "@")))) {
            _local1 = _local1.substr(1);
        }
        ;
        return ((("<" + _local1) + ">"));
    }

    private function _0Ah():void {
        var _local2:int;
        var _local1:Array = this.message.text.split("\n");
        if (_local1.length > 0) {
            this._1Ot(_local1[0], true);
            _local2 = 1;
            while (_local2 < _local1.length) {
                this._1Ot(_local1[_local2], false);
                _local2++;
            }
            ;
        }
        ;
    }

    private function _1Ot(_arg1:String, _arg2:Boolean):void {
        var _local8:DisplayObject;
        var _local9:int;
        var _local10:uint;
        var _local11:int;
        var _local12:int;
        var _local3:String = _arg1;
        var _local4:int;
        var _local5:int = this._b1._0OE()._0Vs(15);
        var _local6:int;
        if (_arg2) {
            for each (_local8 in this.buffer) {
                _local4 = (_local4 + _local8.width);
            }
            ;
            _local6 = _local3.length;
            _tV.text = _local3;
            while (_tV.textWidth >= (this.model._5m.width - _local4)) {
                _local6 = (_local6 - 10);
                _tV.text = _local3.substr(0, _local6);
            }
            ;
            if (_local6 < _local3.length) {
                _local9 = _local3.substr(0, _local6).lastIndexOf(" ");
                _local6 = (((((_local9 == 0)) || ((_local9 == -1)))) ? _local6 : _local9);
            }
            ;
            this._18O(_local3.substr(0, _local6));
        }
        ;
        var _local7:int = _local3.length;
        if (_local7 > _local6) {
            _local10 = (this.model._5m.width / _local5);
            _local11 = _local6;
            while (_local11 < _local3.length) {
                _tV.text = _local3.substr(_local11, _local10);
                while (_tV.textWidth >= (this.model._5m.width - _local4)) {
                    _local10 = (_local10 - 5);
                    _tV.text = _local3.substr(_local11, _local10);
                }
                ;
                _local12 = _local10;
                if (_local3.length > (_local11 + _local10)) {
                    _local12 = _local3.substr(_local11, _local10).lastIndexOf(" ");
                    _local12 = (((((_local12 == 0)) || ((_local12 == -1)))) ? _local10 : _local12);
                }
                ;
                this._18O(_local3.substr(_local11, _local12));
                _local11 = (_local11 + _local12);
            }
            ;
        }
        ;
    }

    private function _18O(_arg1:String):void {
        var _local2:_1vN = new _1M(_arg1);
        var _local3:BitmapData = this.getBitmapData(_local2, this._BZ());
        this.buffer.push(new Bitmap(_local3));
    }

    private function _0Wo():uint {
        if (this.message.name.charAt(0) == "#") {
            return (0xFFA800);
        }
        ;
        if (this.message.name.charAt(0) == "@") {
            return (0xFFFF00);
        }
        ;
        if (this.message._1YE == _1mu) {
            return (10944349);
        }
        ;
        if (this.message._1YE != "") {
            return (61695);
        }
        ;
        return (0xFF00);
    }

    private function _BZ():uint {
        var _local1:String = this.message.name;
        if (_local1 == _1jv) {
            return (0xFFFF00);
        }
        ;
        if (_local1 == _D) {
            return (0xFF);
        }
        ;
        if (_local1 == _0qQ) {
            return (16734981);
        }
        ;
        if (_local1 == ERROR) {
            return (0xFF0000);
        }
        ;
        if (_local1.charAt(0) == "@") {
            return (0xFFFF00);
        }
        ;
        if (this.message._1YE == _1mu) {
            return (10944349);
        }
        ;
        if (this.message._1YE != "") {
            return (61695);
        }
        ;
        return (0xFFFFFF);
    }

    private function getBitmapData(_arg1:_1vN, _arg2:uint):BitmapData {
        var _local3:String = this._0FE._1Kk();
        var _local4:Boolean = Parameters.data_["forceChatQuality"];
        ((_local4) && (this._0FE._1Y1(StageQuality.HIGH)));
        var _local5:BitmapData = this.factory.make(_arg1, 14, _arg2, true, _2h, true);
        ((_local4) && (this._0FE._1Y1(_local3)));
        return (_local5);
    }

    private function _s6():void {
        var _local1:TextFormat = _tV.getTextFormat();
        _local1.font = this._b1._0OE().getName();
        _tV.defaultTextFormat = _local1;
    }


}
}//package _05j

