// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._Y5

package _U1 {
import _04g._13e;

import _1Sm._sy;

import _Z0.RankToolTip;

import com.company.assembleegameclient.ui.RankText;
import com.company.assembleegameclient.ui._1g;

import flash.display.DisplayObject;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.MouseEvent;

public class _Y5 extends Sprite {

    public function _Y5() {
        this.tooltip = new _sy();
        this._0uD();
    }
    public var tooltip:_sy;
    private var _0iv:Sprite;
    private var _h6:Sprite;
    private var _0f5:Sprite;
    private var guildName:String;
    private var _1sn:int;
    private var stars:int;
    private var rankText:RankText;
    private var _00O:_1g;
    private var accountInfo:_13e;

    public function _I8(_arg1:String, _arg2:int):void {
        this.guildName = _arg1;
        this._1sn = _arg2;
        this._0jB();
    }

    public function _K3(_arg1:int):void {
        this.stars = _arg1;
        this._F6();
    }

    public function _1pl(_arg1:_13e):void {
        var _local2:DisplayObject;
        this.accountInfo = _arg1;
        _local2 = (_arg1 as DisplayObject);
        _local2.x = (stage.stageWidth - 10);
        _local2.y = 2;
        while (this._0f5.numChildren > 0) {
            this._0f5.removeChildAt(0);
        }
        ;
        this._0f5.addChild(_local2);
    }

    private function _0uD():void {
        addChild((this._0iv = new Sprite()));
        addChild((this._h6 = new Sprite()));
        addChild((this._0f5 = new Sprite()));
    }

    private function _1y():DisplayObject {
        var _local1:Shape = new Shape();
        _local1.graphics.beginFill(0, 0.5);
        _local1.graphics.drawRect(0, 0, 800, 35);
        return (_local1);
    }

    private function _0jB():void {
        this._00O = new _1g(this.guildName, this._1sn);
        this._00O.x = 92;
        this._00O.y = 6;
        while (this._h6.numChildren > 0) {
            this._h6.removeChildAt(0);
        }
        ;
        this._h6.addChild(this._00O);
    }

    private function _F6():void {
        this.rankText = new RankText(this.stars, true, false);
        this.rankText.x = 36;
        this.rankText.y = 4;
        this.rankText.mouseEnabled = true;
        this.rankText.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        this.rankText.addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        while (this._0iv.numChildren > 0) {
            this._0iv.removeChildAt(0);
        }
        ;
        this._0iv.addChild(this.rankText);
    }

    protected function onMouseOver(_arg1:MouseEvent):void {
        this.tooltip.dispatch(new RankToolTip(this.stars));
    }

    protected function onRollOut(_arg1:MouseEvent):void {
        this.tooltip.dispatch(null);
    }


}
}//package _U1

