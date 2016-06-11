// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game._0p2

package com.company.assembleegameclient.game {
import _07g._1QQ;

import _10a._FU;

import _14._29;

import _1Sm._sy;

import _1TC._08E;

import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.map._1Px;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.tutorial.Tutorial;

import flash.display.Sprite;

public class _0p2 extends Sprite {

    public const closed:_sy = new _sy();

    public function _0p2() {
        this.moveRecords_ = new _1V7();
        this.camera_ = new _18q();
        super();
    }
    public var isEditor:Boolean;
    public var tutorial_:Tutorial;
    public var mui_:_3v;
    public var lastUpdate_:int;
    public var moveRecords_:_1V7;
    public var map:_1Px;
    public var model:_FU;
    public var hudView:_1QQ;
    public var camera_:_18q;
    public var gsc_:_08E;

    public function initialize():void {
    }

    public function setFocus(_arg1:GameObject):void {
    }

    public function applyMapInfo(_arg1:_29):void {
    }

    public function evalIsNotInCombatMapArea():Boolean {
        return (false);
    }


}
}//package com.company.assembleegameclient.game

