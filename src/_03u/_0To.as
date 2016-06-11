// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03u._0To

package _03u {
public class _0To extends _0MI {

    public function _0To() {
        this._Pc = new Vector.<_0MI>();
    }
    private var _Pc:Vector.<_0MI>;
    private var _1GM:int;

    override protected function startTask():void {
        this._1GM = this._Pc.length;
        if (this._1GM > 0) {
            this._9F();
        } else {
            _Ug(true);
        }
        ;
    }

    override protected function onReset():void {
        var _local1:_0MI;
        for each (_local1 in this._Pc) {
            _local1.reset();
        }
        ;
    }

    public function add(_arg1:_0MI):void {
        this._Pc.push(_arg1);
    }

    public function toString():String {
        return ((("[TaskGroup(" + this._Pc.join(",")) + ")]"));
    }

    private function _9F():void {
        var _local1:int = this._1GM;
        while (_local1--) {
            this._Pc[_local1].lastly.addOnce(this._1MT);
            this._Pc[_local1].start();
        }
        ;
    }

    private function _1MT(_arg1:_0MI, _arg2:Boolean, _arg3:String):void {
        if (_arg2) {
            if (--this._1GM == 0) {
                _Ug(true);
            }
            ;
        } else {
            _Ug(false, _arg3);
        }
        ;
    }


}
}//package _03u

