// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Container

package com.company.assembleegameclient.objects {
import _1TG._0Yn;

import _1f4.Panel;

import _1qi._1p4;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.map.Map;
import com.company.util.PointUtil;

public class Container extends GameObject implements _Rk {

    public function Container(_arg1:XML) {
        super(_arg1);
        _11k = true;
        this._VC = _arg1.hasOwnProperty("Loot");
        this.ownerId_ = "";
    }
    public var _VC:Boolean;
    public var ownerId_:String;

    override public function addTo(_arg1:Map, _arg2:Number, _arg3:Number):Boolean {
        if (!super.addTo(_arg1, _arg2, _arg3)) {
            return (false);
        }
        ;
        if (map_.player_ == null) {
            return (true);
        }
        ;
        var _local4:Number = PointUtil._1Ar(map_.player_.x_, map_.player_.y_, _arg2, _arg3);
        if (((this._VC) && ((_local4 < 10)))) {
            _0Yn.play("loot_appears");
        }
        ;
        return (true);
    }

    public function _0r8(_arg1:String):void {
        this.ownerId_ = _arg1;
        _11k = (((this.ownerId_ == "")) || (this._1w5()));
    }

    public function _1w5():Boolean {
        return ((map_.player_.accountId_ == this.ownerId_));
    }

    public function getPanel(_arg1:GameSprite):Panel {
        var _local2:Player = ((((_arg1) && (_arg1.map))) ? _arg1.map.player_ : null);
        var _local3:_1p4 = new _1p4(this, _local2);
        return (_local3);
    }


}
}//package com.company.assembleegameclient.objects

