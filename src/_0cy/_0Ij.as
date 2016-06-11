// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cy._0Ij

package _0cy {
import _1wC._0n1;

import _Tw._10n;

import flash.display.DisplayObjectContainer;
import flash.display.Sprite;

public class _0Ij extends Sprite {

    public function _0Ij() {
        addChild((this.menu = new _1XE()));
        addChild((this._157 = new Sprite()));
        addChild((this.top = new Sprite()));
        addChild((this._KU = new Sprite()));
        this._KU.mouseEnabled = false;
        addChild((this.dialogs = new _10n()));
        addChild((this.tooltips = new _0n1()));
        addChild((this._C = new Sprite()));
        addChild((this.console = new Sprite()));
    }
    public var _157:DisplayObjectContainer;
    public var top:DisplayObjectContainer;
    public var _KU:DisplayObjectContainer;
    public var _C:DisplayObjectContainer;
    public var console:DisplayObjectContainer;
    private var menu:_1XE;
    private var tooltips:_0n1;
    private var dialogs:_10n;

}
}//package _0cy

