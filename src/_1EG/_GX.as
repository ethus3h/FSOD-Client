// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._GX

package _1EG {
import _07g._2v;

import _0Mr._5R;

import _0P7._xf;

import _0Ql._ZQ;

import _0Sj._1l_;

import _0y9._06T;

import _E4._AQ;

import _v9._ND;

import com.company.assembleegameclient.ui._1jP;

import flash.display.BitmapData;
import flash.display.DisplayObjectContainer;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextFieldAutoSize;

public class _GX extends Sprite {

    public static const WIDTH:int = 274;
    public static const HEIGHT:int = 338;
    public static const TITLE:String = "ArenaQueryPanel.title";
    public static const CLOSE:String = "Close.text";
    public static const _20:String = "ArenaQueryDialog.info";
    public static const BACK:String = "Screens.back";

    private const _28:_2v = _1UQ();
    private const container:DisplayObjectContainer = makeContainer();
    private const background:_1l_ = _0kH();
    private const host:_xf = _17();
    private const title:_06T = _JX();
    private const _0zC:_1jP = _3w();
    public const _0NB:_ZQ = new _ZQ(_0zC, MouseEvent.CLICK);

    public function _0Bt(_arg1:BitmapData):void {
        this.host._0Bt(_arg1);
    }

    private function _1UQ():_2v {
        var _local1:_2v = new _2v();
        _local1.complete.addOnce(this._0Gb);
        return (_local1);
    }

    private function _0Gb():void {
        var _local1:_ND = new _ND();
        _local1.layout(WIDTH, this._0zC);
    }

    private function makeContainer():DisplayObjectContainer {
        var _local1:Sprite;
        _local1 = new Sprite();
        _local1.x = ((800 - WIDTH) / 2);
        _local1.y = ((600 - HEIGHT) / 2);
        addChild(_local1);
        return (_local1);
    }

    private function _0kH():_1l_ {
        var _local1:_1l_ = new _1l_();
        _local1.draw(WIDTH, HEIGHT);
        _local1._0ho(_1l_.HORIZONTAL_DIVISION, 34);
        this.container.addChild(_local1);
        return (_local1);
    }

    private function _17():_xf {
        var _local1:_xf;
        _local1 = new _xf();
        _local1.x = 20;
        _local1.y = 50;
        this.container.addChild(_local1);
        return (_local1);
    }

    private function _JX():_06T {
        var _local1:_06T;
        _local1 = _AQ._1h(0xFFFFFF, 18, true);
        _local1.setStringBuilder(new _5R().setParams(TITLE));
        _local1.setAutoSize(TextFieldAutoSize.CENTER);
        _local1.x = (WIDTH / 2);
        _local1.y = 24;
        this.container.addChild(_local1);
        return (_local1);
    }

    private function _3w():_1jP {
        var _local1:_1jP;
        _local1 = new _1jP(16, BACK, 80);
        this.container.addChild(_local1);
        this._28.push(_local1.textChanged);
        _local1.y = 292;
        return (_local1);
    }

    private function _1mg():_1jP {
        var _local1:_1jP;
        _local1 = new _1jP(16, CLOSE, 110);
        _local1.y = 292;
        this.container.addChild(_local1);
        this._28.push(_local1.textChanged);
        return (_local1);
    }


}
}//package _1EG

