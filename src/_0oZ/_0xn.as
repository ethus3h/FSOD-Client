// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0oZ._0xn

package _0oZ {
import _1Sm._sy;

final class _0xn {

    public function _0xn() {
        this._1Hn = {};
        this._0LN = {};
    }
    private var _1Hn:Object;
    private var _0LN:Object;

    public function register(_arg1:String, _arg2:String, _arg3:_sy):void {
        this._1Hn[_arg1] = _arg3;
        this._0LN[_arg1] = _arg2;
    }

    public function _NM():Vector.<String> {
        var _local2:String;
        var _local1:Vector.<String> = new <String>[];
        for (_local2 in this._1Hn) {
            _local1.push(((_local2 + " - ") + this._0LN[_local2]));
        }
        ;
        return (_local1);
    }

    public function execute(_arg1:String):void {
        var _local2:Array = _arg1.split(" ");
        if (_local2.length == 0) {
            return;
        }
        ;
        var _local3:String = _local2.shift();
        var _local4:_sy = this._1Hn[_local3];
        if (!_local4) {
            return;
        }
        ;
        if (_local2.length > 0) {
            _local4.dispatch.apply(this, _local2.join(" ").split(","));
        } else {
            _local4.dispatch.apply(this);
        }
        ;
    }

    public function _0Xs(_arg1:String):Boolean {
        var _local2:Array = _arg1.split(" ");
        return ((((_local2.length > 0)) && (!((this._1Hn[_local2[0]] == null)))));
    }


}
}//package _0oZ

