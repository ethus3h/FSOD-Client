// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_3q._0av

package _3q {
import _0Mr._5R;

import _0y9._06T;

import _1Kr._1E8;

import _1Sm._sy;

import _1pV.Timespan;
import _1pV._nD;

import _6u._TG;

import _U1._1O0;

import com.company.assembleegameclient.ui._1Db;
import com.company.rotmg.graphics.ScreenGraphic;

import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _0av extends Sprite {

    public const _1Gw:_sy = new _sy(Timespan);
    public const _1tk:_sy = new _sy(_nD);
    public const close:_sy = new _sy();
    private const _0k7:Vector.<_G5> = new <_G5>[];
    private const _mU:Object = {};

    public function _0av() {
        this._0NM();
        this._17L();
        this._0vg();
        this._05P();
        this._07E();
        this._xT();
        this._1gh();
        this._fl();
        this._1Fs();
        this._1mg();
    }
    private var title:_06T;
    private var _0rs:_06T;
    private var _1z:_06T;
    private var _1cB:Sprite;
    private var _Mt:_1O0;
    private var _11P:_1Db;
    private var _Rf:Sprite;
    private var _1je:_OO;
    private var legends:Vector.<_nD>;
    private var count:int;

    public function clear():void {
        ((this._Rf) && (this._0Dq()));
        this._Rf = null;
        this._11P.visible = false;
    }

    public function _1S5(_arg1:Timespan, _arg2:Vector.<_nD>):void {
        this.clear();
        this._03H(this._mU[_arg1._yr()]);
        this._Rf = new Sprite();
        this.legends = _arg2;
        this.count = _arg2.length;
        this._0k7.length = this.count;
        this._1z.visible = (this.count == 0);
        this._08L();
        this._1cB.addChild(this._Rf);
        this._0EB();
    }

    public function _0NV():void {
        this._0rs.visible = true;
    }

    public function _00A():void {
        this._0rs.visible = false;
    }

    private function _0NM():void {
        addChild(new _1E8());
    }

    private function _17L():void {
        this.title = new _06T().setSize(32).setColor(0xB3B3B3);
        this.title.setAutoSize(TextFieldAutoSize.CENTER);
        this.title.setBold(true);
        this.title.setStringBuilder(new _5R().setParams(_TG._0p3));
        this.title.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this.title.x = (400 - (this.title.width / 2));
        this.title.y = 24;
        addChild(this.title);
    }

    private function _0vg():void {
        this._0rs = new _06T().setSize(22).setColor(0xB3B3B3);
        this._0rs.setBold(true);
        this._0rs.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE);
        this._0rs.setStringBuilder(new _5R().setParams(_TG._1UX));
        this._0rs.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._0rs.x = (800 / 2);
        this._0rs.y = (600 / 2);
        this._0rs.visible = false;
        addChild(this._0rs);
    }

    private function _05P():void {
        this._1z = new _06T().setSize(22).setColor(0xB3B3B3);
        this._1z.setBold(true);
        this._1z.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE);
        this._1z.setStringBuilder(new _5R().setParams(_TG._0S5));
        this._1z.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._1z.x = (800 / 2);
        this._1z.y = (600 / 2);
        this._1z.visible = false;
        addChild(this._1z);
    }

    private function _07E():void {
        var _local1:Shape;
        _local1 = new Shape();
        var _local2:Graphics = _local1.graphics;
        _local2.beginFill(0);
        _local2.drawRect(0, 0, _G5.WIDTH, 430);
        _local2.endFill();
        this._1cB = new Sprite();
        this._1cB.x = 10;
        this._1cB.y = 110;
        this._1cB.addChild(_local1);
        this._1cB.mask = _local1;
        addChild(this._1cB);
    }

    private function _xT():void {
        addChild(new ScreenGraphic());
    }

    private function _1gh():void {
        var _local1:Shape = new Shape();
        addChild(_local1);
        var _local2:Graphics = _local1.graphics;
        _local2.lineStyle(2, 0x545454);
        _local2.moveTo(0, 100);
        _local2.lineTo(800, 100);
    }

    private function _fl():void {
        this._11P = new _1Db(16, 400);
        this._11P.x = ((800 - this._11P.width) - 4);
        this._11P.y = 104;
        addChild(this._11P);
    }

    private function _1Fs():void {
        var _local1:Vector.<Timespan> = Timespan._QL;
        var _local2:int = _local1.length;
        var _local3:int;
        while (_local3 < _local2) {
            this._08P(_local1[_local3], _local3);
            _local3++;
        }
        ;
    }

    private function _08P(_arg1:Timespan, _arg2:int):_OO {
        var _local3:_OO = new _OO(_arg1);
        this._mU[_arg1._yr()] = _local3;
        _local3.x = (20 + (_arg2 * 90));
        _local3.y = 70;
        _local3.selected.add(this._5U);
        addChild(_local3);
        return (_local3);
    }

    private function _5U(_arg1:_OO):void {
        if (this._1je != _arg1) {
            this._1z9(_arg1);
        }
        ;
    }

    private function _1z9(_arg1:_OO):void {
        this._03H(_arg1);
        this._1Gw.dispatch(this._1je._0Ud());
    }

    private function _03H(_arg1:_OO):void {
        ((this._1je) && (this._1je._1dU(false)));
        this._1je = _arg1;
        this._1je._1dU(true);
    }

    private function _1mg():void {
        this._Mt = new _1O0(_TG._t8, 36, false);
        this._Mt.setAutoSize(TextFieldAutoSize.CENTER);
        this._Mt.setVerticalAlign(_06T.MIDDLE);
        this._Mt.x = 400;
        this._Mt.y = 553;
        addChild(this._Mt);
        this._Mt.addEventListener(MouseEvent.CLICK, this.onCloseClick);
    }

    private function _0Dq():void {
        var _local1:_G5;
        for each (_local1 in this._0k7) {
            _local1.selected.remove(this._05I);
        }
        ;
        this._0k7.length = 0;
        this._1cB.removeChild(this._Rf);
        this._Rf = null;
    }

    private function _08L():void {
        var _local1:int;
        while (_local1 < this.count) {
            this._0k7[_local1] = this._06I(_local1);
            _local1++;
        }
        ;
    }

    private function _06I(_arg1:int):_G5 {
        var _local2:_nD = this.legends[_arg1];
        _local2._0xR = (_arg1 + 1);
        var _local3:_G5 = new _G5(_local2);
        _local3.y = (_arg1 * _G5.HEIGHT);
        _local3.selected.add(this._05I);
        this._Rf.addChild(_local3);
        return (_local3);
    }

    private function _0EB():void {
        if (this._Rf.height > 400) {
            this._11P.visible = true;
            this._11P._cf(400, this._Rf.height);
            this._11P.addEventListener(Event.CHANGE, this._bI);
            this._0qb();
        } else {
            this._11P.removeEventListener(Event.CHANGE, this._bI);
            this._11P.visible = false;
        }
        ;
    }

    private function _0qb():void {
        var _local2:int;
        var _local3:int;
        var _local1:_nD = this._qs();
        if (_local1) {
            _local2 = this.legends.indexOf(_local1);
            _local3 = ((_local2 + 0.5) * _G5.HEIGHT);
            this._11P._Vn(((_local3 - 200) / (this._Rf.height - 400)));
        }
        ;
    }

    private function _qs():_nD {
        var _local1:_nD;
        var _local2:_nD;
        for each (_local2 in this.legends) {
            if (_local2._0yx) {
                _local1 = _local2;
                break;
            }
            ;
        }
        ;
        return (_local1);
    }

    private function _05I(_arg1:_nD):void {
        this._1tk.dispatch(_arg1);
    }

    private function onCloseClick(_arg1:MouseEvent):void {
        this.close.dispatch();
    }

    private function _bI(_arg1:Event):void {
        this._Rf.y = (-(this._11P._0LY()) * (this._Rf.height - 400));
    }


}
}//package _3q

