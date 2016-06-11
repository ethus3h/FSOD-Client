// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_nH._1IA

package _nH {
import flash.display.Sprite;
import flash.events.Event;

public class _1IA extends Sprite {

    public static var _so:Boolean = false;

    public function _1IA():void {
        _so = true;
        addEventListener(Event.REMOVED_FROM_STAGE, this._2F);
        super();
    }

    public function _2F(_arg1:Event):void {
        _so = false;
    }


}
}//package _nH

