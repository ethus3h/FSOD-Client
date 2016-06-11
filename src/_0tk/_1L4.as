// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tk._1L4

package _0tk {

public class _1L4 {

    public function _1L4() {
        this._1iW = new Vector.<_1tn>();
        super();
    }
    private var _1iW:Vector.<_1tn>;
    private var _1pw:int = 0;

    public function _04f(_arg1:_1tn):void {
        this._1iW.length = this._1pw;
        _arg1.execute();
        this._1iW.push(_arg1);
        this._1pw++;
    }

    public function _11g():void {
        if (this._1pw == 0) {
            return;
        }
        ;
        this._1iW[--this._1pw].unexecute();
    }

    public function _1O():void {
        if (this._1pw == this._1iW.length) {
            return;
        }
        ;
        this._1iW[this._1pw++].execute();
    }

    public function clear():void {
        this._1pw = 0;
        this._1iW.length = 0;
    }


}
}//package _0tk

