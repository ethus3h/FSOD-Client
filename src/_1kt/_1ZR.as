// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kt._1ZR

package _1kt {
import _0Sj._0mW;

import _0cA._0bz;

import _1L3._1FO;

import flash.display.DisplayObject;
import flash.display.Sprite;

public class _1ZR extends Sprite {

    [Inject]
    public var _BY:_0mW;
    [Inject]
    public var _sk:_0bz;
    public var _1EY:_tA;
    public var _2E:_tA;
    public var _1Wh:DisplayObject;
    private var petVO:_1FO;


    public function _UX(_arg1:_1FO):void {
        this._BY._1dG = 8;
        this.petVO = _arg1;
        this._2E = this._05r();
        this._1EY = this._05r();
        this._dC(_arg1);
        this._04W();
    }

    public function _1a8():_1FO {
        return (this.petVO);
    }

    private function _dC(_arg1:_1FO):void {
        this._1Wh = this._BY.create(_arg1, 120);
        this._1Wh.x = ((-1 * this._1Wh.width) / 2);
        this._1Wh.y = ((-1 * this._1Wh.height) / 2);
        addChild(this._1Wh);
    }

    private function _04W():void {
        this._2E._03i = 50;
        this._1EY._03i = (this._2E._03i * 1.5);
        var _local1:Number = 0.7;
        this._1EY.width = (this._2E.width * _local1);
        this._1EY.height = (this._2E.height * _local1);
        this._1EY.alpha = (this._2E.alpha = 0.7);
    }

    private function _05r():_tA {
        var _local1:_tA = this._sk.getInstance(_tA);
        addChild(_local1);
        return (_local1);
    }


}
}//package _1kt

