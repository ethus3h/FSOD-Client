// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1.CharacterSelectionAndNewsScreen

package _U1 {
import _07g._0NQ;

import _0AI._1BY;

import _0Mr._1M;
import _0Mr._5R;

import _0cZ.PackageButton;

import _0no._fY;

import _0tB_._tk;

import _0y9._06T;

import _10a._FU;

import _1Kr._0wm;
import _1Kr._1E8;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.ui._1Db;
import com.company.assembleegameclient.ui._Wt;

import flash.display.DisplayObject;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.Rectangle;
import flash.text.TextFieldAutoSize;

public class CharacterSelectionAndNewsScreen extends Sprite {

    private static const _F5:int = 475;
    private static const _0Gc:uint = 0xB3B3B3;
    private static const _YC:uint = 0xFFFFFF;

    private const _0mT:Number = 400;
    private const _0Kp:int = 108;
    private const _09S:int = 18;
    private const _23:DropShadowFilter = new DropShadowFilter(0, 0, 0, 1, 8, 8);

    public function CharacterSelectionAndNewsScreen() {
        this.newCharacter = new _sy();
        this.chooseName = new _sy();
        this._04M = new _sy();
        this._1xy = _0NQ._lE();
        this._1CA = _0NQ._At();
        this._0zC = _0NQ._qe();
        super();
        this.close = this._0zC.clicked;
        this._1wf = this._1CA.clicked;
        addChild(new _1E8());
        addChild(new _Y5());
    }
    public var close:_sy;
    public var _1wf:_sy;
    public var newCharacter:_sy;
    public var chooseName:_sy;
    public var _04M:_sy;
    public var _0zx:_tk;
    private var model:_FU;
    private var _0C:Boolean;
    private var _1CT:_06T;
    private var _0VD:_Wt;
    private var _4h:_fY;
    private var _ks:_06T;
    private var _Jd:_06T;
    private var _Mb:_06T;
    private var _01U:_0Mm;
    private var _1Tb:int = 1;
    private var _1gx:Number;
    private var _08l:Shape;
    private var _11P:_1Db;
    private var _0I2:PackageButton;
    private var _1xy:_1O0;
    private var _1CA:_1O0;
    private var _0zC:_1O0;
    private var _0iR:_0wm;
    private var _Lq:int = 106;

    public function initialize(_arg1:_FU):void {
        if (this._0C) {
            return;
        }
        ;
        this._0C = true;
        this.model = _arg1;
        this._1tv(_arg1);
    }

    public function _0vb():void {
        this._0zx = new _tk();
        this._0zx.x = 14;
        this._0zx.y = 40;
        addChild(this._0zx);
        this._1LV(this._0I2);
    }

    public function _hb():void {
        this._0I2 = new PackageButton();
        this._0I2.init();
        this._0I2.x = 6;
        this._0I2.y = 40;
        addChild(this._0I2);
        this._1LV(this._0zx);
    }

    public function setName(_arg1:String):void {
        this._1CT.setStringBuilder(new _1M(this.model.getName()));
        this._1CT.x = ((this._1jm().width - this._1CT.width) * 0.5);
        if (this._0VD) {
            removeChild(this._0VD);
            this._0VD = null;
        }
        ;
    }

    function _1jm():Rectangle {
        var _local1:Rectangle = new Rectangle();
        if (stage) {
            _local1 = new Rectangle(0, 0, stage.stageWidth, stage.stageHeight);
        }
        ;
        return (_local1);
    }

    private function _1tv(_arg1:_FU):void {
        this._1YL();
        this._0i();
        this._1Zm();
        this._1rf();
        this._17();
        this._1oA();
        var _local2:_1sr = new _1sr(_arg1);
        if (_local2._0oq()) {
            this._ks.setColor(_YC);
            this._1r6();
        }
        ;
        this._1js();
        this._0yR();
        if (!_arg1._1up()) {
            this._Uh();
        }
        ;
    }

    private function _0yR():void {
        this._1xy.clicked.add(this._0vK);
        this._0iR = new _0wm();
        this._0iR._ab(this._1xy, _0wm.CENTER);
        this._0iR._ab(this._0zC, _0wm.LEFT);
        this._0iR._ab(this._1CA, _0wm.RIGHT);
        addChild(this._0iR);
    }

    private function _1rf():void {
        var _local1:_1BY;
        _local1 = new _1BY();
        _local1.x = _F5;
        _local1.y = 112;
        addChild(_local1);
    }

    private function _0fb():void {
        this._11P = new _1Db(16, 399);
        this._11P.x = 443;
        this._11P.y = 113;
        this._11P._cf(399, this._01U.height);
        this._11P.addEventListener(Event.CHANGE, this._bI);
        addChild(this._11P);
    }

    private function _1Zm():void {
        this._Mb = new _06T().setSize(18).setColor(_0Gc);
        this._Mb.setBold(true);
        this._Mb.setStringBuilder(new _5R().setParams(_TG._pM));
        this._Mb.filters = [this._23];
        this._Mb.x = _F5;
        this._Mb.y = 79;
        addChild(this._Mb);
    }

    private function _1js():void {
        this._1Tb = _0Mm._w6;
        this._01U = new _0Mm(this.model, _0Mm._w6);
        this._01U.x = this._09S;
        this._01U.y = this._0Kp;
        this._1gx = this._01U.height;
        if (this._1gx > this._0mT) {
            this._0fb();
        }
        ;
        addChild(this._01U);
    }

    private function _eu():void {
        this._1Tb = _0Mm._1BM;
        this._01U = new _0Mm(this.model, _0Mm._1BM);
        this._01U.x = this._09S;
        this._01U.y = this._0Kp;
        this._1gx = this._01U.height;
        if (this._1gx > this._0mT) {
            this._0fb();
        }
        ;
        addChild(this._01U);
    }

    private function _10H():void {
        if (this._01U != null) {
            removeChild(this._01U);
            this._01U = null;
        }
        ;
        if (this._11P != null) {
            removeChild(this._11P);
            this._11P = null;
        }
        ;
    }

    private function _1oA():void {
        this._ks = new _06T().setSize(18).setColor(_0Gc);
        this._ks.setBold(true);
        this._ks.setStringBuilder(new _5R().setParams(_TG._0W));
        this._ks.filters = [this._23];
        this._ks.x = this._09S;
        this._ks.y = 79;
        this._ks.addEventListener(MouseEvent.CLICK, this._0np);
        addChild(this._ks);
    }

    private function _1r6():void {
        this._Jd = new _06T().setSize(18).setColor(_0Gc);
        this._Jd.setBold(true);
        this._Jd.setStringBuilder(new _5R().setParams(_TG._0so));
        this._Jd.filters = [this._23];
        this._Jd.x = (this._09S + 150);
        this._Jd.y = 79;
        this._Jd.addEventListener(MouseEvent.CLICK, this._jq);
        addChild(this._Jd);
    }

    private function _0i():void {
        this._4h = new _fY();
        this._4h.draw(this.model._1fB(), this.model._00f());
        this._4h.x = this._1jm().width;
        this._4h.y = 20;
        addChild(this._4h);
    }

    private function _Uh():void {
        this._0VD = new _Wt(16, false, _TG._Ii);
        this._0VD.y = 50;
        this._0VD.setAutoSize(TextFieldAutoSize.CENTER);
        this._0VD.x = (this._1jm().width / 2);
        this._0VD.addEventListener(MouseEvent.CLICK, this._1aM);
        addChild(this._0VD);
    }

    private function _1YL():void {
        this._1CT = new _06T().setSize(22).setColor(0xB3B3B3);
        this._1CT.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
        this._1CT.setStringBuilder(new _1M(this.model.getName()));
        this._1CT.filters = [this._23];
        this._1CT.y = 24;
        this._1CT.x = ((this._1jm().width - this._1CT.width) / 2);
        addChild(this._1CT);
    }

    private function _17():void {
        this._08l = new Shape();
        this._08l.graphics.clear();
        this._08l.graphics.lineStyle(2, 0x545454);
        this._08l.graphics.moveTo(0, this._Lq);
        this._08l.graphics.lineTo(this._1jm().width, this._Lq);
        this._08l.graphics.moveTo(466, 107);
        this._08l.graphics.lineTo(466, 526);
        this._08l.graphics.lineStyle();
        addChild(this._08l);
    }

    private function _1LV(_arg1:DisplayObject):void {
        if (((_arg1) && (contains(_arg1)))) {
            removeChild(_arg1);
        }
        ;
    }

    private function _0vK():void {
        if (this.model._H0() == 0) {
            this.newCharacter.dispatch();
        } else {
            this._04M.dispatch();
        }
        ;
    }

    private function _0np(_arg1:MouseEvent):void {
        if (this._1Tb != _0Mm._w6) {
            this._10H();
            this._ks.setColor(_YC);
            this._Jd.setColor(_0Gc);
            this._1js();
        }
        ;
    }

    private function _jq(_arg1:MouseEvent):void {
        if (this._1Tb != _0Mm._1BM) {
            this._10H();
            this._ks.setColor(_0Gc);
            this._Jd.setColor(_YC);
            this._eu();
        }
        ;
    }

    private function _1aM(_arg1:MouseEvent):void {
        this.chooseName.dispatch();
    }

    private function _bI(_arg1:Event):void {
        if (this._01U != null) {
            this._01U._Vn((-(this._11P._0LY()) * (this._1gx - 400)));
        }
        ;
    }


}
}//package _U1

