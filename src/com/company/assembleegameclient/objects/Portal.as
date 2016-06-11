// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.Portal

package com.company.assembleegameclient.objects {
import _0CT._8w;

import _0Mr._1vN;

import _0y9._JP;

import _1f4.Panel;
import _1f4.PortalPanel;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.map._18q;

import flash.display.BitmapData;
import flash.display.IGraphicsData;

public class Portal extends GameObject implements _Rk {

    private static const _Pj:RegExp = /(^\s+)\s\(([0-9]+)\/[0-9]+\)/;

    public function Portal(_arg1:XML) {
        super(_arg1);
        _11k = true;
        this._0fT = _arg1.hasOwnProperty("NexusPortal");
        this._0WE = _arg1.hasOwnProperty("LockedPortal");
    }
    public var _0fT:Boolean;
    public var _0WE:Boolean;
    public var _0N6:Boolean = true;

    override protected function makeNameBitmapData():BitmapData {
        var _local1:Array = name_.match(_Pj);
        var _local2:_1vN = new _0Px().makeBuilder(name_);
        var _local3:_JP = _8w._1Sz().getInstance(_JP);
        return (_local3.make(_local2, 16, 0xFFFFFF, true, _2h, true));
    }

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        super.draw(_arg1, _arg2, _arg3);
        if (this._0fT) {
            _9J(_arg1, _arg2);
        }
        ;
    }

    public function getPanel(_arg1:GameSprite):Panel {
        return (new PortalPanel(_arg1, this));
    }


}
}//package com.company.assembleegameclient.objects

