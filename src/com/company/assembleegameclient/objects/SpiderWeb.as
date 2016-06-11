// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.SpiderWeb

package com.company.assembleegameclient.objects {
import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.map._18q;

import flash.display.IGraphicsData;

public class SpiderWeb extends GameObject {

    public function SpiderWeb(_arg1:XML) {
        super(_arg1);
    }
    private var _KE:Boolean = false;

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        if (!this._KE) {
            this._KE = this._0Hu();
        }
        ;
        if (this._KE) {
            super.draw(_arg1, _arg2, _arg3);
        }
        ;
    }

    private function _0Hu():Boolean {
        var _local1:Square;
        _local1 = map_.lookupSquare((x_ - 1), y_);
        if (((!((_local1 == null))) && ((_local1.obj_ is Wall)))) {
            return (true);
        }
        ;
        _local1 = map_.lookupSquare(x_, (y_ - 1));
        if (((!((_local1 == null))) && ((_local1.obj_ is Wall)))) {
            _1bD.setPosition(x_, y_, 0, 90);
            return (true);
        }
        ;
        _local1 = map_.lookupSquare((x_ + 1), y_);
        if (((!((_local1 == null))) && ((_local1.obj_ is Wall)))) {
            _1bD.setPosition(x_, y_, 0, 180);
            return (true);
        }
        ;
        _local1 = map_.lookupSquare(x_, (y_ + 1));
        if (((!((_local1 == null))) && ((_local1.obj_ is Wall)))) {
            _1bD.setPosition(x_, y_, 0, 270);
            return (true);
        }
        ;
        return (false);
    }


}
}//package com.company.assembleegameclient.objects

