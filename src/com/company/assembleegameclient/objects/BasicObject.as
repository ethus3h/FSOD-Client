// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.BasicObject

package com.company.assembleegameclient.objects {
import _1VI._TT;

import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.map._18q;

import flash.display.IGraphicsData;

public class BasicObject {

    private static var _1Hm:int = 0;

    public static function _1LK():int {
        return ((0x7F000000 | _1Hm++));
    }

    public function BasicObject() {
        this._0Ha = new Vector.<Number>();
        this._1Pg = new Vector.<Number>();
        super();
        this.clear();
    }
    public var map_:Map;
    public var _ml:Square;
    public var objectId_:int;
    public var x_:Number;
    public var y_:Number;
    public var z_:Number;
    public var _Ci:Boolean;
    public var _07t:Boolean;
    public var _0Ha:Vector.<Number>;
    public var _1Pg:Vector.<Number>;
    public var sortVal_:Number;

    public function clear():void {
        this.map_ = null;
        this._ml = null;
        this.objectId_ = -1;
        this.x_ = 0;
        this.y_ = 0;
        this.z_ = 0;
        this._Ci = false;
        this._07t = false;
        this._0Ha.length = 0;
        this._1Pg.length = 0;
        this.sortVal_ = 0;
    }

    public function dispose():void {
        this.map_ = null;
        this._ml = null;
        this._0Ha = null;
        this._1Pg = null;
    }

    public function update(_arg1:int, _arg2:int):Boolean {
        return (true);
    }

    public function draw3d(_arg1:Vector.<_TT>):void {
    }

    public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
    }

    public function drawShadow(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
    }

    public function _0IF(_arg1:_18q):void {
        this._0Ha.length = 0;
        this._0Ha.push(this.x_, this.y_, 0, this.x_, this.y_, this.z_);
        this._1Pg.length = 0;
        _arg1.wToS_.transformVectors(this._0Ha, this._1Pg);
        this.sortVal_ = this._1Pg[1];
    }

    public function _0Wa(_arg1:Number = 12):void {
        this._0Ha.length = 0;
        this._0Ha.push(this.x_, this.y_, 0, this.x_, this.y_, this.z_);
        this._1Pg.length = 0;
        this._1Pg.push((this.x_ * _arg1), (this.y_ * _arg1), 0, (this.x_ * _arg1), (this.y_ * _arg1), 0);
        this.sortVal_ = this._1Pg[1];
    }

    public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean {
        this.map_ = _arg1;
        this._ml = this.map_.getSquare(_arg2, _arg3);
        if (this._ml == null) {
            this.map_ = null;
            return (false);
        }
        ;
        this.x_ = _arg2;
        this.y_ = _arg3;
        return (true);
    }

    public function removeFromMap():void {
        this.map_ = null;
        this._ml = null;
    }


}
}//package com.company.assembleegameclient.objects

