// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._1EE

package _0ld {
import _07g._2v;

import _08Y._sC;

import _0Mr._5R;

import _0Sj._1l_;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.ui._1jP;

import flash.display.Bitmap;
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.MouseEvent;

public class _1EE extends Sprite {

    private const background:_1l_ = _sC._0s5(289, 279);
    private const _1MG:_06T = _sC._1h(0xFFFFFF, 18, true);
    private const _65:_06T = _sC._1h(16777103, 16, true);
    private const _3g:DisplayObject = new _1BP();
    private const _u:_1jP = new _1jP(16, "Pets.sendToYard", 120);
    public const closed:_sy = new _sy();

    public function _1EE(_arg1:String, _arg2:int) {
        this._1BP = _bJ;
        super();
        this.petName = _arg1;
        this.skinType = _arg2;
        this._u.addEventListener(MouseEvent.MOUSE_DOWN, this._0f6);
    }
    var skinType:int;
    private var _1BP:Class;
    private var _0Yg:Bitmap;
    private var petName:String;

    public function init(_arg1:Bitmap):void {
        this._0Yg = _arg1;
        this._JB();
        this._CL();
        this._1dN();
        this._1Ku();
    }

    private function _JB():void {
        this._1MG.setStringBuilder(new _5R().setParams(_TG._1jJ));
        this._65.setStringBuilder(new _5R().setParams(this.petName));
    }

    private function _0zc():void {
        this.closed.dispatch();
    }

    private function _1dN():void {
        this._3g.y = 31;
        addChild(this.background);
        addChild(this._1MG);
        addChild(this._65);
        addChild(this._3g);
        addChild(this._u);
        addChild(this._0Yg);
    }

    private function _1Ku():void {
        this._0Hr();
        this._0Yg.x = ((287 - this._0Yg.width) * 0.5);
        this._3g.x = 1;
        this._3g.y = 32;
        this._0Yg.x = (this._0Yg.x - 5);
        this._0Yg.y = 41;
    }

    private function _0Hr():void {
        this.x = ((stage.stageWidth - this.width) * 0.5);
        this.y = ((stage.stageHeight - this.height) * 0.5);
    }

    private function _CL():void {
        var _local1:_2v = new _2v();
        _local1.push(this._1MG.textChanged);
        _local1.push(this._65.textChanged);
        _local1.complete.addOnce(this._0KA);
        this._u.textChanged.add(this._0GK);
    }

    private function _0GK():void {
        this._u.x = ((287 - this._u.width) * 0.5);
        this._u.y = 240;
    }

    private function _0KA():void {
        this._1MG.x = ((287 - this._1MG.width) * 0.5);
        this._1MG.y = 23;
        this._65.x = ((287 - this._65.width) * 0.5);
        this._65.y = 230;
    }

    private function _0f6(_arg1:MouseEvent):void {
        this.closed.dispatch();
    }


}
}//package _0ld

