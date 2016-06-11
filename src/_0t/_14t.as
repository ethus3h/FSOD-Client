// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._14t

package _0t {
import _Z0.ToolTip;

import com.company.ui._V2;

import flash.filters.DropShadowFilter;

public class _14t extends ToolTip {

    private static const _MT:int = 180;

    public function _14t(_arg1:XML) {
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
    }
    private var _zj:_V2;

}
}//package _0t-

