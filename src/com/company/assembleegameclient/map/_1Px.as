// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._1Px

package com.company.assembleegameclient.map {
import _058.Background;

import _1Em._1zd;

import _1Sm._sy;

import _ZR._20n;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.objects.BasicObject;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects._1CH;

import flash.display.Sprite;
import flash.geom.Point;
import flash.utils.Dictionary;

public class _1Px extends Sprite {

    public function _1Px() {
        this.goDict_ = new Dictionary();
        this.map_ = new Sprite();
        this._0Fz = new Vector.<Square>();
        this.squares_ = new Vector.<Square>();
        this._1NM = new Dictionary();
        this.merchLookup_ = new Object();
        this.signalRenderSwitch = new _sy(Boolean);
        super();
    }
    public var goDict_:Dictionary;
    public var gs_:_0p2;
    public var name_:String;
    public var player_:Player = null;
    public var showDisplays_:Boolean;
    public var width_:int;
    public var height_:int;
    public var _0Zz:int;
    public var background_:Background = null;
    public var map_:Sprite;
    public var _Rd:_0Ht = null;
    public var _0XD:_0U0 = null;
    public var mapOverlay_:_1zd = null;
    public var partyOverlay_:_20n = null;
    public var _0Fz:Vector.<Square>;
    public var squares_:Vector.<Square>;
    public var _1NM:Dictionary;
    public var merchLookup_:Object;
    public var party_:_1CH = null;
    public var quest_:Quest = null;
    public var signalRenderSwitch:_sy;
    public var isPetYard:Boolean = false;
    protected var allowPlayerTeleport_:Boolean;
    protected var _IB:Boolean = false;

    public function setProps(_arg1:int, _arg2:int, _arg3:String, _arg4:int, _arg5:Boolean, _arg6:Boolean):void {
    }

    public function addObj(_arg1:BasicObject, _arg2:Number, _arg3:Number):void {
    }

    public function setGroundTile(_arg1:int, _arg2:int, _arg3:uint):void {
    }

    public function initialize():void {
    }

    public function dispose():void {
    }

    public function update(_arg1:int, _arg2:int):void {
    }

    public function pSTopW(_arg1:Number, _arg2:Number):Point {
        return (null);
    }

    public function removeObj(_arg1:int):void {
    }

    public function draw(_arg1:_18q, _arg2:int):void {
    }

    public function _1D4():Boolean {
        return (((!((this.name_ == Map._1Bv))) && (this.allowPlayerTeleport_)));
    }


}
}//package com.company.assembleegameclient.map

