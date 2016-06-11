// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_q3._0Am

package _q3 {
import _1kt._VO;

import _DO.GTween;

import flash.display.DisplayObject;

public class _0Am extends _VO {

    public function _0Am(_arg1:DisplayObject) {
        super(_arg1);
    }

    override public function start():void {
        var _local1:GTween = new GTween(target, 1, {alpha: 0});
        _local1.onComplete = this._Mv;
    }

    private function _Mv(_arg1:GTween):void {
        var _local2:GTween = new GTween(target, (1.4 / 2), {alpha: 1});
        _local2.onComplete = this._1nZ;
    }

    private function _1nZ(_arg1:GTween):void {
        onComplete();
    }


}
}//package _q3

