// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_gr._1U7

package _gr {
import _01M._0Dw;
import _01M._pq;

import _03u._0MI;
import _03u._wP;

import _0MG._1W1;

import _0cA._0bz;

import _1PM._1YQ;

public class _1U7 extends _0MI {

    public static const _1nH:int = int.MAX_VALUE;//2147483647

    private const list:Vector.<_1W1> = new <_1W1>[];

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _1TT:_1YQ;
    private var index:int = 0;

    override protected function startTask():void {
        this.list.sort(this._1AL);
        this.index = 0;
        this._1v9();
    }

    public function _1CI(_arg1:Class, _arg2:int = 0):void {
        var _local3:_pq = new _pq();
        _local3._sk = this._sk;
        _local3._1t7 = _arg1;
        _local3.priority = _arg2;
        this.list.push(_local3);
    }

    public function _0q3(_arg1:Class, _arg2:int = 0):void {
        var _local3:_0Dw = new _0Dw();
        _local3._sk = this._sk;
        _local3._1Ay = _arg1;
        _local3.priority = _arg2;
        this.list.push(_local3);
    }

    private function _1AL(_arg1:_1W1, _arg2:_1W1):int {
        return ((_arg1._1SS() - _arg2._1SS()));
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
        return ((this.index < this.list.length));
    }

    private function _08a():void {
        var _local1:_wP = this.list[this.index++].make();
        _local1.lastly.addOnce(this._1MT);
        this._1TT.info("StartupSequence start:{0}", [_local1]);
        _local1.start();
    }

    private function _1MT(_arg1:_wP, _arg2:Boolean, _arg3:String):void {
        this._1TT.info("StartupSequence finish:{0} (isOK: {1})", [_arg1, _arg2]);
        if (_arg2) {
            this._1v9();
        } else {
            _Ug(false, _arg3);
        }
        ;
    }


}
}//package _gr

