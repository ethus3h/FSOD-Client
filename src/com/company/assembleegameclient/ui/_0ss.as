// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._0ss

package com.company.assembleegameclient.ui {
import _0Mr._1vN;

import _0Wz._1UY;

import _0y9._06T;

import _1Sm._sy;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;

public class _0ss extends Sprite {

    public function _0ss() {
        this._09m();
        this.textChanged = this._1N.textChanged;
        this._1N.x = 0;
        this._1N.y = 0;
        var _local1:_06T = this._m3();
        this._1VQ = new _1UY(_local1);
        this._1VQ.x = 0;
        this._1VQ.y = 20;
        addChild(this._1VQ);
        addChild(this._1N);
    }
    public var textChanged:_sy;
    private var _1N:_06T;
    private var _1VQ:_1UY;

    public function _1Hq(_arg1:_1vN):void {
        this._1N.setStringBuilder(_arg1);
    }

    public function setTime(_arg1:Number):void {
        this._1VQ.update(_arg1);
    }

    private function _m3():_06T {
        var _local1:_06T;
        _local1 = new _06T().setSize(16).setColor(16777103);
        _local1.setBold(true);
        _local1.setMultiLine(true);
        _local1.mouseEnabled = true;
        _local1.filters = [new DropShadowFilter(0, 0, 0)];
        return (_local1);
    }

    private function _09m():void {
        this._1N = new _06T().setSize(16).setColor(0xFFFFFF);
        this._1N.setMultiLine(true);
        this._1N.mouseEnabled = true;
        this._1N.filters = [new DropShadowFilter(0, 0, 0)];
    }


}
}//package com.company.assembleegameclient.ui

