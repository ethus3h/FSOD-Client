// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._0YT

package _0PF {
import _0ld.*;

import com.company.assembleegameclient.util._1hw;

import flash.display.Sprite;

public class _0YT extends Sprite implements _0jp {

    public function _0YT() {
        this._0FE = new _1hw(this);
    }
    public var _0FE:_1hw;

    protected function _0Hr():void {
        this.x = ((this._0FE._216() - this.width) * 0.5);
        this.y = ((this._0FE._0Ct() - this.height) * 0.5);
    }


}
}//package _0PF

