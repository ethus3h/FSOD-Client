// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0AI._1BY

package _0AI {
import _7T._0CZ;

import flash.display.Sprite;

public class _1BY extends Sprite {

    private const _1Kt:Number = 306;
    private const _1HN:Number = 194;
    private const _0n9:Number = 151;
    private const _18R:Number = 189;
    private const _0cK:Number = 4;
    private const _0Gw:_Ds = new _Ds(_1Kt, _1HN);
    private const _1Tc:_Ds = new _Ds(_0n9, _18R);
    private const _03z:_Ds = new _Ds(_0n9, _18R);

    public function _1BY() {
        this.tabChildren = false;
        this._1dN();
        this._UC();
    }

    function update(_arg1:Vector.<_0CZ>):void {
        this._0Gw.init(_arg1[0]);
        this._1Tc.init(_arg1[1]);
        this._03z.init(_arg1[2]);
        this._0Gw.load();
        this._1Tc.load();
        this._03z.load();
    }

    private function _1dN():void {
        addChild(this._0Gw);
        addChild(this._1Tc);
        addChild(this._03z);
    }

    private function _UC():void {
        this._1Tc.y = (this._1HN + this._0cK);
        this._03z.x = (this._0n9 + this._0cK);
        this._03z.y = (this._1HN + this._0cK);
    }


}
}//package _0AI

