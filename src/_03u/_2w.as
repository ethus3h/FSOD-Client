// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03u._2w

package _03u {
public class _2w extends _0MI {

    public function _2w() {
        this._Pc = new Vector.<_wP>();
    }
    private var _Pc:Vector.<_wP>;
    private var index:int;
    private var _19i:Boolean;

    override protected function startTask():void {
        this.index = 0;
        this._1v9();
    }

    override protected function onReset():void {
        var _local1:_wP;
        for each (_local1 in this._Pc) {
            _local1.reset();
        }
        ;
    }

    public function _18k():Boolean {
        return (this._19i);
    }

    public function _1oO(_arg1:Boolean):void {
        this._19i = _arg1;
    }

    public function add(_arg1:_wP):void {
        this._Pc.push(_arg1);
    }

    private function _1v9():void {
        if (this._Lf()) {
            this._08a();
        } else {
            _Ug(true);
        }
        ;
    }

    private function _Lf():Boolean {
        return ((this.index < this._Pc.length));
    }

    private function _08a():void {
        var _local1:_wP = this._Pc[this.index++];
        _local1.lastly.addOnce(this._1MT);
        _local1.start();
    }

    private function _1MT(_arg1:_wP, _arg2:Boolean, _arg3:String):void {
        if (((_arg2) || (this._19i))) {
            this._1v9();
        } else {
            _Ug(false, _arg3);
        }
        ;
    }


}
}//package _03u

