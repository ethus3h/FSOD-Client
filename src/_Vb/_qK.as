// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Vb._qK

package _Vb {
import _1Sm._sy;

import flash.events.Event;

public class _qK {

    private const _vl:_sy = new _sy();

    public function _qK() {
        this._0sw = new Vector.<String>();
        super();
    }
    private var _16Y:_1gk;
    private var _0sw:Vector.<String>;

    public function add(_arg1:_1gk, _arg2:String):void {
        this._16Y = _arg1;
        this._0sw.push(_arg2);
        _arg1.addEventListener(_arg2, this._02d);
    }

    public function _zK():_sy {
        return (this._vl);
    }

    private function _02d(_arg1:Event):void {
        var _local2:String;
        for each (_local2 in this._0sw) {
            this._16Y.removeEventListener(_local2, this._02d);
        }
        ;
        this._16Y._zK().dispatch();
    }


}
}//package _Vb

