// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._7I

package _0t {
import com.company.util.IntPoint;

import flash.events.Event;

class _7I extends Event {

    public static const TILES_EVENT:String = "TILES_EVENT";

    public function _7I(_arg1:Vector.<IntPoint>) {
        super(TILES_EVENT);
        this.tiles_ = _arg1;
    }
    public var tiles_:Vector.<IntPoint>;

}
}//package _0t-

