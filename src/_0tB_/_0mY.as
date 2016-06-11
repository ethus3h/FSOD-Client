// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tB._0mY

package _0tB_ {
import _0Ql._0q;

import _1Sm._sy;

import _8Q._lD;

import _jX._Av;

import com.company.assembleegameclient.util._be;

import flash.display.Sprite;
import flash.events.MouseEvent;

public class _0mY extends Sprite {

    public static var _ma:Class = _R8;

    public function _0mY() {
        this.close = new _sy();
        this.select = new _lD(MouseEvent.CLICK, String);
        this._0kH();
        this._1mg();
        this._09G();
    }
    public var close:_sy;
    public var select:_lD;
    public var _1ZD:Sprite;
    public var _0Mi:Sprite;
    public var google:Sprite;

    public function _1gi():void {
        x = ((stage.stageWidth - width) * 0.5);
        y = (((stage.stageHeight - height) * 0.5) - 5);
    }

    private function _0kH():void {
        addChild(new _ma());
    }

    private function _1mg():void {
        var _local1:Sprite = this._10l(550, 30, 30, 30);
        this.close = new _0q(_local1, MouseEvent.CLICK);
    }

    private function _09G():void {
        this._1ZD = this._10l(220, 180, 180, 35);
        this._0Mi = this._10l(220, 224, 180, 35);
        this.google = this._10l(220, 268, 180, 35);
        this.select.map(this._1ZD, _be._07B.label_);
        this.select.map(this._0Mi, _be._0vu.label_);
        this.select.map(this.google, _be._0xg.label_);
    }

    private function _10l(_arg1:int, _arg2:int, _arg3:int, _arg4:int):Sprite {
        var _local5:_Av = new _Av(_arg1, _arg2, _arg3, _arg4);
        addChild(_local5);
        return (_local5);
    }


}
}//package _0tB

