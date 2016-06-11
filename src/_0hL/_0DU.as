// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._0DU

package _0hL {
import _1PM._041;
import _1PM._1YQ;

public class _0DU implements _041 {

    private const _1fL:Vector.<_041> = new Vector.<_041>();

    private var _1XX:uint = 16;


    public function get _OS():uint {
        return (this._1XX);
    }

    public function set _OS(_arg1:uint):void {
        this._1XX = _arg1;
    }

    public function _F4(_arg1:Object):_1YQ {
        return (new _Ig(_arg1, this));
    }

    public function _XV(_arg1:_041):void {
        this._1fL.push(_arg1);
    }

    public function log(_arg1:Object, _arg2:uint, _arg3:int, _arg4:String, _arg5:Array = null):void {
        var _local6:_041;
        if (_arg2 > this._1XX) {
            return;
        }
        ;
        for each (_local6 in this._1fL) {
            _local6.log(_arg1, _arg2, _arg3, _arg4, _arg5);
        }
        ;
    }


}
}//package _0hL

