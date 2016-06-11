// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._w1

package _0Mc {
import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import flash.display.CapsStyle;
import flash.display.Graphics;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _w1 extends Sprite {

    private static const _cu:int = 20;

    public function _w1(_arg1:String, _arg2:Boolean, _arg3:uint = 16) {
        this._hg = _arg2;
        this._0Lj = new Sprite();
        this._0Lj.x = 2;
        this._0Lj.y = 2;
        this._0xU();
        this._0Lj.addEventListener(MouseEvent.CLICK, this._1Lb);
        addChild(this._0Lj);
        this.text_ = new _06T().setSize(_arg3).setColor(0xB3B3B3);
        this.text_.setTextWidth(243);
        this.text_.x = ((this._0Lj.x + _cu) + 8);
        this.text_.setBold(true);
        this.text_.setMultiLine(true);
        this.text_.setWordWrap(true);
        this.text_.setHTML(true);
        this.text_.setStringBuilder(new _5R().setParams(_arg1));
        this.text_.mouseEnabled = true;
        this.text_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.text_);
        this.errorText_ = new _06T().setSize(12).setColor(16549442);
        this.errorText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.errorText_);
        this.text_.textChanged.addOnce(this.onTextChanged);
    }
    public var _0Lj:Sprite;
    public var text_:_06T;
    public var errorText_:_06T;
    private var _hg:Boolean;
    private var _ir:Boolean;

    public function _15A():Boolean {
        return (this._hg);
    }

    public function _044(_arg1:String):void {
        this.errorText_.setStringBuilder(new _5R().setParams(_arg1));
    }

    public function _1Sf(_arg1:_1vN):void {
        this.text_.setStringBuilder(_arg1);
    }

    public function _WB(_arg1:Boolean):void {
        this._ir = _arg1;
        this._0xU();
    }

    private function onTextChanged():void {
        this.errorText_.x = this.text_.x;
        this.errorText_.y = (this.text_.y + 20);
    }

    private function _0xU():void {
        var _local2:Number;
        var _local1:Graphics = this._0Lj.graphics;
        _local1.clear();
        _local1.beginFill(0x333333, 1);
        _local1.drawRect(0, 0, _cu, _cu);
        _local1.endFill();
        if (this._hg) {
            _local1.lineStyle(4, 0xB3B3B3, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
            _local1.moveTo(2, 2);
            _local1.lineTo((_cu - 2), (_cu - 2));
            _local1.moveTo(2, (_cu - 2));
            _local1.lineTo((_cu - 2), 2);
            _local1.lineStyle();
            this._ir = false;
        }
        ;
        if (this._ir) {
            _local2 = 16549442;
        } else {
            _local2 = 0x454545;
        }
        ;
        _local1.lineStyle(2, _local2, 1, false, LineScaleMode.NORMAL, CapsStyle.ROUND, JointStyle.ROUND);
        _local1.drawRect(0, 0, _cu, _cu);
        _local1.lineStyle();
    }

    private function _1Lb(_arg1:MouseEvent):void {
        this.errorText_.setStringBuilder(new _1M(""));
        this._hg = !(this._hg);
        this._0xU();
    }


}
}//package _0Mc

