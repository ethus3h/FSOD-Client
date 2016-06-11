// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_q3._1EU

package _q3 {
import _1kt._VO;

import _DO.GTween;

import flash.display.DisplayObject;

public class _1EU extends _VO {

    public function _1EU(_arg1:DisplayObject) {
        super(_arg1);
    }

    override public function start():void {
        var _local1:GTween = new GTween(target, 1, {alpha: 1});
        _local1.onComplete = this._Mv;
    }

    private function _Mv(_arg1:GTween):void {
        new GTween(target, 1, {alpha: 0});
    }


}
}//package _q3

