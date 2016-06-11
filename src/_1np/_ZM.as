// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1np._ZM

package _1np {
import _08f.Console;
import _08f._0Rt;
import _08f._0eS;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TextEvent;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;

public class _ZM extends Sprite {

    public static const _1yK:String = "draggingStarted";
    public static const _1q:String = "draggingEnded";
    public static const _Fr:String = "scalingStarted";
    public static const _d5:String = "scalingEnded";
    public static const _OH:String = "visibilityChanged";
    private static const TEXT_ROLL:String = "TEXT_ROLL";

    public function _ZM(_arg1:Console) {
        this.console = _arg1;
        this.bg = new Sprite();
        this.bg.name = "background";
        addChild(this.bg);
    }
    public var _1by:Boolean = true;
    protected var console:Console;
    protected var bg:Sprite;
    protected var scaler:Sprite;
    protected var _1FH:TextField;
    protected var _Zc:int = 18;
    protected var _0Dk:int = 18;
    private var _5Y:Array;
    private var _0rK:Point;
    private var _gI:TextField;
    private var _t:Point;

    override public function set visible(_arg1:Boolean):void {
        super.visible = _arg1;
        dispatchEvent(new Event(_OH));
    }

    override public function get width():Number {
        return (this.bg.width);
    }

    override public function set width(_arg1:Number):void {
        if (_arg1 < this._Zc) {
            _arg1 = this._Zc;
        }
        ;
        if (this.scaler) {
            this.scaler.x = _arg1;
        }
        ;
        this.bg.width = _arg1;
    }

    override public function get height():Number {
        return (this.bg.height);
    }

    override public function set height(_arg1:Number):void {
        if (_arg1 < this._0Dk) {
            _arg1 = this._0Dk;
        }
        ;
        if (this.scaler) {
            this.scaler.y = _arg1;
        }
        ;
        this.bg.height = _arg1;
    }

    public function get _EI():Boolean {
        return (((this.scaler) ? true : false));
    }

    public function set _EI(_arg1:Boolean):void {
        var _local2:uint;
        if (((_arg1) && (!(this.scaler)))) {
            _local2 = (8 + (this.style.controlSize * 0.5));
            this.scaler = new Sprite();
            this.scaler.name = "scaler";
            this.scaler.graphics.beginFill(0, 0);
            this.scaler.graphics.drawRect((-(_local2) * 1.5), (-(_local2) * 1.5), (_local2 * 1.5), (_local2 * 1.5));
            this.scaler.graphics.endFill();
            this.scaler.graphics.beginFill(this.style.controlColor, this.style._0r3);
            this.scaler.graphics.moveTo(0, 0);
            this.scaler.graphics.lineTo(-(_local2), 0);
            this.scaler.graphics.lineTo(0, -(_local2));
            this.scaler.graphics.endFill();
            this.scaler.buttonMode = true;
            this.scaler.doubleClickEnabled = true;
            this.scaler.addEventListener(MouseEvent.MOUSE_DOWN, this._e, false, 0, true);
            addChildAt(this.scaler, (getChildIndex(this.bg) + 1));
        } else {
            if (((!(_arg1)) && (this.scaler))) {
                if (contains(this.scaler)) {
                    removeChild(this.scaler);
                }
                ;
                this.scaler = null;
            }
            ;
        }
        ;
    }

    protected function get config():_0Rt {
        return (this.console.config);
    }

    protected function get style():_0eS {
        return (this.console.config.style);
    }

    public function close():void {
        this._7o();
        this.console.panels.tooltip();
        if (parent) {
            parent.removeChild(this);
        }
        ;
        dispatchEvent(new Event(Event.CLOSE));
    }

    public function _0Mu(_arg1:Array, _arg2:Array):void {
        this._5Y = [_arg1, _arg2];
    }

    public function moveBackSafePosition():void {
        if (this._t != null) {
            if (((((((((x + this.width) < 10)) || (((stage) && ((stage.stageWidth < (x + 10))))))) || (((y + this.height) < 10)))) || (((stage) && ((stage.stageHeight < (y + 20))))))) {
                x = this._t.x;
                y = this._t.y;
            }
            ;
            this._t = null;
        }
        ;
    }

    public function _As():void {
        this._05y(null);
    }

    public function _kp(_arg1:String, _arg2:Boolean = false):TextField {
        var _local3:TextField = new TextField();
        _local3.name = _arg1;
        _local3.styleSheet = this.style.styleSheet;
        if (_arg2) {
            _local3.background = true;
            _local3.backgroundColor = this.style.backgroundColor;
        }
        ;
        return (_local3);
    }

    protected function init(_arg1:Number, _arg2:Number, _arg3:Boolean = false, _arg4:Number = -1, _arg5:Number = -1, _arg6:int = -1):void {
        this.bg.graphics.clear();
        this.bg.graphics.beginFill((((_arg4 >= 0)) ? _arg4 : this.style.backgroundColor), (((_arg5 >= 0)) ? _arg5 : this.style._0r3));
        if (_arg6 < 0) {
            _arg6 = this.style._1wi;
        }
        ;
        if (_arg6 <= 0) {
            this.bg.graphics.drawRect(0, 0, 100, 100);
        } else {
            this.bg.graphics.drawRoundRect(0, 0, (_arg6 + 10), (_arg6 + 10), _arg6, _arg6);
            this.bg.scale9Grid = new Rectangle((_arg6 * 0.5), (_arg6 * 0.5), 10, 10);
        }
        ;
        this._EI = _arg3;
        this.width = _arg1;
        this.height = _arg2;
    }

    protected function _0C(_arg1:DisplayObject, _arg2:Boolean = false):void {
        if (_arg2) {
            _arg1.removeEventListener(MouseEvent.MOUSE_DOWN, this._YH);
        } else {
            _arg1.addEventListener(MouseEvent.MOUSE_DOWN, this._YH, false, 0, true);
        }
        ;
    }

    protected function _07l(_arg1:TextField, _arg2:Function, _arg3:Function = null):void {
        _arg1.addEventListener(MouseEvent.MOUSE_MOVE, _T, false, 0, true);
        _arg1.addEventListener(MouseEvent.ROLL_OUT, _C1, false, 0, true);
        _arg1.addEventListener(TEXT_ROLL, _arg2, false, 0, true);
        if (_arg3 != null) {
            _arg1.addEventListener(TextEvent.LINK, _arg3, false, 0, true);
        }
        ;
    }

    private function _0Sm():void {
        this._gI.text = (((("<low>" + x) + ",") + y) + "</low>");
    }

    private function _7o():void {
        this._5Y = null;
        if (stage) {
            stage.removeEventListener(MouseEvent.MOUSE_UP, this._Lk);
            stage.removeEventListener(MouseEvent.MOUSE_MOVE, this._1w);
        }
        ;
        if (((this._gI) && (this._gI.parent))) {
            this._gI.parent.removeChild(this._gI);
        }
        ;
        this._gI = null;
        dispatchEvent(new Event(_1q));
    }

    private function _eL():void {
        this._gI.text = (((("<low>" + this.width) + ",") + this.height) + "</low>");
    }

    private function _1GY(_arg1:Number, _arg2:Number):Point {
        return (new Point(this._0yn(_arg1, true), this._0yn(_arg2, false)));
    }

    private function _0yn(_arg1:Number, _arg2:Boolean):Number {
        var _local6:Number;
        var _local3:Number = (_arg1 + this.width);
        var _local4:Array = this._5Y[((_arg2) ? 0 : 1)];
        var _local5:int = this.style._U2;
        for each (_local6 in _local4) {
            if (Math.abs((_local6 - _arg1)) < _local5) {
                return (_local6);
            }
            ;
            if (Math.abs((_local6 - _local3)) < _local5) {
                return ((_local6 - this.width));
            }
            ;
        }
        ;
        return (_arg1);
    }

    private static function _C1(_arg1:MouseEvent):void {
        TextField(_arg1.currentTarget).dispatchEvent(new TextEvent(TEXT_ROLL));
    }

    private static function _T(_arg1:MouseEvent):void {
        var index:int;
        var scrollH:Number;
        var w:Number;
        var X:XML;
        var txtformat:XML;
        var e:MouseEvent = _arg1;
        var field:TextField = (e.currentTarget as TextField);
        if (field.scrollH > 0) {
            scrollH = field.scrollH;
            w = field.width;
            field.width = (w + scrollH);
            index = field.getCharIndexAtPoint((field.mouseX + scrollH), field.mouseY);
            field.width = w;
            field.scrollH = scrollH;
        } else {
            index = field.getCharIndexAtPoint(field.mouseX, field.mouseY);
        }
        ;
        var url:String;
        if (index > 0) {
            try {
                X = new XML(field.getXMLText(index, (index + 1)));
                if (X.hasOwnProperty("textformat")) {
                    txtformat = (X["textformat"][0] as XML);
                    if (txtformat) {
                        url = txtformat.@url;
                    }
                    ;
                }
                ;
            } catch (err:Error) {
                url = null;
            }
            ;
        }
        ;
        field.dispatchEvent(new TextEvent(TEXT_ROLL, false, false, url));
    }

    private function _YH(_arg1:MouseEvent):void {
        if (((!(stage)) || (!(this._1by)))) {
            return;
        }
        ;
        this._gI = this._kp("positioningField", true);
        this._gI.mouseEnabled = false;
        this._gI.autoSize = TextFieldAutoSize.LEFT;
        addChild(this._gI);
        this._0Sm();
        this._t = new Point(x, y);
        this._0rK = new Point(mouseX, mouseY);
        this._5Y = [[], []];
        dispatchEvent(new Event(_1yK));
        stage.addEventListener(MouseEvent.MOUSE_UP, this._Lk, false, 0, true);
        stage.addEventListener(MouseEvent.MOUSE_MOVE, this._1w, false, 0, true);
    }

    private function _1w(_arg1:MouseEvent = null):void {
        if (this.style._U2 == 0) {
            return;
        }
        ;
        var _local2:Point = this._1GY((parent.mouseX - this._0rK.x), (parent.mouseY - this._0rK.y));
        x = _local2.x;
        y = _local2.y;
        this._0Sm();
    }

    private function _Lk(_arg1:MouseEvent):void {
        this._7o();
    }

    private function _e(_arg1:Event):void {
        this._gI = this._kp("resizingField", true);
        this._gI.mouseEnabled = false;
        this._gI.autoSize = TextFieldAutoSize.RIGHT;
        this._gI.x = -4;
        this._gI.y = -17;
        this.scaler.addChild(this._gI);
        this._eL();
        this._0rK = new Point(this.scaler.mouseX, this.scaler.mouseY);
        this._5Y = [[], []];
        this.scaler.stage.addEventListener(MouseEvent.MOUSE_UP, this._05y, false, 0, true);
        this.scaler.stage.addEventListener(MouseEvent.MOUSE_MOVE, this._0AV, false, 0, true);
        dispatchEvent(new Event(_Fr));
    }

    private function _0AV(_arg1:Event = null):void {
        var _local2:Point = this._1GY(((x + mouseX) - this._0rK.x), ((y + mouseY) - this._0rK.x));
        _local2.x = (_local2.x - x);
        _local2.y = (_local2.y - y);
        this.width = (((_local2.x < this._Zc)) ? this._Zc : _local2.x);
        this.height = (((_local2.y < this._0Dk)) ? this._0Dk : _local2.y);
        this._eL();
    }

    private function _05y(_arg1:Event):void {
        this.scaler.stage.removeEventListener(MouseEvent.MOUSE_UP, this._05y);
        this.scaler.stage.removeEventListener(MouseEvent.MOUSE_MOVE, this._0AV);
        this._0AV();
        this._5Y = null;
        if (((this._gI) && (this._gI.parent))) {
            this._gI.parent.removeChild(this._gI);
        }
        ;
        this._gI = null;
        dispatchEvent(new Event(_d5));
    }


}
}//package _1np

