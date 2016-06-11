// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Wz._1UY

package _0Wz {
import _0Mr._1M;

import _0y9._06T;

import _1iA._0rP;

import flash.display.Sprite;

public class _1UY extends Sprite {

    public function _1UY(_arg1:_06T) {
        this._1Qc = new _0rP();
        super();
        this._1fX(_arg1);
    }
    private var _textField:_06T;
    private var _1Qc:_0rP;

    public function update(_arg1:Number):void {
        this._textField.setStringBuilder(new _1M(this._1Qc._0Jt(_arg1)));
    }

    private function _1fX(_arg1:_06T):void {
        addChild((this._textField = _arg1));
    }


}
}//package _0Wz

