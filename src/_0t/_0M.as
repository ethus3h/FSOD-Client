// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._0-M

package _0t {
import _Z0.ToolTip;

import com.company.ui._V2;

import flash.filters.DropShadowFilter;

public class _0M extends ToolTip {

    private static const _MT:int = 180;

    public function _0M(_arg1:XML) {
        super(0x363636, 1, 0x9B9B9B, 1, true);
        this._zj = new _V2(16, 0xFFFFFF, false, (_MT - 4), 0);
        this._zj.setBold(true);
        this._zj.wordWrap = true;
        this._zj.text = String(_arg1.@id);
        this._zj._fm();
        this._zj.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        this._zj.x = 0;
        this._zj.y = 0;
        addChild(this._zj);
        var _local2 = "";
        if (_arg1.hasOwnProperty("Speed")) {
            _local2 = (_local2 + (("Speed: " + Number(_arg1.Speed).toFixed(2)) + "\n"));
        } else {
            _local2 = (_local2 + "Speed: 1.00\n");
        }
        ;
        if (_arg1.hasOwnProperty("NoWalk")) {
            _local2 = (_local2 + "Unwalkable\n");
        }
        ;
        if (_arg1.hasOwnProperty("Push")) {
            _local2 = (_local2 + "Push\n");
        }
        ;
        if (_arg1.hasOwnProperty("Sink")) {
            _local2 = (_local2 + "Sink\n");
        }
        ;
        if (_arg1.hasOwnProperty("Sinking")) {
            _local2 = (_local2 + "Sinking\n");
        }
        ;
        if (_arg1.hasOwnProperty("Animate")) {
            _local2 = (_local2 + "Animated\n");
        }
        ;
        if (_arg1.hasOwnProperty("RandomOffset")) {
            _local2 = (_local2 + "Randomized\n");
        }
        ;
        this._1TU = new _V2(14, 0xB3B3B3, false, _MT, 0);
        this._1TU.wordWrap = true;
        this._1TU.text = String(_local2);
        this._1TU._fm();
        this._1TU.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        this._1TU.x = 0;
        this._1TU.y = (this._zj.height + 2);
        addChild(this._1TU);
    }
    private var _zj:_V2;
    private var _1TU:_V2;

}
}//package _0t-

