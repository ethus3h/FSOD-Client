// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Cn._0v1

package _1Cn {
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;

public class _0v1 {

    public function _0v1(_arg1:_LO) {
        var _local2:_5M;
        super();
        this._1fg = _arg1;
        this._1fg.addEventListener(_0NX._1Ko, this._yB);
        this._1fg.addEventListener(_0NX._yv, this._0dj);
        for each (_local2 in this._1fg._0L6) {
            this._1Py(_local2.container);
        }
        ;
    }
    private var _1fg:_LO;

    public function destroy():void {
        var _local1:_5M;
        this._1fg.removeEventListener(_0NX._1Ko, this._yB);
        this._1fg.removeEventListener(_0NX._yv, this._0dj);
        for each (_local1 in this._1fg._0L6) {
            this._0VX(_local1.container);
        }
        ;
    }

    private function _1Py(_arg1:DisplayObjectContainer):void {
        _arg1.addEventListener(_YA._ER, this._re);
    }

    private function _0VX(_arg1:DisplayObjectContainer):void {
        _arg1.removeEventListener(_YA._ER, this._re);
    }

    private function _yB(_arg1:_0NX):void {
        this._1Py(_arg1.container);
    }

    private function _0dj(_arg1:_0NX):void {
        this._0VX(_arg1.container);
    }

    private function _re(_arg1:_YA):void {
        var _local3:DisplayObject;
        _arg1.stopImmediatePropagation();
        var _local2:DisplayObjectContainer = (_arg1.currentTarget as DisplayObjectContainer);
        _local3 = (_arg1.target as DisplayObject);
        var _local4:Class = _local3["constructor"];
        this._1fg._0F9(_local2)._1ao(_local3, _local4);
    }


}
}//package _1Cn

