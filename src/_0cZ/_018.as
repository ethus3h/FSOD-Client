// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cZ._018

package _0cZ {
import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import _v9._ND;

import com.company.assembleegameclient.ui._1jP;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.text.TextFormatAlign;

public class _018 extends Sprite {

    private static const _0NK:int = 8;
    private static const _0zu:int = 120;
    private static const _1nq:int = 16;
    private static const _0Zb:int = 546;
    private static const _0Ku:int = 416;
    private static const _2:int = 368;
    private static const _ui:int = 164;
    private static const _0dE:int = 210;

    private const background:DisplayObject = _0kH();
    private const title:_06T = _JX();
    private const _0Cy:_06T = _1bU();
    private const _0a6:_06T = _8();
    private const close:_1jP = _1mg();
    public const closed:_sy = new _0q(close, MouseEvent.CLICK);

    public function _018():void {
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
    }

    public function setTitle(_arg1:String):_018 {
        this.title.setStringBuilder(new _5R().setParams(_arg1));
        return (this);
    }

    public function setBody(_arg1:String, _arg2:String):_018 {
        this._0Cy.setStringBuilder(new _5R().setParams(_arg1));
        this._0a6.setStringBuilder(new _5R().setParams(_arg2));
        return (this);
    }

    private function _0kH():DisplayObject {
        var _local1:_ic = new _ic();
        addChild(_local1);
        return (_local1);
    }

    private function _JX():_06T {
        var _local1:_06T;
        _local1 = new _06T().setSize(18).setColor(0xB6B6B6).setTextWidth(_0Zb).setAutoSize(TextFormatAlign.CENTER).setBold(true);
        _local1.y = _0NK;
        addChild(_local1);
        return (_local1);
    }

    private function _1bU():_06T {
        var _local1:_06T;
        _local1 = new _06T().setSize(14).setColor(14864077).setTextWidth(_0Ku).setAutoSize(TextFormatAlign.CENTER).setBold(true);
        _local1.x = ((_0Zb - _0Ku) * 0.5);
        _local1.y = _ui;
        addChild(_local1);
        return (_local1);
    }

    private function _8():_06T {
        var _local1:_06T;
        _local1 = new _06T().setSize(14).setColor(10914439).setTextWidth(_0Ku).setAutoSize(TextFormatAlign.CENTER);
        _local1.x = ((_0Zb - _0Ku) * 0.5);
        _local1.y = _0dE;
        addChild(_local1);
        return (_local1);
    }

    private function _1mg():_1jP {
        var _local1:_1jP;
        _local1 = new _1jP(_1nq, _TG.CLOSE, _0zu);
        _local1.textChanged.addOnce(this._R6);
        _local1.y = _2;
        addChild(_local1);
        return (_local1);
    }

    private function _R6():void {
        new _ND().layout(_0Zb, this.close);
    }

    private function onAddedToStage(_arg1:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        x = ((stage.stageWidth - width) / 2);
        y = ((stage.stageHeight - height) / 2);
    }


}
}//package _0cZ

