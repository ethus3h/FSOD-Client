// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Ld._ni

package _1Ld {
import _0Mr._5R;

import _0y9._06T;

import _1Kr._1E8;

import _1Sm._sy;

import _6u._TG;

import _CZ._lp;

import _U1._1O0;

import com.company.rotmg.graphics.ScreenGraphic;

import flash.display.Shape;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _ni extends _1E8 {

    public function _ni() {
        this._Cv = new _sy(String);
        this.back = new _sy();
        this._ZE = this._JX();
        this._0vM = this._12n();
        this._3z = this._1kp();
        super();
        addChild(this._jE());
        addChild(this._ZE);
        addChild(new ScreenGraphic());
        addChild(this._0vM);
    }
    public var _Cv:_sy;
    public var back:_sy;
    private var _ZE:_06T;
    private var _0vM:_1O0;
    private var _3z:_06T;
    private var _1fd:_lp;

    public function _01q(_arg1:Vector.<String>):void {
        this._1fd = new _lp(_arg1);
        this._1fd.y = 100;
        this._1fd.addEventListener(Event.CHANGE, this._1sW);
        addChild(this._1fd);
        this._3z.textChanged.addOnce(this._0X2);
        addChild(this._3z);
        this._3z.y = (this._1fd.y + (this._1fd._12x() / 2));
    }

    public function setSelected(_arg1:String):void {
        ((this._1fd) && (this._1fd.setValue(_arg1)));
    }

    public function clear():void {
        if (((this._1fd) && (contains(this._1fd)))) {
            removeChild(this._1fd);
        }
        ;
    }

    private function _0X2():void {
        this._1fd.x = ((800 / 2) - (((this._1fd.width + this._3z.width) + 10) / 2));
        this._3z.x = ((this._1fd.x + this._1fd.width) + 10);
    }

    private function _JX():_06T {
        var _local1:_06T;
        _local1 = new _06T().setSize(36).setColor(0xFFFFFF);
        _local1.setBold(true);
        _local1.setStringBuilder(new _5R().setParams(_TG._0I4));
        _local1.setAutoSize(TextFieldAutoSize.CENTER);
        _local1.filters = [new DropShadowFilter(0, 0, 0)];
        _local1.x = ((800 / 2) - (_local1.width / 2));
        _local1.y = 16;
        return (_local1);
    }

    private function _12n():_1O0 {
        var _local1:_1O0;
        _local1 = new _1O0(_TG._0BY, 36, false);
        _local1.setAutoSize(TextFieldAutoSize.CENTER);
        _local1.setVerticalAlign(_06T.MIDDLE);
        _local1.addEventListener(MouseEvent.CLICK, this._0YN);
        _local1.x = 400;
        _local1.y = 550;
        return (_local1);
    }

    private function _1kp():_06T {
        var _local1:_06T = new _06T().setSize(16).setColor(0xB3B3B3).setBold(true);
        _local1.setVerticalAlign(_06T.MIDDLE);
        _local1.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        _local1.setStringBuilder(new _5R().setParams(_TG._1Nt));
        return (_local1);
    }

    private function _jE():Shape {
        var _local1:Shape = new Shape();
        _local1.graphics.lineStyle(1, 0x5E5E5E);
        _local1.graphics.moveTo(0, 70);
        _local1.graphics.lineTo(800, 70);
        _local1.graphics.lineStyle();
        return (_local1);
    }

    private function _0YN(_arg1:MouseEvent):void {
        this.back.dispatch();
    }

    private function _1sW(_arg1:Event):void {
        this._Cv.dispatch(this._1fd.getValue());
    }


}
}//package _1Ld

