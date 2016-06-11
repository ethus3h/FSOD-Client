// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_MU._1kK

package _MU {
import _08Y._sC;

import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

import _0Sj._1vA;

import _0y9._06T;

import flash.display.Bitmap;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.geom.ColorTransform;

public class _1kK extends Sprite {

    public function _1kK() {
        this._14v = _sC._b(46, 0x545454, 0, false, true);
        this._1dC = _sC._b(40, 0x545454, 3, false, true);
        this.bg = _sC._b(46, 0x545454, 0, true, false);
        this._1Wn = _sC._0ey();
        this._U4 = new _5R();
        this._br = _sC._1uG(16777103, 100);
        this._1Aa = new AppendingLineBuilder();
        this._Vc = new Sprite();
        this._39 = new Bitmap();
        super();
        this._1dN();
        this._br.textChanged.add(this._0m);
        this._1Wn.textChanged.add(this._0m);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var itemId:int = -1;
    public var _0k:int = -1;
    public var objectId:int = -1;
    protected var _14v:Shape;
    protected var _1dC:Shape;
    protected var bg:Shape;
    protected var _Vc:Sprite;
    protected var _39:Bitmap;
    protected var _1Wh:_1vA;
    private var _1Wn:_06T;
    private var _U4:_5R;
    private var _br:_06T;
    private var _1Aa:AppendingLineBuilder;

    public function setTitle(_arg1:String, _arg2:Object):void {
        this._U4.setParams(_arg1, _arg2);
        this._1Wn.setStringBuilder(this._U4);
    }

    public function _1lj(_arg1:String, _arg2:Object):void {
        this._1Aa.clear();
        this._1Aa.pushParams(_arg1, _arg2);
        this._br.setStringBuilder(this._1Aa);
    }

    public function _0QF(_arg1:Boolean):void {
        this._14v.visible = !(_arg1);
        var _local2:int = ((_arg1) ? 40 : 46);
        var _local3:int = ((_arg1) ? 3 : 0);
        this.bg.graphics.clear();
        this.bg.graphics.beginFill(0x464646);
        this.bg.graphics.drawRoundRect(0, _local3, _local2, _local2, 16, 16);
        this.bg.x = ((100 - _local2) * 0.5);
    }

    public function _NQ(_arg1:Boolean, _arg2:int = 16777103, _arg3:Boolean = false):void {
        var _local5:ColorTransform;
        var _local4:ColorTransform = this._1dC.transform.colorTransform;
        _local4.color = ((_arg1) ? _arg2 : 0x545454);
        this._1dC.transform.colorTransform = _local4;
        if (this._14v.visible) {
            _local5 = this._14v.transform.colorTransform;
            _local5.color = ((_arg3) ? _arg2 : 0x545454);
            this._14v.transform.colorTransform = _local5;
        }
        ;
    }

    protected function _0d0():void {
        this._Vc.x = 0;
        this._Vc.y = 0;
        this._39.x = ((100 - this._39.width) * 0.5);
        this._39.y = ((46 - this._39.height) * 0.5);
    }

    protected function _10o():void {
        this._1Wh.x = ((100 - this._1Wh.width) * 0.5);
        this._1Wh.y = ((46 - this._1Wh.height) * 0.5);
    }

    private function _1dN():void {
        this._Vc.addChild(this._39);
        addChild(this.bg);
        addChild(this._1dC);
        addChild(this._14v);
        addChild(this._1Wn);
        addChild(this._br);
        addChild(this._Vc);
    }

    private function _0m():void {
        this._br.y = ((this._1Wn.y + this._1Wn.height) - 1);
    }

    protected function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._br.textChanged.remove(this._0m);
        this._1Wn.textChanged.remove(this._0m);
    }


}
}//package _MU

