// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0gF._0ql

package _0gF {
import com.company.assembleegameclient.objects.Player;

import flash.display.BitmapData;
import flash.events.Event;

public class _0ql extends Event {

    public static const DEATH:String = "DEATH";

    public function _0ql(_arg1:BitmapData, _arg2:int, _arg3:int) {
        super(DEATH);
        this.background_ = _arg1;
        this.accountId_ = _arg2;
        this.charId_ = _arg3;
    }
    public var background_:BitmapData;
    public var player_:Player;
    public var accountId_:int;
    public var charId_:int;

}
}//package _0gF

