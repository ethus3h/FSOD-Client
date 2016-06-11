// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_rD._0ee

package _rD {
public class _0ee {

    public function _0ee(_arg1:Number, _arg2:Number) {
        this.a = _arg1;
        this.r = _arg2;
    }
    private var a:Number;
    private var r:Number;

    public function _0Bb(_arg1:int):Number {
        return (((this.a * (1 - Math.pow(this.r, _arg1))) / (1 - this.r)));
    }

    public function _0t8(_arg1:int):Number {
        return ((this.a * Math.pow(this.r, _arg1)));
    }


}
}//package _rD

