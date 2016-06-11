// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_v9._qi

package _v9 {
import flash.display.Graphics;

public class _qi {


    public function _EN(_arg1:int, _arg2:int, _arg3:_108, _arg4:Graphics):void {
        var _local5:int = (_arg1 + _arg3.width);
        var _local6:int = (_arg2 + _arg3.height);
        var _local7:int = _arg3._Tb;
        if (_arg3._aT) {
            _arg4.moveTo(_arg1, (_arg2 + _local7));
            _arg4.lineTo((_arg1 + _local7), _arg2);
        } else {
            _arg4.moveTo(_arg1, _arg2);
        }
        ;
        if (_arg3._1HP) {
            _arg4.lineTo((_local5 - _local7), _arg2);
            _arg4.lineTo(_local5, (_arg2 + _local7));
        } else {
            _arg4.lineTo(_local5, _arg2);
        }
        ;
        if (_arg3._0jI) {
            _arg4.lineTo(_local5, (_local6 - _local7));
            _arg4.lineTo((_local5 - _local7), _local6);
        } else {
            _arg4.lineTo(_local5, _local6);
        }
        ;
        if (_arg3._HT) {
            _arg4.lineTo((_arg1 + _local7), _local6);
            _arg4.lineTo(_arg1, (_local6 - _local7));
        } else {
            _arg4.lineTo(_arg1, _local6);
        }
        ;
    }


}
}//package _v9

