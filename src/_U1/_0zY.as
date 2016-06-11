// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._0zY

package _U1 {
import _07g._0NQ;

import _0Mr._5R;

import _0oL.Server;

import _0y9._06T;

import _1Kr._0wm;
import _1Kr._1E8;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.ui._1Db;
import com.company.googleanalytics.GA;

import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;

public class _0zY extends Sprite {

    public function _0zY() {
        addChild(new _1E8());
        this._1oN = new _sy();
        addChild(new _1E8());
        addChild(new _Y5());
    }
    public var _1oN:_sy;
    private var _n1:_06T;
    private var _0R8:Shape;
    private var _Fa:Sprite;
    private var _1NW:_0DZ;
    private var _mI:_1Db;
    private var servers:Vector.<Server>;

    public function initialize(_arg1:Vector.<Server>):void {
        this.servers = _arg1;
        this._1O4();
        this._1gh();
        this.makeContainer();
        this._0AE();
        (((this._1NW.height > 400)) && (this._fl()));
        this._1gj();
        GA.global().trackPageview("/serversScreen");
    }

    private function _1gj():void {
        var _local1:_0wm = new _0wm();
        var _local2:_1O0 = _0NQ._1X9();
        _local1._ab(_local2, _0wm.CENTER);
        _local2.clicked.add(this._1qs);
        addChild(_local1);
    }

    private function _fl():void {
        this._mI = new _1Db(16, 400);
        this._mI.x = ((800 - this._mI.width) - 4);
        this._mI.y = 104;
        this._mI._cf(400, this._1NW.height);
        this._mI.addEventListener(Event.CHANGE, this._bI);
        addChild(this._mI);
    }

    private function _0AE():void {
        this._1NW = new _0DZ(this.servers);
        this._1NW.y = 8;
        this._1NW.addEventListener(Event.COMPLETE, this._1qs);
        this._Fa.addChild(this._1NW);
    }

    private function makeContainer():void {
        this._Fa = new Sprite();
        this._Fa.x = 4;
        this._Fa.y = 100;
        var _local1:Shape = new Shape();
        _local1.graphics.beginFill(0xFFFFFF);
        _local1.graphics.drawRect(0, 0, 776, 430);
        _local1.graphics.endFill();
        this._Fa.addChild(_local1);
        this._Fa.mask = _local1;
        addChild(this._Fa);
    }

    private function _1gh():void {
        this._0R8 = new Shape();
        var _local1:Graphics = this._0R8.graphics;
        _local1.clear();
        _local1.lineStyle(2, 0x545454);
        _local1.moveTo(0, 100);
        _local1.lineTo(stage.stageWidth, 100);
        _local1.lineStyle();
        addChild(this._0R8);
    }

    private function _1O4():void {
        this._n1 = new _06T().setSize(18).setColor(0xB3B3B3).setBold(true);
        this._n1.setStringBuilder(new _5R().setParams(_TG._19K));
        this._n1.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._n1.x = 18;
        this._n1.y = 72;
        addChild(this._n1);
    }

    private function _1qs():void {
        this._1oN.dispatch();
    }

    private function _bI(_arg1:Event):void {
        this._1NW.y = (8 - (this._mI._0LY() * (this._1NW.height - 400)));
    }


}
}//package _U1

