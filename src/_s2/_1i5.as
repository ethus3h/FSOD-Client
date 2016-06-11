// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_s2._1i5

package _s2 {
import flash.utils.Proxy;
import flash.utils.flash_proxy;

public dynamic class _1i5 extends Proxy {

    public function _1i5() {
        this._wM = new Object();
    }
    private var _16q:Array;
    private var _wM:Object;

    override flash_proxy function getProperty(_arg1) {
        return (this.get(_arg1));
    }

    override flash_proxy function callProperty(_arg1, ..._args) {
        var _local3:Object = this.get(_arg1);
        return (_local3.apply(this, _args));
    }

    override flash_proxy function setProperty(_arg1, _arg2):void {
        this.set(_arg1, _arg2);
    }

    override flash_proxy function nextName(_arg1:int):String {
        return (this._16q[(_arg1 - 1)]);
    }

    override flash_proxy function nextValue(_arg1:int) {
        return (this[this.nextName(_arg1)]);
    }

    override flash_proxy function nextNameIndex(_arg1:int):int {
        var _local2:*;
        if (_arg1 == 0) {
            this._16q = new Array();
            for (_local2 in this._wM) {
                this._16q.push(_local2);
            }
            ;
        }
        ;
        if (_arg1 < this._16q.length) {
            return ((_arg1 + 1));
        }
        ;
        return (0);
    }

    override flash_proxy function deleteProperty(_arg1):Boolean {
        return (delete this._wM[_arg1]);
    }

    public function set(_arg1:String, _arg2:Object, _arg3:Boolean = false):void {
        if (_arg2 == null) {
            delete this._wM[_arg1];
        } else {
            this._wM[_arg1] = new _hU(_arg2, _arg3);
        }
        ;
    }

    public function get(_arg1:String) {
        var _local2:_hU = this._0tK(_arg1);
        return (((_local2) ? _local2._1hm : undefined));
    }

    public function _0tK(_arg1:String):_hU {
        return ((this._wM[_arg1] as _hU));
    }

    public function toString():String {
        return ("[WeakObject]");
    }


}
}//package _s2

