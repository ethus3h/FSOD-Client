// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._0xA

package _0PF {
import _07g._2v;

import _08Y._sC;

import _0Mr._5R;

import _0y9._06T;

import flash.display.Sprite;

public class _0xA extends Sprite {

    private const _PN:_06T = _sC._1h(0xFFFFFF, 16, true);
    private const _BX:_06T = _sC._1h(0xFFFFFF, 16, true);
    private const WIDTH:uint = 238;
    private const HEIGHT:uint = 30;
    private const _1U6:uint = 10;
    private const _9u:uint = 21;

    public function _0xA() {
        this._Gr();
        this._1dN();
        this._We("Text", "Text");
        this._CL();
    }

    public function _We(_arg1:String, _arg2:String):void {
        this._PN.setStringBuilder(new _5R().setParams(_arg1));
        this._BX.setStringBuilder(new _5R().setParams(_arg2));
    }

    private function _1dN():void {
        addChild(this._PN);
        addChild(this._BX);
    }

    private function _Gr():void {
        graphics.beginFill(0x999999);
        graphics.drawRect(0, 0, this.WIDTH, this.HEIGHT);
    }

    private function _CL():void {
        var _local1:_2v = new _2v();
        _local1.push(this._PN.textChanged);
        _local1.push(this._BX.textChanged);
        _local1.complete.addOnce(this._0KA);
    }

    private function _0KA():void {
        this._PN.x = this._1U6;
        this._PN.y = this._9u;
        this._BX.x = ((this.WIDTH - this._1U6) - this._BX.width);
        this._BX.y = this._9u;
    }


}
}//package _0PF

