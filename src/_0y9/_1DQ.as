// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0y9._1DQ

package _0y9 {
import _175._0O4;

import _6u._1wU;

import flash.text.TextField;

public class _1DQ extends TextField {

    public static const _1wn:uint = 977663;
    public static const _1d5:uint = 15874138;

    public var _3C:_0O4;


    override public function set text(_arg1:String):void {
        super.text = this._4D(_arg1);
    }

    override public function set htmlText(_arg1:String):void {
        super.htmlText = this._4D(_arg1);
    }

    public function _4D(_arg1:String):String {
        var _local2:_1wU;
        if (this._3C._0oD.length) {
            _local2 = this._3C._0oD[0];
            if (_local2._cb) {
                this._yI(_1wn);
            } else {
                this._yI(_1d5);
            }
            ;
            return (_local2.key);
        }
        ;
        return (_arg1);
    }

    private function _yI(_arg1:uint):void {
        background = true;
        backgroundColor = _arg1;
    }


}
}//package _0y9

