// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._g4

package _0Sj {
import _07g._2v;

import _08Y._QU;

import _0Ql._ZQ;

import com.company.assembleegameclient.ui._1jP;

import flash.display.Sprite;
import flash.events.MouseEvent;

public class _g4 extends Sprite {

    public function _g4() {
        this.buttonOne = new _1jP(14, "buttonOne", 70);
        this.buttonTwo = new _1jP(14, "buttonTwo", 70);
        this._0y7 = new _ZQ(this.buttonOne, MouseEvent.CLICK);
        this._2y = new _ZQ(this.buttonTwo, MouseEvent.CLICK);
        super();
        this._1ZA();
        this._mv();
    }
    public var buttonOne:_1jP;
    public var buttonTwo:_1jP;
    public var _0y7:_ZQ;
    public var _2y:_ZQ;

    private function _mv():void {
        addChild(this.buttonOne);
        addChild(this.buttonTwo);
    }

    private function _1ZA():void {
        var _local3:_1jP;
        var _local1:Array = [this.buttonOne, this.buttonTwo];
        var _local2:_2v = new _2v();
        for each (_local3 in _local1) {
            _local2.push(_local3.textChanged);
        }
        ;
        _local2.complete.addOnce(this._Rg);
    }

    private function _Rg():void {
        this.buttonOne.x = _QU._j;
        this.buttonTwo.x = ((_QU._IY - this.buttonTwo.width) - _QU._j);
    }


}
}//package _0Sj

