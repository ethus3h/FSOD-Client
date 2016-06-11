// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0AI._Uj

package _0AI {
import _04g._AJ;

import _0CT._8w;

import _0Mr._1M;
import _0Mr._5R;

import _0Sj._1l_;

import _0y9._06T;

import _1Fr._qf;

import _1TG._0Yn;

import _6u._00t;

import _7T._18u;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.util.AssetLibrary;
import com.company.util.MoreColorUtil;
import com.company.util._1N;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.filters.GlowFilter;
import flash.geom.ColorTransform;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;

public class _Uj extends _AJ {

    public static const _1CS:int = 440;
    public static const _1aw:int = 400;
    private static const _1N3:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));
    private static const _IM:DropShadowFilter = new DropShadowFilter(0, 0, 0);
    private static const GLOW_FILTER:GlowFilter = new GlowFilter(0xFF0000, 1, 11, 5);
    private static const _wy:Array = [_IM, GLOW_FILTER];
    private static const _0UF:Array = [_IM];

    public static var _Go:Class = _0VI;
    public static var _1E2:Class = _Am;
    public static var _0JX:int = _1CS;//440
    public static var _ZZ:int = _1aw;//400

    public static function _0Fh():void {
        var _local1:_qf = _8w._1Sz().getInstance(_qf);
        if (((!((_local1 == null))) && (!((_local1._1P == null))))) {
            _local1._1P._DW();
            return;
        }
        ;
    }

    public static function _zl():Boolean {
        var _local1:int = 1;
        while (_local1 <= _18u._s9) {
            if (((!((Parameters.data_[("hasNewsUpdate" + _local1)] == null))) && ((Parameters.data_[("hasNewsUpdate" + _local1)] == true)))) {
                return (true);
            }
            ;
            _local1++;
        }
        ;
        return (false);
    }

    public static function _4D(_arg1:String, _arg2:int, _arg3:int, _arg4:Boolean):_06T {
        var _local5:_06T;
        _local5 = new _06T().setSize(18).setColor(0xFFFFFF).setTextWidth((_Uj._0JX - (_Uk * 2)));
        _local5.setBold(true);
        if (_arg4) {
            _local5.setStringBuilder(new _1M(_arg1));
        } else {
            _local5.setStringBuilder(new _5R().setParams(_arg1));
        }
        ;
        _local5.setWordWrap(true);
        _local5.setMultiLine(true);
        _local5.setAutoSize(TextFieldAutoSize.CENTER);
        _local5.setHorizontalAlign(TextFormatAlign.CENTER);
        _local5.filters = [new DropShadowFilter(0, 0, 0)];
        _local5.x = _arg2;
        _local5.y = _arg3;
        return (_local5);
    }

    public function _Uj(_arg1:int = 1) {
        _0JX = _1CS;
        _ZZ = _1aw;
        super(_0JX, _ZZ);
        this._14T(true);
        this._4s();
        this._1vG(_arg1);
        WebMain._0b2.addEventListener(KeyboardEvent.KEY_DOWN, this._1q8);
        addEventListener(Event.REMOVED_FROM_STAGE, this.destroy);
    }
    private var _0id:_1Jg;
    private var _1eO:int = -1;
    private var _13z:TextField;
    private var _8y:TextField;
    private var _o9:TextField;
    private var _0dG:TextField;
    private var _04i:Vector.<TextField>;
    private var _1eK:Sprite;
    private var _qv:Sprite;

    override protected function makeModalBackground():Sprite {
        var _local3:DisplayObject;
        var _local1:Sprite = new Sprite();
        var _local2:DisplayObject = new _Go();
        _local2.width = (_0JX + 1);
        _local2.height = (_ZZ - 25);
        _local2.y = 27;
        _local2.alpha = 0.95;
        _local3 = new _1E2();
        _local3.width = (_0JX + 1);
        _local3.height = (_ZZ - 67);
        _local3.y = 27;
        _local3.alpha = 1;
        var _local4:_1l_ = new _1l_();
        _local4.draw(_0JX, _ZZ, _1l_._Ct);
        _local1.addChild(_local2);
        _local1.addChild(_local3);
        _local1.addChild(_local4);
        return (_local1);
    }

    private function _4s():void {
        var _local4:TextField;
        var _local1:int = _18u._s9;
        this._04i = new Vector.<TextField>(_local1, true);
        this._13z = new TextField();
        this._8y = new TextField();
        this._o9 = new TextField();
        this._0dG = new TextField();
        this._04i[0] = this._13z;
        this._04i[1] = this._8y;
        this._04i[2] = this._o9;
        this._04i[3] = this._0dG;
        var _local2:_00t = _8w._1Sz().getInstance(_00t);
        var _local3:int = 1;
        for each (_local4 in this._04i) {
            _local2.apply(_local4, 20, 0xFFFFFF, true);
            _local4.filters = _0UF;
            if ((((_local3 > 0)) && ((_local3 <= _18u._s9)))) {
                _local4.text = (("  " + _local3) + "  ");
                _local4.width = _local4.textWidth;
                _local4.x = (((_0JX * (_local3 + 3)) / 11) - (_local4.textWidth / 2));
                _local4.addEventListener(MouseEvent.ROLL_OVER, this._20U);
                _local4.addEventListener(MouseEvent.ROLL_OUT, this._Bg);
            }
            ;
            _local4.height = _local4.textHeight;
            _local4.y = (_ZZ - 33);
            _local4.selectable = false;
            _local4.addEventListener(MouseEvent.CLICK, this._1Lb);
            addChild(_local4);
            _local3++;
        }
        ;
        this._1eK = this._0Q1();
        this._qv = this._2T();
        this._1eK.x = (((_0JX * 3) / 11) - (this._qv.width / 2));
        this._1eK.y = (_ZZ - 4);
        addChild(this._1eK);
        this._qv.x = (((_0JX * 8) / 11) - (this._qv.width / 2));
        this._qv.y = (_ZZ - 4);
        addChild(this._qv);
    }

    private function _jV(_arg1:int):TextField {
        if ((_arg1 >= 0) < _18u._s9) {
            return (this._04i[(_arg1 - 1)]);
        }
        ;
        return (null);
    }

    private function _1vG(_arg1:int):void {
        var _local3:TextField;
        var _local2:Boolean = _zl();
        if ((((_arg1 < 1)) || ((_arg1 > _18u._s9)))) {
            return;
        }
        ;
        if (this._1eO != -1) {
            removeChild(this._0id);
            _local3 = this._jV(this._1eO);
            if (_local3 != null) {
                _local3.filters = _0UF;
            }
            ;
            _0Yn.play("button_click");
        }
        ;
        this._1eO = _arg1;
        var _local4:_18u = _8w._1Sz().getInstance(_18u);
        this._0id = _local4._0PM(_arg1);
        addChild(this._0id);
        _local3 = this._jV(this._1eO);
        if (_local3 != null) {
            _local3.filters = _wy;
        }
        ;
        Parameters.data_[("hasNewsUpdate" + _arg1)] = false;
        var _local5:Boolean = _zl();
        if (_local2 != _local5) {
            _0Fh();
        }
        ;
    }

    private function _0Q1():Sprite {
        var _local1:BitmapData = AssetLibrary._Rb("lofiInterface", 54);
        var _local2:Bitmap = new Bitmap(_local1);
        _local2.scaleX = 4;
        _local2.scaleY = 4;
        _local2.rotation = -90;
        var _local3:Sprite = new Sprite();
        _local3.addChild(_local2);
        _local3.addEventListener(MouseEvent.MOUSE_OVER, this._20u);
        _local3.addEventListener(MouseEvent.MOUSE_OUT, this._1Ad);
        _local3.addEventListener(MouseEvent.CLICK, this._1Lb);
        return (_local3);
    }

    private function _2T():Sprite {
        var _local1:BitmapData = AssetLibrary._Rb("lofiInterface", 55);
        var _local2:Bitmap = new Bitmap(_local1);
        _local2.scaleX = 4;
        _local2.scaleY = 4;
        _local2.rotation = -90;
        var _local3:Sprite = new Sprite();
        _local3.addChild(_local2);
        _local3.addEventListener(MouseEvent.MOUSE_OVER, this._20u);
        _local3.addEventListener(MouseEvent.MOUSE_OUT, this._1Ad);
        _local3.addEventListener(MouseEvent.CLICK, this._1Lb);
        return (_local3);
    }

    override public function onCloseClick(_arg1:MouseEvent):void {
        _0Yn.play("button_click");
    }

    public function _20U(_arg1:MouseEvent):void {
        var _local2:TextField = (_arg1.currentTarget as TextField);
        _local2.textColor = 16701832;
    }

    public function _Bg(_arg1:MouseEvent):void {
        var _local2:TextField = (_arg1.currentTarget as TextField);
        _local2.textColor = 0xFFFFFF;
    }

    public function _1Lb(_arg1:MouseEvent):void {
        switch (_arg1.currentTarget) {
            case this._qv:
                if ((this._1eO + 1) <= _18u._s9) {
                    this._1vG((this._1eO + 1));
                }
                ;
                return;
            case this._1eK:
                if ((this._1eO - 1) >= 1) {
                    this._1vG((this._1eO - 1));
                }
                ;
                return;
            case this._13z:
                this._1vG(1);
                return;
            case this._8y:
                this._1vG(2);
                return;
            case this._o9:
                this._1vG(3);
                return;
            case this._0dG:
                this._1vG(4);
                return;
        }
        ;
    }

    private function destroy(_arg1:Event):void {
        var _local2:TextField;
        WebMain._0b2.removeEventListener(KeyboardEvent.KEY_DOWN, this._1q8);
        removeEventListener(Event.REMOVED_FROM_STAGE, this.destroy);
        if (this._04i != null) {
            for each (_local2 in this._04i) {
                _local2.removeEventListener(MouseEvent.CLICK, this._1Lb);
                _local2.removeEventListener(MouseEvent.ROLL_OVER, this._20U);
                _local2.removeEventListener(MouseEvent.ROLL_OUT, this._Bg);
            }
            ;
        }
        ;
        this._1eK.removeEventListener(MouseEvent.CLICK, this._1Lb);
        this._1eK.removeEventListener(MouseEvent.MOUSE_OVER, this._20u);
        this._1eK.removeEventListener(MouseEvent.MOUSE_OUT, this._1Ad);
        this._qv.removeEventListener(MouseEvent.CLICK, this._1Lb);
        this._qv.removeEventListener(MouseEvent.MOUSE_OVER, this._20u);
        this._qv.removeEventListener(MouseEvent.MOUSE_OUT, this._1Ad);
    }

    private function _1q8(_arg1:KeyboardEvent):void {
        if (_arg1.keyCode == _1N.RIGHT) {
            if ((this._1eO + 1) <= _18u._s9) {
                this._1vG((this._1eO + 1));
            }
            ;
        } else {
            if (_arg1.keyCode == _1N.LEFT) {
                if ((this._1eO - 1) >= 1) {
                    this._1vG((this._1eO - 1));
                }
                ;
            }
            ;
        }
        ;
    }

    private function _20u(_arg1:MouseEvent):void {
        _arg1.currentTarget.transform.colorTransform = _1N3;
    }

    private function _1Ad(_arg1:MouseEvent):void {
        _arg1.currentTarget.transform.colorTransform = MoreColorUtil.identity;
    }


}
}//package _0AI

