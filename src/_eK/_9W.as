// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_eK._9W

package _eK {
import _04j._1g7;

import _08Y._sC;

import _0CT._8w;

import _6u._00t;

import _MU._0t5;

import _n._19y;

import flash.display.Bitmap;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.ColorTransform;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.utils.getTimer;

public class _9W extends _0t5 {

    public function _9W(_arg1:Boolean = false, _arg2:Boolean = false) {
        var _local3:Shape;
        var _local4:int;
        this._x7 = new Vector.<Shape>();
        super();
        if (_arg1) {
            this._0Vx = _arg1;
            addEventListener(MouseEvent.ROLL_OVER, this._S7);
        }
        ;
        _NQ(true, 16689154, true);
        if (_arg2) {
            _local4 = 0;
            while (_local4 < 3) {
                _local3 = _sC._b((56 + (_local4 * 10)), 0x545454, (-5 + (-5 * _local4)), false, true, 4);
                addChild(_local3);
                this._x7.push(_local3);
                _local4++;
            }
            ;
            this._15m = (this._x7.length - 1);
            addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        ;
    }
    public var _0Vx:Boolean = false;
    private var _0W:TextField;
    private var _az:_19y = null;
    private var _x7:Vector.<Shape>;
    private var _1Mk:int = 0;
    private var _1m7:int = 1;
    private var _15m:int = 0;
    private var _Va:TextField;
    private var _47:Bitmap;
    private var _0Dh:Sprite;
    private var _uJ:Sprite;
    private var _1nk:Number = 0.018;
    private var _3V:Boolean = false;

    override public function updateTitle():void {
        if (!_02M) {
            this._0gp(196098);
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            if (this._az) {
                this._az._0cB(196098);
                this._az.draw();
            }
            ;
            if (((!((this._0Dh == null))) && (!((this._0Dh.parent == null))))) {
                this._uJ.visible = false;
                this._uJ.alpha = 0;
                this._0Dh.alpha = 1;
            }
            ;
        } else {
            if (this._x7.length > 0) {
                addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            }
            ;
            if (((!((this._0Dh == null))) && (!((this._0Dh.parent == null))))) {
                this._uJ.visible = true;
            }
            ;
            if (this._az) {
                this._az._0cB(0x545454);
                this._az.draw();
            }
            ;
        }
        ;
    }

    public function _0kO():void {
        this._0gp(0xFF0000);
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        new _1g7(1.25, addEventListener, Event.ENTER_FRAME, this.onEnterFrame);
    }

    public function _1Hj():void {
        if (this._Va == null) {
            this._Va = this._dV();
            this._Va.text = "✓";
            this._Va.textColor = 0xFF00;
            addChild(this._Va);
            this._Va.y = Math.round((((height / 2) - (this._Va.textHeight / 2)) / 7));
        }
        ;
    }

    public function _0xv():void {
        if (this._Va == null) {
            this._Va = this._dV();
            this._Va.text = "?";
            this._Va.textColor = 0xFF0000;
            addChild(this._Va);
            this._Va.y = Math.round((((height / 2) - (this._Va.textHeight / 2)) / 7));
        }
        ;
    }

    public function _xv():void {
        if (((!((this._Va == null))) && (!((this._Va.parent == null))))) {
            removeChild(this._Va);
        }
        ;
    }

    public function _5H(_arg1:String, _arg2:int, _arg3:int):void {
        this._0W = new TextField();
        this._0W.text = _arg1;
        this._0W.autoSize = TextFieldAutoSize.LEFT;
        var _local4:_00t = _8w._1Sz().getInstance(_00t);
        _local4.apply(this._0W, _arg2, _arg3, false, true);
        this._0W.y = (this.y + this.height);
        this._0W.x = ((this.x + (this.width / 2)) - (this._0W.width / 2));
    }

    public function _fW(_arg1:_19y):void {
        this._az = _arg1;
    }

    public function _0gp(_arg1:int):void {
        var _local3:ColorTransform;
        var _local2:int = (this._x7.length - 1);
        while (_local2 >= 0) {
            _local3 = this._x7[_local2].transform.colorTransform;
            _local3.color = _arg1;
            _local3.alphaMultiplier = (1 - (_local2 * 0.3));
            this._x7[_local2].transform.colorTransform = _local3;
            _local2--;
        }
        ;
    }

    public function _LL(_arg1:int):void {
        this._1m7 = _arg1;
        if (_arg1 == -1) {
            this._15m = 0;
        } else {
            if (_arg1 == 1) {
                this._15m = (this._x7.length - 1);
            }
            ;
        }
        ;
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    public function _0pe():void {
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    public function _1SR(_arg1:Bitmap):void {
        this._47 = _arg1;
        var _local2:Bitmap = new Bitmap(_arg1.bitmapData);
        this._0Dh = new Sprite();
        this._uJ = new Sprite();
        this._0Dh.x = ((100 - this._47.width) * 0.5);
        this._0Dh.y = ((46 - this._47.height) * 0.5);
        this._uJ.x = this._0Dh.x;
        this._uJ.y = this._0Dh.y;
        this._0Dh.addChild(this._47);
        this._uJ.addChild(_local2);
        addChild(this._uJ);
        addChild(this._0Dh);
        if (((!((_Vc == null))) && (!((getChildIndex(_Vc) == -1))))) {
            removeChild(_Vc);
            addChild(_Vc);
        }
        ;
        this._0Dh.filters = [_0Nj];
        var _local3:ColorTransform = new ColorTransform();
        _local3.color = 0x292929;
        this._0Dh.transform.colorTransform = _local3;
        this._uJ.alpha = 0;
    }

    private function _dV():TextField {
        var _local1:_00t = new _00t();
        var _local2:TextField = new TextField();
        var _local3:TextFormat = _local2.defaultTextFormat;
        _local3.size = 36;
        _local3.font = _local1._0OE().getName();
        _local3.bold = true;
        _local3.align = "center";
        _local2.defaultTextFormat = _local3;
        _local2.alpha = 0.8;
        _local2.width = width;
        _local2.selectable = false;
        return (_local2);
    }

    private function _1ad():void {
        if ((((((this._3V == false)) && (!((this._0W == null))))) && (!((this._0W.parent == null))))) {
            removeChild(this._0W);
        }
        ;
    }

    private function _S7(_arg1:Event):void {
        if (_02M) {
            this._3V = true;
            if (((!((this._0W == null))) && ((this._0W.parent == null)))) {
                addChild(this._0W);
            }
            ;
            removeEventListener(MouseEvent.ROLL_OVER, this._S7);
            addEventListener(MouseEvent.ROLL_OUT, this._0q4);
        }
        ;
    }

    private function _0q4(_arg1:Event):void {
        if (_02M) {
            this._3V = false;
            new _1g7(0.5, this._1ad);
            addEventListener(MouseEvent.ROLL_OVER, this._S7);
            removeEventListener(MouseEvent.ROLL_OUT, this._0q4);
        }
        ;
    }

    private function onEnterFrame(_arg1:Event):void {
        var _local3:ColorTransform;
        var _local4:int;
        var _local5:int;
        var _local2:int = uint(((getTimer() / 500) % 3));
        if (_local2 != this._1Mk) {
            this._1Mk = _local2;
            _local4 = 0;
            while (_local4 < this._x7.length) {
                _local3 = this._x7[_local4].transform.colorTransform;
                _local3.color = 0x545454;
                _local3.alphaMultiplier = (1 - (_local4 * 0.3));
                this._x7[_local4].transform.colorTransform = _local3;
                _local4++;
            }
            ;
            _local5 = (this._15m - (this._1Mk * this._1m7));
            _local3 = this._x7[_local5].transform.colorTransform;
            _local3.color = 196098;
            this._x7[_local5].transform.colorTransform = _local3;
        }
        ;
        if (this._47) {
            if ((((this._0Dh.alpha == 1)) || ((this._0Dh.alpha == 0)))) {
                this._1nk = (this._1nk * -1);
            }
            ;
            this._0Dh.alpha = (this._0Dh.alpha + this._1nk);
            this._uJ.alpha = (this._uJ.alpha - this._1nk);
            if (this._0Dh.alpha >= 1) {
                this._0Dh.alpha = 1;
                this._uJ.alpha = 0;
            } else {
                if (this._0Dh.alpha <= 0) {
                    this._0Dh.alpha = 0;
                    this._uJ.alpha = 1;
                }
                ;
            }
            ;
        }
        ;
    }


}
}//package _eK

