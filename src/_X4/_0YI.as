// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._0YI

package _X4 {
import _0Mr.AppendingLineBuilder;

import flash.utils.Dictionary;

public class _0YI {

    static const _17Q:uint = 0xFF00;
    static const _dh:uint = 0xFF0000;
    static const _05D:uint = 16777103;
    static const _1Ni:uint = 0xB3B3B3;
    static const _1D9:uint = 9055202;

    public var _14:Dictionary;
    public var _1Rg:AppendingLineBuilder;
    public var _0ak:AppendingLineBuilder;


    public function _VG(_arg1:XML, _arg2:XML):void {
        this._1aV();
        this.compareSlots(_arg1, _arg2);
    }

    protected function compareSlots(_arg1:XML, _arg2:XML):void {
    }

    protected function _BZ(_arg1:Number):uint {
        if (_arg1 < 0) {
            return (_dh);
        }
        ;
        if (_arg1 > 0) {
            return (_17Q);
        }
        ;
        return (_05D);
    }

    protected function _sO(_arg1:String, _arg2:uint = 16777103):String {
        return ((((('<font color="#' + _arg2.toString(16)) + '">') + _arg1) + "</font>"));
    }

    protected function _1aO(_arg1:String):String {
        return (((this._sO("MP Cost: ", _1Ni) + this._sO(_arg1, _05D)) + "\n"));
    }

    private function _1aV():void {
        this._14 = new Dictionary();
        this._1Rg = new AppendingLineBuilder();
    }


}
}//package _X4

