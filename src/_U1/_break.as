// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1.break

package _U1 {
import _0Mr._5R;

import _0y9._06T;

import _1Ea._iy;

import _1Kr._1E8;

import _1Sm._sy;

import _6u._TG;

import com.company.rotmg.graphics.KabamLogo;
import com.company.rotmg.graphics.ScreenGraphic;
import com.company.rotmg.graphics.StackedLogoR;

import flash.display.MovieClip;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.net.URLRequest;
import flash.net.navigateToURL;
import flash.text.TextFieldAutoSize;

public class _break extends Sprite {

    private static const _0nb:String = "http://www.wildshadow.com/";
    private static const _0NJ:String = "http://www.kabam.com/";

    public function _break() {
        this._0Wg = this._VW();
        this._0OB = this._0ZA();
        this._sX = this._0UR();
        this._Mt = this._1mg();
        super();
        this.close = new _sy();
        addChild(new _1E8());
        addChild(new ScreenGraphic() as MovieClip);
        addChild(this._0Wg);
        addChild(this._0OB);
        addChild(this._sX);
        addChild(this._Mt);
    }
    public var close:_sy;
    private var _0Wg:_06T;
    private var _0OB:StackedLogoR;
    private var _sX:KabamLogo;
    private var _Mt:_1O0;

    public function initialize():void {
        this._0Wg.x = (stage.stageWidth / 2);
        this._0Wg.y = 10;
        this._0OB.x = ((stage.stageWidth / 2) - (this._0OB.width / 2));
        this._0OB.y = 50;
        this._sX.x = ((stage.stageWidth / 2) - (this._sX.width / 2));
        this._sX.y = 325;
        this._Mt.x = ((stage.stageWidth / 2) - (this._Mt.width / 2));
        this._Mt.y = _iy._ib;
    }

    private function _1mg():_1O0 {
        this._Mt = new _1O0("Close.text", 36, false);
        this._Mt.setAutoSize(TextFieldAutoSize.CENTER);
        this._Mt.addEventListener(MouseEvent.CLICK, this._01n);
        return (this._Mt);
    }

    private function _0UR():KabamLogo {
        this._sX = new KabamLogo();
        this._sX.scaleX = (this._sX.scaleY = 1);
        this._sX.addEventListener(MouseEvent.CLICK, this._1MK);
        this._sX.buttonMode = true;
        this._sX.useHandCursor = true;
        return (this._sX);
    }

    private function _0ZA():StackedLogoR {
        this._0OB = new StackedLogoR();
        this._0OB.scaleX = (this._0OB.scaleY = 1.2);
        this._0OB.addEventListener(MouseEvent.CLICK, this._1AB);
        this._0OB.buttonMode = true;
        this._0OB.useHandCursor = true;
        return (this._0OB);
    }

    private function _VW():_06T {
        this._0Wg = new _06T();
        this._0Wg.setColor(0xB3B3B3).setSize(16).setBold(true);
        this._0Wg.setStringBuilder(new _5R().setParams(_TG._0PW));
        this._0Wg.filters = [new DropShadowFilter(0, 0, 0)];
        this._0Wg.setAutoSize(TextFieldAutoSize.CENTER);
        return (this._0Wg);
    }

    protected function _1AB(_arg1:Event):void {
        navigateToURL(new URLRequest(_0nb), "_blank");
    }

    protected function _1MK(_arg1:Event):void {
        navigateToURL(new URLRequest(_0NJ), "_blank");
    }

    private function _01n(_arg1:Event):void {
        this.close.dispatch();
    }


}
}//package _U1

