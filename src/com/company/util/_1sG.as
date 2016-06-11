// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util._1sG

package com.company.util {
public class _1sG {

    private const _KY:Array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

    public var _o1:String;


    public function _1w(_arg1:Date):String {
        var _local2:String = this._o1;
        _local2 = _local2.replace("D", _arg1.date);
        _local2 = _local2.replace("YYYY", _arg1.fullYear);
        _local2 = _local2.replace("MMMM", this._KY[_arg1.month]);
        return (_local2);
    }


}
}//package com.company.util

