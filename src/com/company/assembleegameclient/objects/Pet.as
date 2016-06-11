// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Pet

package com.company.assembleegameclient.objects {
import _0CT._8w;

import _1L3._1FO;
import _1L3._IG;

import _1d9._145;

import _1f4.Panel;

import _6u._TG;

import _Z0._0BS;
import _Z0.ToolTip;

import _jP.PetPanel;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0pu;
import com.company.assembleegameclient.util._0zq;

public class Pet extends GameObject implements _Rk {

    public function Pet(_arg1:XML) {
        super(_arg1);
        _11k = true;
        this._3p = _8w._1Sz().getInstance(_145);
        this._e2 = _8w._1Sz().getInstance(_IG);
        this._e2._0ER();
    }
    public var _1HM:_1FO;
    public var skin:_0zq;
    public var _20B:_0zq;
    public var _0cg:int;
    public var _Z2:Boolean = false;
    private var _3p:_145;
    private var _e2:_IG;

    public function getTooltip():ToolTip {
        var _local1:ToolTip = new _0BS(0x363636, 0x9B9B9B, _TG._0Yp, _TG._042, 200);
        return (_local1);
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new PetPanel(_arg1, this._1HM));
    }

    public function _0J7(_arg1:int):void {
        var _local5:_0T2;
        this._0cg = _arg1;
        var _local2:XML = ObjectLibrary._22(ObjectLibrary._4C(_arg1));
        var _local3:String = _local2.AnimatedTexture.File;
        var _local4:int = _local2.AnimatedTexture.Index;
        if (this.skin == null) {
            this._Z2 = true;
            this.skin = _0pu._1Iw(_local3, _local4);
            this._20B = this.skin;
        } else {
            this.skin = _0pu._1Iw(_local3, _local4);
        }
        ;
        this._Z2 = (this.skin == this._20B);
        _local5 = this.skin.imageFromAngle(0, _0zq._c0, 0);
        _0TX = this.skin;
        texture_ = _local5.image_;
        mask_ = _local5.mask_;
    }

    public function _35():void {
        var _local1:_0T2;
        this._0cg = -1;
        if (this._20B == null) {
            return;
        }
        ;
        _local1 = this._20B.imageFromAngle(0, _0zq._c0, 0);
        this._Z2 = true;
        _0TX = this._20B;
        texture_ = _local1.image_;
        mask_ = _local1.mask_;
    }


}
}//package com.company.assembleegameclient.objects

