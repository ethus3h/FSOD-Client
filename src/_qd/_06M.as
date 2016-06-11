// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_qd._06M

package _qd {
import _0oZ._function;

public class _06M extends _function {

    private static const _s4:String = "[{NAME}] [0x33FF33:{/x {MEAN}ms (min {MIN}ms, max {MAX}ms)]";
    private static const COUNT:int = 10;

    public function _06M(_arg1:String) {
        super(_arg1);
        this._1el = new Vector.<int>(COUNT, true);
        this.index = 0;
        this._14e = 0;
        this.count = 0;
        this.min = int.MAX_VALUE;
        this.max = -1;
    }
    public var _14e:int;
    public var mean:int;
    public var max:int;
    public var min:int;
    private var _1el:Vector.<int>;
    private var index:int;
    private var count:int;

    public function _3k(_arg1:int):void {
        if (this.count < COUNT) {
            this._14e = (this._14e + _arg1);
            this.count++;
            this._1el[this.index] = _arg1;
        } else {
            this._14e = (this._14e - this._1el[this.index]);
            this._14e = (this._14e + _arg1);
            this._1el[this.index] = _arg1;
        }
        ;
        if (++this.index == COUNT) {
            this.index = 0;
        }
        ;
        this.mean = (this._14e / this.count);
        if (_arg1 > this.max) {
            this.max = _arg1;
        }
        ;
        if (_arg1 < this.min) {
            this.min = _arg1;
        }
        ;
        data = _s4.replace("{NAME}", name).replace("{MEAN}", this.mean).replace("{MIN}", this.min).replace("{MAX}", this.max);
    }


}
}//package _qd

