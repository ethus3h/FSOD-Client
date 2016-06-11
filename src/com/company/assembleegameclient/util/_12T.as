// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._12T

package com.company.assembleegameclient.util {
import com.company.util._0q;

import flash.display.BitmapData;

public class _12T {

    public function _12T() {
        this._1XN = new Vector.<_0T2>();
        super();
    }
    public var _1XN:Vector.<_0T2>;

    public function addFromBitmapData(_arg1:BitmapData, _arg2:BitmapData, _arg3:int, _arg4:int):void {
        var _local5:_0q = new _0q();
        _local5.addFromBitmapData(_arg1, _arg3, _arg4);
        var _local6:_0q;
        if (_arg2 != null) {
            _local6 = new _0q();
            _local6.addFromBitmapData(_arg2, _arg3, _arg4);
        }
        ;
        var _local7:int;
        while (_local7 < _local5._1XN.length) {
            this._1XN.push(new _0T2(_local5._1XN[_local7], (((_local6 == null)) ? null : _local6._1XN[_local7])));
            _local7++;
        }
        ;
    }

    public function _1n(_arg1:_0T2, _arg2:int, _arg3:int):void {
        this.addFromBitmapData(_arg1.image_, _arg1.mask_, _arg2, _arg3);
    }


}
}//package com.company.assembleegameclient.util

