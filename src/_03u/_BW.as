// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03u._BW

package _03u {
public class _BW {

    public function _BW() {
        this._Pc = new <_wP>[];
    }
    private var _Pc:Vector.<_wP>;

    public function add(_arg1:_wP):void {
        this._Pc.push(_arg1);
        _arg1._i4.addOnce(this._1MT);
    }

    public function _0Xs(_arg1:_wP):Boolean {
        return (!((this._Pc.indexOf(_arg1) == -1)));
    }

    private function _1MT(_arg1:_wP, _arg2:Boolean, _arg3:String = ""):void {
        this._Pc.splice(this._Pc.indexOf(_arg1), 1);
    }


}
}//package _03u

