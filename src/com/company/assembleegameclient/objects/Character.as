// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Character

package com.company.assembleegameclient.objects {
import _1TG._0Yn;

public class Character extends GameObject {

    public function Character(_arg1:XML) {
        super(_arg1);
        this._1Cv = ((_arg1.hasOwnProperty("HitSound")) ? String(_arg1.HitSound) : "monster/default_hit");
        _0Yn.load(this._1Cv);
        this._false = ((_arg1.hasOwnProperty("DeathSound")) ? String(_arg1.DeathSound) : "monster/default_death");
        _0Yn.load(this._false);
    }
    public var _1Cv:String;
    public var _false:String;

    override public function damage(_arg1:int, _arg2:int, _arg3:Vector.<uint>, _arg4:Boolean, _arg5:Projectile):void {
        super.damage(_arg1, _arg2, _arg3, _arg4, _arg5);
        if (_0HD) {
            _0Yn.play(this._false);
        } else {
            if (((_arg5) || ((_arg2 > 0)))) {
                _0Yn.play(this._1Cv);
            }
            ;
        }
        ;
    }


}
}//package com.company.assembleegameclient.objects

