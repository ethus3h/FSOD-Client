// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04j._1SO

package _04j {
import _1Ea._1V1;

import _1Sm._sy;

import _1i0._1PV;
import _1i0._GV;

import _1s5.*;

import _Z0.EquipmentToolTip;
import _Z0.ToolTip;

import com.company.assembleegameclient.objects.ObjectLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

public class _1SO extends Sprite implements _1q5 {

    public function _1SO(_arg1:int, _arg2:int = 100, _arg3:Boolean = false) {
        this._8c = new _1Ud();
        this.onMouseOver = new _sy();
        this.onMouseOut = new _sy();
        super();
        this.itemId = _arg1;
        var _local4:BitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg1, _arg2, true, false);
        var _local5:BitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg1, _arg2, true, false);
        this._39 = new Bitmap(_local5);
        addChild(this._39);
        this._8c._0qm(this);
        this.tooltip = new EquipmentToolTip(_arg1, null, -1, _1V1.NPC);
        this.tooltip._1df();
        this._8c.tooltip = this.tooltip;
        if (_arg3) {
            addEventListener(Event.REMOVED_FROM_STAGE, this._0e6);
            addEventListener(MouseEvent.ROLL_OVER, this._Uf);
            addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        }
        ;
    }
    public var _8c:_1Ud;
    public var onMouseOver:_sy;
    public var onMouseOut:_sy;
    public var _39:Bitmap;
    private var itemId:int;
    private var tooltip:ToolTip;

    public function _0Lf():void {
        this._8c._0TB();
    }

    public function _0a():void {
        this._8c._0qm(this);
    }

    public function _1Tg(_arg1:_1PV):void {
        this._8c._1Tg(_arg1);
    }

    public function _1ml():_1PV {
        return (this._8c._1ml());
    }

    public function _Md(_arg1:_GV):void {
        this._8c._Md(_arg1);
    }

    public function _0ec():_GV {
        return (this._8c._0ec());
    }

    public function setXPos(_arg1:Number):void {
        this.x = (_arg1 - (this.width / 2));
    }

    public function setYPos(_arg1:Number):void {
        this.y = (_arg1 - (this.height / 2));
    }

    public function getCenterX():Number {
        return ((this.x + (this.width / 2)));
    }

    public function getCenterY():Number {
        return ((this.y + (this.height / 2)));
    }

    private function _0e6(_arg1:Event):void {
        removeEventListener(Event.REMOVED_FROM_STAGE, this._0e6);
        removeEventListener(MouseEvent.ROLL_OVER, this._Uf);
        removeEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        this.onMouseOver.removeAll();
        this.onMouseOut.removeAll();
    }

    private function _Uf(_arg1:MouseEvent):void {
        this.onMouseOver.dispatch();
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this.onMouseOut.dispatch();
    }


}
}//package _04j

