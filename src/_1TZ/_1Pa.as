// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TZ._1Pa

package _1TZ {
import _03u._0MI;
import _03u._2w;
import _03u._BW;
import _03u._wP;

import _Ny.*;

public class _1Pa extends _0MI implements _1nF {

    [Inject]
    public var _17y:_0Bl;
    [Inject]
    public var _1iT:_WS;
    [Inject]
    public var _1ZX:_BW;


    override protected function startTask():void {
        var _local1:_2w = new _2w();
        _local1.add(this._17y);
        _local1.add(this._1iT);
        _local1.lastly.add(this._0iZ);
        this._1ZX.add(_local1);
        _local1.start();
    }

    private function _0iZ(_arg1:_wP, _arg2:Boolean, _arg3:String):void {
        _Ug(true);
    }


}
}//package _1TZ

