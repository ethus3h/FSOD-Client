// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0fO._1J-

package _0fO {
import _pm._vP;

import _r7._17v;

import flash.display.DisplayObject;
import flash.display.Stage;
import flash.geom.Rectangle;

public class _1J extends _17v {

    [Inject]
    public var view:_oh;
    [Inject]
    public var resize:_vP;


    override public function initialize():void {
        var _local1:Stage = (this.view as DisplayObject).stage;
        var _local2:Rectangle = new Rectangle(0, 0, _local1.stageWidth, _local1.stageHeight);
        this.resize.add(this.onResize);
        this.view.resize(_local2);
    }

    override public function destroy():void {
        this.resize.remove(this.onResize);
    }

    private function onResize(_arg1:Rectangle):void {
        this.view.resize(_arg1);
    }


}
}//package _0fO

