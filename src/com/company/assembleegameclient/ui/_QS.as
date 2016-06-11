// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._QS

package com.company.assembleegameclient.ui {
import _0Wz._1UY;

import _0y9._06T;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;

public class _QS extends Sprite {

    public function _QS() {
        this.textField = this._m3();
        this.textField.x = 5;
        this._1VQ = new _1UY(this.textField);
        addChild(this._1VQ);
        this._1VQ.update(100000);
        graphics.lineStyle(2, 0xFFFFFF);
        graphics.beginFill(0x363636);
        graphics.drawRoundRect(0, 0, 150, 25, 10);
        filters = [new DropShadowFilter(0, 0, 0, 1, 16, 16, 1)];
    }
    private var _1VQ:_1UY;
    private var textField:_06T;

    public function update(_arg1:Number):void {
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


}
}//package com.company.assembleegameclient.ui

