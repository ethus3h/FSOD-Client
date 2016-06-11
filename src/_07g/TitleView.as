// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g.TitleView

package _07g {
import _0Mr._1M;
import _0Mr._5R;

import _0y9._06T;

import _1Fr._1FI;

import _1Kr._0Mx;
import _1Kr._0wm;
import _1Kr._1xb;

import _1Sm._sy;

import _6u._TG;

import _U1._1O0;
import _U1._Y5;

import com.company.assembleegameclient.ui._0UH;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;

public class TitleView extends Sprite {

    public static const _e9:Number = 589.45;
    public static var _1Bs:Boolean = false;
    public static var _ut:Boolean = false;
    public static var _ug:Boolean = false;
    public static var _0zZ:Boolean = false;
    static var _EK:Class = _ym;

    public function TitleView() {
        this._0iR = this._0yR();
        this._mh = new _sy();
        super();
        addChild(new _1xb());
        addChild(new _0Mx());
        addChild(new _EK());
        addChild(this._0iR);
        addChild(new _Y5());
        this._0Y3();
        addChild(new _0UH());
    }
    public var _1Z1:_sy;
    public var _14Q:_sy;
    public var _1ji:_sy;
    public var _0oK:_sy;
    public var _134:_sy;
    public var _1qZ:_sy;
    public var _1a:_sy;
    public var _0va:_sy;
    public var _mh:_sy;
    private var _ZA:_06T;
    private var _1KW:_06T;
    private var _0iR:_0wm;
    private var data:_1FI;

    public function makeText():_06T {
        var _local1:_06T = new _06T().setSize(12).setColor(0x7F7F7F);
        _local1.filters = [new DropShadowFilter(0, 0, 0)];
        return (_local1);
    }

    public function initialize(_arg1:_1FI):void {
        this.data = _arg1;
        this._VY();
        this._1gl();
    }

    private function _0yR():_0wm {
        var _local1:_1O0 = _0NQ._lE();
        var _local2:_1O0 = _0NQ._hC();
        var _local3:_1O0 = _0NQ._0B1();
        var _local4:_1O0 = _0NQ._1qj();
        var _local5:_1O0 = _0NQ._gJ();
        _local5.setColor(0xFFA500);
        this._1Z1 = _local1.clicked;
        this._14Q = _local2.clicked;
        this._1ji = _local3.clicked;
        this._0oK = _local4.clicked;
        this._1qZ = _local5.clicked;
        var _local6:_0wm = new _0wm();
        _local6._ab(_local1, _0wm.CENTER);
        _local6._ab(_local2, _0wm.LEFT);
        _local6._ab(_local5, _0wm.LEFT);
        _local6._ab(_local3, _0wm.RIGHT);
        _local6._ab(_local4, _0wm.RIGHT);
        return (_local6);
    }

    private function _0Y3():void {
        this._ZA = this.makeText().setHTML(true).setAutoSize(TextFieldAutoSize.LEFT).setVerticalAlign(_06T.MIDDLE);
        this._ZA.y = _e9;
        addChild(this._ZA);
        this._1KW = this.makeText().setAutoSize(TextFieldAutoSize.RIGHT).setVerticalAlign(_06T.MIDDLE);
        this._1KW.setStringBuilder(new _5R().setParams(_TG._sw));
        this._1KW.filters = [new DropShadowFilter(0, 0, 0)];
        this._1KW.x = 800;
        this._1KW.y = _e9;
        addChild(this._1KW);
    }

    private function _VY():void {
        this._ZA.setStringBuilder(new _1M(this.data._dr));
    }

    private function _1gl():void {
        ((this.data._1mi) && (this._0WY()));
        ((this.data._h4) && (this.set()));
        this._mh.dispatch();
    }

    private function set():void {
        var _local1:_1O0 = _0NQ._Um();
        this._0iR._ab(_local1, _0wm.RIGHT);
        this._0va = _local1.clicked;
    }

    private function _0WY():void {
        var _local1:_1O0 = _0NQ._ua();
        this._0iR._ab(_local1, _0wm.RIGHT);
        this._1a = _local1.clicked;
    }


}
}//package _07g

