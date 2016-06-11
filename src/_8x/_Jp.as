// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_8x._Jp

package _8x {
import _0oZ.Console;

import _1RN._035;

import _r7._17v;

public final class _Jp extends _17v {

    private static const _1nf:String = '[0xFF3333:error - "${value}" not found]';
    private static const _bl:String = "[0xFFEE00:${value}]";

    [Inject]
    public var view:_1A;
    [Inject]
    public var console:Console;
    [Inject]
    public var log:_035;


    override public function initialize():void {
        _1p8(ConsoleEvent.INPUT, this._tJ, ConsoleEvent);
        _1p8(ConsoleEvent.GET_PREVIOUS, this._LU, ConsoleEvent);
        _1p8(ConsoleEvent.GET_NEXT, this._9E, ConsoleEvent);
    }

    override public function destroy():void {
        _5h(ConsoleEvent.INPUT, this._tJ, ConsoleEvent);
        _5h(ConsoleEvent.GET_PREVIOUS, this._LU, ConsoleEvent);
        _5h(ConsoleEvent.GET_NEXT, this._9E, ConsoleEvent);
    }

    private function _wI(_arg1:String):void {
        if (this.console._01L(_arg1)) {
            this._Y0(_arg1);
        } else {
            this._1lT(_arg1);
        }
        ;
    }

    private function _Y0(_arg1:String):void {
        var _local2:Array = _arg1.split(" ");
        _local2[0] = _bl.replace("${value}", _local2[0]);
        this.log.dispatch(_local2.join(" "));
    }

    private function _1lT(_arg1:String):void {
        var _local2:String = _1nf.replace("${value}", _arg1);
        this.log.dispatch(_local2);
    }

    private function _tJ(_arg1:ConsoleEvent):void {
        var _local2:String = _arg1.data;
        this._wI(_local2);
        this.console.execute(_local2);
    }

    private function _LU(_arg1:ConsoleEvent):void {
        this.view.text = this.console._EG();
    }

    private function _9E(_arg1:ConsoleEvent):void {
        this.view.text = this.console._0Zf();
    }


}
}//package _8x

