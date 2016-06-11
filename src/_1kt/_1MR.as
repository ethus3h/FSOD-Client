// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kt._1MR

package _1kt {
import _1Sm._sy;

import _q3._0Am;
import _q3._1EU;
import _q3._1po;

import flash.display.Sprite;

public class _1MR extends Sprite {

    public const _12B:_sy = new _sy();

    public function _1MR() {
        addChild(_1po._0kH());
        this._0xP = new _0Am(this);
        this._0ve = new _1EU(this);
        alpha = 0;
    }
    public var _0xP:_VO;
    public var _0ve:_VO;

    public function play():void {
        this._0xP._0Fe(this._qC);
        this._0xP.start();
    }

    private function _qC():void {
        this._12B.dispatch();
        this._0ve.start();
    }


}
}//package _1kt

