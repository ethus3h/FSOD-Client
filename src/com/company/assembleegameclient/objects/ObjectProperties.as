// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ObjectProperties

package com.company.assembleegameclient.objects {
import _1TG._0Yn;

import flash.utils.Dictionary;

public class ObjectProperties {

    public function ObjectProperties(_arg1:XML) {
        var _local2:XML;
        var _local3:XML;
        var _local4:int;
        this._zu = new Dictionary();
        super();
        if (_arg1 == null) {
            return;
        }
        ;
        this.type_ = int(_arg1.@type);
        this.id_ = String(_arg1.@id);
        this.each = this.id_;
        if (_arg1.hasOwnProperty("DisplayId")) {
            this.each = _arg1.DisplayId;
        }
        ;
        this._1aU = ((_arg1.hasOwnProperty("ShadowSize")) ? _arg1.ShadowSize : 100);
        this._0U9 = _arg1.hasOwnProperty("Player");
        this.isEnemy_ = _arg1.hasOwnProperty("Enemy");
        this._1ns = _arg1.hasOwnProperty("DrawOnGround");
        if (((this._1ns) || (_arg1.hasOwnProperty("DrawUnder")))) {
            this._0GP = true;
        }
        ;
        this.occupySquare_ = _arg1.hasOwnProperty("OccupySquare");
        this._0Sx = _arg1.hasOwnProperty("FullOccupy");
        this.enemyOccupySquare_ = _arg1.hasOwnProperty("EnemyOccupySquare");
        this.static_ = _arg1.hasOwnProperty("Static");
        this._02 = _arg1.hasOwnProperty("NoMiniMap");
        this.protectFromGroundDamage_ = _arg1.hasOwnProperty("ProtectFromGroundDamage");
        this.protectFromSink_ = _arg1.hasOwnProperty("ProtectFromSink");
        this.flying_ = _arg1.hasOwnProperty("Flying");
        this._0eK = _arg1.hasOwnProperty("ShowName");
        this._0ce = _arg1.hasOwnProperty("DontFaceAttacks");
        if (_arg1.hasOwnProperty("Z")) {
            this.z_ = Number(_arg1.Z);
        }
        ;
        if (_arg1.hasOwnProperty("Color")) {
            this.color_ = uint(_arg1.Color);
        }
        ;
        if (_arg1.hasOwnProperty("Size")) {
            this._1Qj = (this._lC = _arg1.Size);
        } else {
            if (_arg1.hasOwnProperty("MinSize")) {
                this._1Qj = _arg1.MinSize;
            }
            ;
            if (_arg1.hasOwnProperty("MaxSize")) {
                this._lC = _arg1.MaxSize;
            }
            ;
            if (_arg1.hasOwnProperty("SizeStep")) {
                this._Op = _arg1.SizeStep;
            }
            ;
        }
        ;
        this._1eA = ((_arg1.hasOwnProperty("OldSound")) ? String(_arg1.OldSound) : null);
        for each (_local2 in _arg1.Projectile) {
            _local4 = int(_local2.@id);
            this._zu[_local4] = new _0HW(_local2);
        }
        ;
        this._0tE = ((_arg1.hasOwnProperty("AngleCorrection")) ? ((Number(_arg1.AngleCorrection) * Math.PI) / 4) : 0);
        this.rotation_ = ((_arg1.hasOwnProperty("Rotation")) ? _arg1.Rotation : 0);
        if (_arg1.hasOwnProperty("BloodProb")) {
            this._1ZF = Number(_arg1.BloodProb);
        }
        ;
        if (_arg1.hasOwnProperty("BloodColor")) {
            this._01Q = uint(_arg1.BloodColor);
        }
        ;
        if (_arg1.hasOwnProperty("ShadowColor")) {
            this._0hm = uint(_arg1.ShadowColor);
        }
        ;
        for each (_local3 in _arg1.Sound) {
            if (this._0L == null) {
                this._0L = {};
            }
            ;
            this._0L[int(_local3.@id)] = _local3.toString();
        }
        ;
        if (_arg1.hasOwnProperty("Portrait")) {
            this._0H = new _0sh(XML(_arg1.Portrait));
        }
        ;
        if (_arg1.hasOwnProperty("WhileMoving")) {
            this._1o1 = new WhileMovingProperties(XML(_arg1.WhileMoving));
        }
        ;
    }
    public var type_:int;
    public var id_:String;
    public var each:String;
    public var _1aU:int;
    public var _0U9:Boolean = false;
    public var isEnemy_:Boolean = false;
    public var _1ns:Boolean = false;
    public var _0GP:Boolean = false;
    public var occupySquare_:Boolean = false;
    public var _0Sx:Boolean = false;
    public var enemyOccupySquare_:Boolean = false;
    public var static_:Boolean = false;
    public var _02:Boolean = false;
    public var protectFromGroundDamage_:Boolean = false;
    public var protectFromSink_:Boolean = false;
    public var z_:Number = 0;
    public var flying_:Boolean = false;
    public var color_:uint = 0xFFFFFF;
    public var _0eK:Boolean = false;
    public var _0ce:Boolean = false;
    public var _1ZF:Number = 0;
    public var _01Q:uint = 0xFF0000;
    public var _0hm:uint = 0;
    public var _0L:Object = null;
    public var _0H:_1kQ = null;
    public var _1Qj:int = 100;
    public var _lC:int = 100;
    public var _Op:int = 5;
    public var _1o1:WhileMovingProperties = null;
    public var _1eA:String = null;
    public var _zu:Dictionary;
    public var _0tE:Number = 0;
    public var rotation_:Number = 0;

    public function _De():void {
        var _local1:String;
        if (this._0L == null) {
            return;
        }
        ;
        for each (_local1 in this._0L) {
            _0Yn.load(_local1);
        }
        ;
    }

    public function _Ie():int {
        if (this._1Qj == this._lC) {
            return (this._1Qj);
        }
        ;
        var _local1:int = ((this._lC - this._1Qj) / this._Op);
        return ((this._1Qj + (int((Math.random() * _local1)) * this._Op)));
    }


}
}//package com.company.assembleegameclient.objects

class WhileMovingProperties {

    public var z_:Number = 0;
    public var flying_:Boolean = false;

    public function WhileMovingProperties(_arg1:XML) {
        if (_arg1.hasOwnProperty("Z")) {
            this.z_ = Number(_arg1.Z);
        }
        ;
        this.flying_ = _arg1.hasOwnProperty("Flying");
    }

}

