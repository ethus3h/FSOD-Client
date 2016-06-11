// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects._0Px

package com.company.assembleegameclient.objects {
import _0Mr._0w3;
import _0Mr._1vN;

public class _0Px {

    public static const _Pj:RegExp = /(.+)\s\((.+)\)/;


    public function parse(_arg1:String):String {
        var _local2:Array = _arg1.match(_Pj);
        if (_local2 == null) {
            return (this._0Xo(_arg1));
        }
        ;
        return (this._09a(_local2));
    }

    public function makeBuilder(_arg1:String):_1vN {
        return (new _0w3().setPattern(this.parse(_arg1)));
    }

    private function _0Xo(_arg1:String):String {
        if ((((_arg1.charAt(0) == "{")) && ((_arg1.charAt((_arg1.length - 1)) == "}")))) {
            return (_arg1);
        }
        ;
        return ((("{" + _arg1) + "}"));
    }

    private function _09a(_arg1:Array):String {
        var _local2 = (("{" + _arg1[1]) + "}");
        if (_arg1.length > 1) {
            _local2 = (_local2 + ((" (" + _arg1[2]) + ")"));
        }
        ;
        return (_local2);
    }


}
}//package com.company.assembleegameclient.objects

