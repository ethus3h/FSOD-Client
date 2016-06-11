// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_nH._1eP

package _nH {
import _04g._AJ;

import _0CT._8w;

import _0Mr._5R;

import _0Sj._05E;

import _1Sm._sy;

import _1nK._0MP;
import _1nK._11e;

import _6u._00t;

import _DO.GTween;

import _eK._9W;

import _n._19y;

import com.company.assembleegameclient.map._1wN;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.util.Currency;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.filters.DropShadowFilter;
import flash.filters.GlowFilter;
import flash.net.URLRequest;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;

public class _1eP extends _AJ {

    public static const closed:_sy = new _sy();
    public static const _1CS:int = 600;
    public static const _1aw:int = 600;

    public static var _Go:Class = _1WP;
    public static var _0ub:Class = _1A7;
    public static var _0Tl:Class = _1D3;
    public static var _k7:Class = _ty;

    public function _1eP():void {
        this._0FI = new _19y("Turn in!", 36, 0, Currency.INVALID, true);
        this._09X = new _11e();
        super(_1CS, _1aw);
        this._20A = new _9W(true, true);
        this._20A._0QF(false);
        this._0Mo = new _9W();
        this._0Mo._0QF(true);
        this._0KP = new _9W();
        this._0KP._0QF(true);
    }
    public var _0FI:_19y;
    private var _20A:_9W;
    private var _0Mo:_9W;
    private var _0KP:_9W;
    private var _09X:_0MP;
    private var _71:DisplayObject;
    private var _1uU:int = -1;
    private var _Zf:DisplayObject;

    override protected function makeModalBackground():Sprite {
        x = 0;
        var _local1:Sprite = new Sprite();
        var _local2:DisplayObject = new _Go();
        _local2.width = _0JX;
        _local2.height = _ZZ;
        _local2.alpha = 0.74;
        _local1.addChild(_local2);
        return (_local1);
    }

    public function init(_arg1:int, _arg2:int, _arg3:String, _arg4:String):void {
        var _local7:TextField;
        var _local10:TextFormat;
        var _local5:String = ("Tier " + _arg1.toString());
        setTitle(_local5, true);
        this._Zf = new _0Tl();
        addChild(this._Zf);
        this._Zf.x = (((_0JX / 4) * 1.1) - (this._Zf.width / 2));
        this._Zf.y = ((_ZZ / 20) + 2);
        this._1uU = (this._Zf.x + (this._Zf.width / 2));
        title.setSize(20);
        title.setColor(16689154);
        title.x = (((_0JX / 4) * 1.1) - (title.width / 2));
        title.y = ((this._Zf.y + this._Zf.height) + 5);
        title.setBold(false);
        if (title.textField != null) {
            _local10 = title.getTextFormat(0, _local5.length);
            _local10.leading = 10;
            title.setTextFormat(_local10, 0, _local5.length);
        }
        ;
        var _local6:TextFormat = new TextFormat();
        _local6.size = 13;
        _local6.font = "Myraid Pro";
        _local6.align = TextFormatAlign.CENTER;
        _local7 = new TextField();
        _local7.defaultTextFormat = _local6;
        _local7.text = "All Quests refresh daily at 5pm Pacific Time";
        _local7.wordWrap = true;
        _local7.width = 600;
        _local7.height = 200;
        _local7.y = 554;
        _local7.textColor = 16689154;
        _local7.alpha = 0.8;
        _local7.selectable = false;
        addChild(_local7);
        var _local8:String = _5R._n7(ObjectLibrary._1w3[_arg2]);
        this._215(_arg3, _local8);
        this._SU();
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        addChild(this._20A);
        addChild(this._0Mo);
        this._0Mo._1Hj();
        if (_arg1 == 1) {
            this._0Mo.visible = false;
        }
        ;
        addChild(this._0KP);
        this._0KP._0xv();
        this._20A._5H("Drag the item from your inventory into the slot", 14, 0xFFFF);
        this._20A._fW(this._0FI);
        addChild(this._0FI);
        this._0FI._1Nq("Turn in!");
        this._0FI._1S0(1.3);
        this._0FI._0Xr(2.4);
        var _local9:BitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg2, 80, true, false);
        this._20A._1SR(new Bitmap(_local9));
        ((this._09X) && (this._09X.unload()));
        this._09X.contentLoaderInfo.addEventListener(Event.COMPLETE, this._PO);
        this._09X.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, this._e1);
        this._09X.contentLoaderInfo.addEventListener(IOErrorEvent.DISK_ERROR, this._e1);
        this._09X.contentLoaderInfo.addEventListener(IOErrorEvent.NETWORK_ERROR, this._e1);
        this._09X.load(new URLRequest(_arg4));
        this._1Ku();
    }

    public function _In():_9W {
        return (this._20A);
    }

    public function _W7():_19y {
        return (this._0FI);
    }

    public function _do():void {
        this._SU();
        var _local1:TextField = new TextField();
        var _local2 = "ALL QUESTS COMPLETED!";
        var _local3 = "";
        _local1.text = ((_local2 + "\n\n\n\n") + _local3);
        _local1.width = 600;
        var _local4:_00t = _8w._1Sz().getInstance(_00t);
        var _local5:TextFormat = _local4.apply(_local1, 32, 0xFFFFFF, true, true);
        _local1.selectable = false;
        _local1.x = 0;
        _local1.y = 150;
        _local1.embedFonts = true;
        _local1.filters = [new GlowFilter(49941)];
        addChild(new _1wN(1));
        addChild(_local1);
        _local1 = new TextField();
        _local2 = "";
        _local3 = "Return at 5pm Pacific Time for New Quests!";
        _local1.text = ((_local2 + "\n\n\n") + _local3);
        _local1.width = 600;
        _local4.apply(_local1, 17, 49941, false, true);
        _local1.selectable = false;
        _local1.x = 0;
        _local1.y = 150;
        _local1.embedFonts = true;
        _local1.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(_local1);
    }

    public function _215(_arg1:String, _arg2:String = ""):void {
        var _local4:String;
        var _local6:TextFormat;
        var _local3:int = _arg1.indexOf("{goal}");
        if (_local3 != -1) {
            _local4 = _arg1.split("{goal}").join(_arg2);
            _wl(_local4, true);
        } else {
            _local4 = _arg1;
        }
        ;
        _wl(_local4, true);
        desc.setColor(16689154);
        desc.setBold(false);
        desc.setSize(15);
        desc.setTextWidth(315);
        desc.x = ((((_0JX / 4) * 1.1) - (desc.width / 2)) + 3);
        desc.y = (((title) != null) ? ((title.y + title.height) + 6) : 165);
        desc.setAutoSize(TextFieldAutoSize.LEFT);
        desc.setHorizontalAlign("left");
        desc.filters = [new DropShadowFilter(0, 0, 0)];
        desc.setLeftMargin(14);
        var _local5:TextFormat = desc.getTextFormat(0, _local4.length);
        _local5.leading = 4;
        desc.setTextFormat(_local5, 0, _local4.length);
        if (_local3 != -1) {
            _local6 = desc.getTextFormat(_local3, (_local3 + _arg2.length));
            _local6.color = 196098;
            _local6.bold = true;
            desc.setTextFormat(_local6, _local3, (_local3 + _arg2.length));
        }
        ;
    }

    public function _1lI():void {
        var _local1:DisplayObject = new _0ub();
        _local1.x = 120;
        _local1.y = 180;
        _local1.scaleX = 0.1;
        _local1.scaleY = 0.1;
        new GTween(_local1, 0.4, {
            alpha: 1,
            scaleX: 0.6,
            scaleY: 0.6,
            x: 30,
            y: 130
        });
        addChild(_local1);
        var _local2:DisplayObject = new _k7();
        _local2.x = (this._71.x + 4);
        _local2.y = (this._71.y + 4);
        _local2.alpha = 0;
        addChild(_local2);
        new GTween(_local2, 0.4, {alpha: 1});
        new GTween(desc, 0.4, {alpha: 0.2});
        new GTween(this._Zf, 0.4, {alpha: 0.2});
        new GTween(title, 0.4, {alpha: 0.2});
        this._20A._0gp(0x545454);
        this._20A._0pe();
    }

    public function _WM():void {
        this._20A._LL(-1);
    }

    private function _1Ku():void {
        this._20A.x = (this._1uU - (this._20A.width / 2));
        this._20A.y = 350;
        this._0Mo.width = (this._0Mo.width * 0.8);
        this._0Mo.height = (this._0Mo.height * 0.8);
        this._0Mo.x = (this._20A.x - this._0Mo.width);
        this._0Mo.y = (this._20A.y + ((82 - this._0Mo.height) / 2));
        this._0KP.width = (this._0KP.width * 0.8);
        this._0KP.height = (this._0KP.height * 0.8);
        this._0KP.x = (this._20A.x + this._20A.width);
        this._0KP.y = (this._20A.y + ((82 - this._0KP.height) / 2));
        this._0FI.x = (this._1uU - (this._0FI.width / 2));
        this._0FI.y = (this._20A.y + 100);
        this._0FI.height = 50;
        background = this.makeModalBackground();
    }

    private function _06V():void {
        if (this._71 == null) {
            return;
        }
        ;
        this._71.alpha = 0;
        addChild(this._71);
        var _local1:int = 8;
        this._71.x = ((desc.x + desc.width) + 1);
        this._71.y = (_ZZ / 20);
        var _local2:Shape = new Shape();
        var _local3:Graphics = _local2.graphics;
        _local3.beginFill(0);
        _local3.drawRect(0, 0, 600, 550);
        _local3.endFill();
        addChild(_local2);
        this._71.mask = _local2;
        new GTween(this._71, 1.25, {alpha: 1});
    }

    private function _0zc():void {
        closed.dispatch();
    }

    private function _SU():void {
        var _local1:_05E = new _05E(0.82);
        addChild(_local1);
        _local1.y = 4;
        _local1.x = ((_0JX - _local1.width) - 5);
        _local1.clicked.add(this._0zc);
        _Mt = _local1;
    }

    private function _PO(_arg1:Event):void {
        this._09X.removeEventListener(Event.COMPLETE, this._PO);
        this._09X.removeEventListener(IOErrorEvent.IO_ERROR, this._e1);
        this._09X.removeEventListener(IOErrorEvent.DISK_ERROR, this._e1);
        this._09X.removeEventListener(IOErrorEvent.NETWORK_ERROR, this._e1);
        if (((!((this._71 == null))) && (!((this._71.parent == null))))) {
            removeChild(this._71);
        }
        ;
        this._71 = DisplayObject(this._09X);
        this._06V();
    }

    private function _e1(_arg1:IOErrorEvent):void {
        this._09X.removeEventListener(Event.COMPLETE, this._PO);
        this._09X.removeEventListener(IOErrorEvent.IO_ERROR, this._e1);
        this._09X.removeEventListener(IOErrorEvent.DISK_ERROR, this._e1);
        this._09X.removeEventListener(IOErrorEvent.NETWORK_ERROR, this._e1);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        _Mt.clicked.remove(this._0zc);
    }


}
}//package _nH

