// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects._0HW

package com.company.assembleegameclient.objects {
import com.company.assembleegameclient.util.ConditionEffect;

import flash.utils.Dictionary;

public class _0HW {

    public function _0HW(_arg1:XML) {
        var _local2:XML;
        super();
        this.bulletType_ = int(_arg1.@id);
        this.objectId_ = _arg1.ObjectId;
        this.lifetime_ = int(_arg1.LifetimeMS);
        this.speed_ = int(_arg1.Speed);
        this.size_ = ((_arg1.hasOwnProperty("Size")) ? Number(_arg1.Size) : -1);
        if (_arg1.hasOwnProperty("Damage")) {
            this.minDamage_ = (this.maxDamage_ = int(_arg1.Damage));
        } else {
            this.minDamage_ = int(_arg1.MinDamage);
            this.maxDamage_ = int(_arg1.MaxDamage);
        }
        ;
        for each (_local2 in _arg1.ConditionEffect) {
            if (this.effects_ == null) {
                this.effects_ = new Vector.<uint>();
            }
            ;
            this.effects_.push(ConditionEffect._Ry(String(_local2)));
            if (_local2.attribute("target") == "1") {
                if (this._use == null) {
                    this._use = new Dictionary();
                }
                ;
                this._use[ConditionEffect._Ry(String(_local2))] = true;
            }
            ;
        }
        ;
        this._1AG = _arg1.hasOwnProperty("MultiHit");
        this._7g = _arg1.hasOwnProperty("PassesCover");
        this._120 = _arg1.hasOwnProperty("ArmorPiercing");
        this._0a8 = _arg1.hasOwnProperty("ParticleTrail");
        if (_arg1.ParticleTrail.hasOwnProperty("@intensity")) {
            this._1Cm = (Number(_arg1.ParticleTrail.@intensity) * 100);
        }
        ;
        if (_arg1.ParticleTrail.hasOwnProperty("@lifetimeMS")) {
            this._Vx = Number(_arg1.ParticleTrail.@lifetimeMS);
        }
        ;
        this._0MV = ((this._0a8) ? Number(_arg1.ParticleTrail) : Number(0xFF00FF));
        if (this._0MV == 0) {
            this._0MV = 0xFF00FF;
        }
        ;
        this._vV = _arg1.hasOwnProperty("Wavy");
        this._0wZ = _arg1.hasOwnProperty("Parametric");
        this._wg = _arg1.hasOwnProperty("Boomerang");
        this._5p = ((_arg1.hasOwnProperty("Amplitude")) ? Number(_arg1.Amplitude) : 0);
        this._1q4 = ((_arg1.hasOwnProperty("Frequency")) ? Number(_arg1.Frequency) : 1);
        this._06H = ((_arg1.hasOwnProperty("Magnitude")) ? Number(_arg1.Magnitude) : 3);
    }
    public var bulletType_:int;
    public var objectId_:String;
    public var lifetime_:int;
    public var speed_:int;
    public var size_:int;
    public var minDamage_:int;
    public var maxDamage_:int;
    public var effects_:Vector.<uint> = null;
    public var _1AG:Boolean;
    public var _7g:Boolean;
    public var _120:Boolean;
    public var _0a8:Boolean;
    public var _1Cm:int = -1;
    public var _Vx:int = -1;
    public var _0MV:int = 0xFF00FF;
    public var _vV:Boolean;
    public var _0wZ:Boolean;
    public var _wg:Boolean;
    public var _5p:Number;
    public var _1q4:Number;
    public var _06H:Number;
    public var _use:Dictionary;

}
}//package com.company.assembleegameclient.objects

