// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1Up

package _0t {
import _Z0.ToolTip;

import com.company.assembleegameclient.map._0Y2;

import flash.display.Shape;

public class _1Up extends _1pu {

    public function _1Up(_arg1:XML) {
        super(int(_arg1.@type));
        this._06d = _arg1;
        var _local2:Shape = new Shape();
        _local2.graphics.beginFill(_0Y2.getColor(type_), 0.5);
        _local2.graphics.drawRect(0, 0, (WIDTH - 8), (HEIGHT - 8));
        _local2.graphics.endFill();
        _local2.x = ((WIDTH / 2) - (_local2.width / 2));
        _local2.y = ((HEIGHT / 2) - (_local2.height / 2));
        addChild(_local2);
    }
    public var _06d:XML;

    override protected function getToolTip():ToolTip {
        return (new _14t(this._06d));
    }


}
}//package _0t-

