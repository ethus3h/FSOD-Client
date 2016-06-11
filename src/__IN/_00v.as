// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_IN._00v

package __IN {
import _1RN._BC;

import _pz._1Oo;

public class _00v {

    [Inject]
    public var _1C1:_BC;
    [Inject]
    public var _0U8:_0VQ;


    public function execute():void {
        var _local1:_1Oo;
        _local1 = new _1Oo();
        _local1.name = "setlang";
        _local1.description = "Sets the locale language (defaults to en-US)";
        this._1C1.dispatch(_local1, this._0U8);
    }


}
}//package _IN

