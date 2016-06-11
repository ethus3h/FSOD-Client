// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03u._Fk

package _03u {
public class _Fk extends _0MI {

    public function _Fk(_arg1:_wP, _arg2:_wP = null, _arg3:_wP = null) {
        this._2 = _arg1;
        this.success = _arg2;
        this.failure = _arg3;
    }
    private var _2:_wP;
    private var success:_wP;
    private var failure:_wP;

    override protected function startTask():void {
        this._2._i4.addOnce(this._1MT);
        this._2.start();
    }

    public function _1Pr(_arg1:_wP):void {
        this.success = _arg1;
    }

    public function _kJ(_arg1:_wP):void {
        this.failure = _arg1;
    }

    private function _1MT(_arg1:_wP, _arg2:Boolean, _arg3:String = ""):void {
        if (_arg2) {
            this._0dP(this.success);
        } else {
            this._0dP(this.failure);
        }
        ;
    }

    private function _0dP(_arg1:_wP):void {
        if (_arg1) {
            _arg1._i4.addOnce(this._Eb);
            _arg1.start();
        } else {
            _Ug(true);
        }
        ;
    }

    private function _Eb(_arg1:_wP, _arg2:Boolean, _arg3:String = ""):void {
        _Ug(_arg2, _arg3);
    }


}
}//package _03u

