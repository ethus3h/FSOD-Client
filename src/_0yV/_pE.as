// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0yV._pE

package _0yV {
import com.company.assembleegameclient.appengine.SavedCharacter;

import flash.events.Event;

public class _pE extends Event {

    public static const DELETE_CHARACTER_EVENT:String = "DELETE_CHARACTER_EVENT";

    public function _pE(_arg1:SavedCharacter) {
        super(DELETE_CHARACTER_EVENT);
        this.savedChar_ = _arg1;
    }
    public var savedChar_:SavedCharacter;

}
}//package _0yV

