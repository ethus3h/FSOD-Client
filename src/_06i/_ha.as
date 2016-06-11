// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_06i._ha

package _06i {
import _10a._FU;

import com.company.assembleegameclient.appengine.SavedCharacter;

public class _ha implements _1ww {

    [Inject]
    public var _1Zc:_FU;
    private var selected:SavedCharacter;


    public function _H0():int {
        return (this._1Zc._H0());
    }

    public function _1iw(_arg1:int):SavedCharacter {
        return (this._1Zc._0jG(_arg1));
    }

    public function deleteCharacter(_arg1:int):void {
        this._1Zc.deleteCharacter(_arg1);
        if (this.selected.charId() == _arg1) {
            this.selected = null;
        }
        ;
    }

    public function select(_arg1:SavedCharacter):void {
        this.selected = _arg1;
    }

    public function _0ZN():SavedCharacter {
        return (this.selected);
    }


}
}//package _06i

