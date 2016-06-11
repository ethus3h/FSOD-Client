// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._HO

package com.company.assembleegameclient.ui {
import _14._cy;

import _6u._TG;

import com.company.assembleegameclient.game._0p2;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

public class _HO extends Sprite {

    public static const WIDTH:int = 200;
    public static const HEIGHT:int = 400;

    public function _HO(_arg1:_0p2, _arg2:_cy) {
        this.gs_ = _arg1;
        var _local3:String = this.gs_.map.player_.name_;
        this._Uy = new TradeInventory(_arg1, _local3, _arg2.myItems_, true);
        this._Uy.x = 14;
        this._Uy.y = 0;
        this._Uy.addEventListener(Event.CHANGE, this._QN);
        addChild(this._Uy);
        this._0pv = new TradeInventory(_arg1, _arg2.yourName_, _arg2.yourItems_, false);
        this._0pv.x = 14;
        this._0pv.y = 174;
        addChild(this._0pv);
        this._0j = new _1jP(16, _TG._D0, 80);
        this._0j.addEventListener(MouseEvent.CLICK, this._try);
        this._0j.textChanged.addOnce(this._0ik);
        addChild(this._0j);
        this._0J3 = new _KH(16, 80);
        this._0J3.x = (((3 * WIDTH) / 4) - (this._0J3._Ml / 2));
        this._0J3.addEventListener(MouseEvent.CLICK, this._na);
        addChild(this._0J3);
        this._1Iz();
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var gs_:_0p2;
    private var _Uy:TradeInventory;
    private var _0pv:TradeInventory;
    private var _0j:_1jP;
    private var _0J3:_KH;

    public function _0yK(_arg1:Vector.<Boolean>):void {
        this._0pv._1QE(_arg1);
        this._1Iz();
    }

    public function _0Np(_arg1:Vector.<Boolean>, _arg2:Vector.<Boolean>):void {
        if (((this._Uy._bk(_arg1)) && (this._0pv._bk(_arg2)))) {
            this._0pv._0O0(TradeInventory._0vh);
        }
        ;
    }

    public function _1Iz():void {
        var _local1:int = this._Uy._1V0();
        var _local2:int = this._Uy._0eG();
        var _local3:int = this._0pv._1V0();
        var _local4:int = this._0pv._0eG();
        var _local5:Boolean = true;
        if (((_local3 - _local1) - _local2) > 0) {
            this._Uy._0O0(TradeInventory._x2);
            _local5 = false;
        } else {
            this._Uy._0O0(TradeInventory._pX);
        }
        ;
        if (((_local1 - _local3) - _local4) > 0) {
            this._0pv._0O0(TradeInventory._x2);
            _local5 = false;
        } else {
            this._0pv._0O0(TradeInventory._1LX);
        }
        ;
        if (_local5) {
            this._0J3.reset();
        } else {
            this._0J3.disable();
        }
        ;
    }

    private function _0ik():void {
        this._0j.x = ((WIDTH / 4) - (this._0j._Ml / 2));
        this._0j.y = ((HEIGHT - this._0j.height) - 10);
        this._0J3.y = this._0j.y;
    }

    private function onAddedToStage(_arg1:Event):void {
        stage.addEventListener(Event.ACTIVATE, this._7S);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(Event.ACTIVATE, this._7S);
    }

    private function _7S(_arg1:Event):void {
        this._0J3.reset();
    }

    private function _QN(_arg1:Event):void {
        this.gs_.gsc_.changeTrade(this._Uy._0ku());
        this._1Iz();
    }

    private function _try(_arg1:MouseEvent):void {
        this.gs_.gsc_.cancelTrade();
        dispatchEvent(new Event(Event.CANCEL));
    }

    private function _na(_arg1:MouseEvent):void {
        this.gs_.gsc_.acceptTrade(this._Uy._0ku(), this._0pv._0ku());
        this._Uy._0O0(TradeInventory._0vh);
    }


}
}//package com.company.assembleegameclient.ui

