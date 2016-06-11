// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kt._e4

package _1kt {
import _0Sj._0mW;
import _0Sj._1vA;

import _0cA._0bz;

import _1L3._1FO;

import _1TC._0zf;

import flash.display.DisplayObject;
import flash.display.Sprite;

import kabam.rotmg.assets._0vi;

public class _e4 extends Sprite {

    public const background:DisplayObject = new _0vi.EvolveBackground();
    public const _1jb:DisplayObject = new _0vi.EvolveBackground();

    public function _e4() {
        addChild(this.background);
        addChild(this._1jb);
    }
    [Inject]
    public var _BY:_0mW;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _0Xf:_1MR;
    public var _zz:_1vA;
    public var _1cq:_1ZR;
    private var _1nC:_0zf;

    public function _1KA(_arg1:_0zf):void {
        this._BY._1dG = 6;
        this._1nC = _arg1;
        this._0CA(_arg1._zz);
        this._1IT(_arg1._0QX);
        addChild(this._0Xf);
        this._0Xf._12B.addOnce(this._1qQ);
        this._0Xf.play();
    }

    public function _0O():_0zf {
        return (this._1nC);
    }

    private function _1IT(_arg1:_1FO):void {
        this._1cq = this._sk.getInstance(_1ZR);
        this._1cq._UX(_arg1);
        this._1cq.mask = this._1jb;
        this._1cq.x = (this.background.width / 2);
        this._1cq.y = (this.background.height / 2);
    }

    private function _0CA(_arg1:_1FO):void {
        this._zz = this._BY.create(_arg1, 100);
        this._zz.x = ((this.background.width - this._zz.width) / 2);
        this._zz.y = ((this.background.height - this._zz.height) / 2);
        addChild(this._zz);
    }

    private function _1qQ():void {
        removeChild(this._zz);
        addChildAt(this._1cq, getChildIndex(this._0Xf));
    }


}
}//package _1kt

