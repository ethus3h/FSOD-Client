// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_3q._G5

package _3q {
import _0Mr._1M;

import _0y9._06T;

import _0yE._J6;

import _1Sm._sy;

import _1pV._nD;

import _1qi._1cF;

import com.company.assembleegameclient.ui.Slot;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;
import com.company.util._1xs;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

public class _G5 extends Sprite {

    private static const _Pi:int = 22;
    public static const WIDTH:int = 756;
    public static const HEIGHT:int = 56;

    public const selected:_sy = new _sy(_nD);

    public function _G5(_arg1:_nD) {
        this._10E = _arg1;
        this._1Pd();
        this._1Ho();
        this._1u4();
        this._03B();
        this._0Gy();
        this._03N();
        this._lF();
        this.draw();
    }
    private var _10E:_nD;
    private var _1HW:_06T;
    private var _0bd:Bitmap;
    private var _1CT:_06T;
    private var _1QS:_1cF;
    private var _0TA:_06T;
    private var _Rm:Bitmap;
    private var _01:Boolean;

    private function _1Pd():void {
        this._1HW = new _06T().setSize(_Pi).setColor(this._BZ());
        var _local1:String = (((this._10E._0xR) == -1) ? "---" : (this._10E._0xR.toString() + "."));
        this._1HW.setBold(!((this._10E._0xR == -1)));
        this._1HW.setStringBuilder(new _1M(_local1));
        this._1HW.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._1HW.x = (82 - this._1HW.width);
        this._1HW.y = ((HEIGHT - _Pi) * 0.5);
        addChild(this._1HW);
    }

    private function _1Ho():void {
        this._0bd = new Bitmap(this._10E.character);
        this._0bd.x = 104;
        this._0bd.y = (((HEIGHT / 2) - (this._0bd.height / 2)) - 2);
        addChild(this._0bd);
    }

    private function _1u4():void {
        this._1CT = new _06T().setSize(_Pi).setColor(this._BZ());
        this._1CT.setBold(true);
        this._1CT.setStringBuilder(new _1M(this._10E.name));
        this._1CT.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._1CT.x = 170;
        this._1CT.y = ((HEIGHT - _Pi) * 0.5);
        addChild(this._1CT);
    }

    private function _03B():void {
        var _local2:_J6;
        this._1QS = new _1cF(null, this._10E._0Wj, null);
        var _local1:_1xs = this._1QS._0xF();
        while (_local1._1cA()) {
            _local2 = _J6(_local1.next());
            _local2._1Fw(false);
        }
        ;
        this._1QS.setItems(this._10E._0Jj);
        this._1QS.x = 400;
        this._1QS.y = ((HEIGHT / 2) - (Slot.HEIGHT / 2));
        addChild(this._1QS);
    }

    private function _0Gy():void {
        this._0TA = new _06T().setSize(_Pi).setColor(this._BZ());
        this._0TA.setBold(true);
        this._0TA.setStringBuilder(new _1M(this._10E._0UL.toString()));
        this._0TA.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._0TA.x = (660 - this._0TA.width);
        this._0TA.y = ((HEIGHT - _Pi) * 0.5);
        addChild(this._0TA);
    }

    private function _03N():void {
        var _local1:BitmapData = AssetLibrary._Rb("lofiObj3", 224);
        this._Rm = new Bitmap(TextureRedrawer.redraw(_local1, 40, true, 0));
        this._Rm.x = 630;
        this._Rm.y = ((HEIGHT / 2) - (this._Rm.height / 2));
        addChild(this._Rm);
    }

    private function _BZ():uint {
        var _local1:uint;
        if (this._10E._ih) {
            _local1 = 16564761;
        } else {
            if (this._10E._0xR == 1) {
                _local1 = 16646031;
            } else {
                _local1 = 0xFFFFFF;
            }
            ;
        }
        ;
        return (_local1);
    }

    private function _lF():void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        addEventListener(MouseEvent.CLICK, this._1Lb);
    }

    private function draw():void {
        graphics.clear();
        graphics.beginFill(0, ((this._01) ? 0.4 : 0.001));
        graphics.drawRect(0, 0, WIDTH, HEIGHT);
        graphics.endFill();
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._01 = true;
        this.draw();
    }

    private function onRollOut(_arg1:MouseEvent):void {
        this._01 = false;
        this.draw();
    }

    private function _1Lb(_arg1:MouseEvent):void {
        this.selected.dispatch(this._10E);
    }


}
}//package _3q

