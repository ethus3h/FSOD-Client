// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03o._xq

package _03o {
import _0fB._17U;

public class _xq {

    protected var _1QY:_17U;


    public function get _11w():_17U {
        return (this._1QY);
    }

    public function set _11w(_arg1:_17U):void {
        if (_arg1 !== this._1QY) {
            this._1QY = _arg1;
        }
        ;
    }

    public function get _qh():_17U {
        if (!this._1QY) {
            return (null);
        }
        ;
        var _local1:_17U = this._1QY;
        while (_local1.next) {
            _local1 = _local1.next;
        }
        ;
        return (_local1);
    }

    public function remove(_arg1:_17U):void {
        var _local2:_17U = this._1QY;
        if (_local2 == _arg1) {
            this._1QY = _arg1.next;
        }
        ;
        while (_local2) {
            if (_local2.next == _arg1) {
                _local2.next = _arg1.next;
            }
            ;
            _local2 = _local2.next;
        }
        ;
    }


}
}//package _03o

