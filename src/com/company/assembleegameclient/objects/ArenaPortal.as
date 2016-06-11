// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ArenaPortal

package com.company.assembleegameclient.objects {
import _0CT._8w;

import _0Mr._1M;
import _0Mr._1vN;

import _0y9._JP;

import _1f4.ArenaPortalPanel;
import _1f4.Panel;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.map._18q;

import flash.display.BitmapData;
import flash.display.IGraphicsData;

public class ArenaPortal extends Portal implements _Rk {

    public function ArenaPortal(_arg1:XML) {
        super(_arg1);
        _11k = true;
        name_ = "";
    }

    override public function getPanel(_arg1:GameSprite):Panel {
        return (new ArenaPortalPanel(_arg1, this));
    }

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        super.draw(_arg1, _arg2, _arg3);
        _9J(_arg1, _arg2);
    }

    override protected function makeNameBitmapData():BitmapData {
        var _local1:_1vN = new _1M(name_);
        var _local2:_JP = _8w._1Sz().getInstance(_JP);
        return (_local2.make(_local1, 16, 0xFFFFFF, true, _2h, true));
    }


}
}//package com.company.assembleegameclient.objects

