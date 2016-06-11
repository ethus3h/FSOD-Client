// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kt._VO

package _1kt {
import flash.display.DisplayObject;

public class _VO {

    public function _VO(_arg1:DisplayObject) {
        this.target = _arg1;
    }
    protected var onComplete:Function;
    protected var target:DisplayObject;

    public function start():void {
    }

    public function _0Fe(_arg1:Function):void {
        this.onComplete = _arg1;
    }


}
}//package _1kt

