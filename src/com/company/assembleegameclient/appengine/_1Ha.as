// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine._1Ha

package com.company.assembleegameclient.appengine {
import com.company.assembleegameclient.util._0ZU;

public class _1Ha {

    public function _1Ha(_arg1:XML) {
        this._P4 = _arg1;
    }
    public var _P4:XML;

    public function bestLevel():int {
        return (this._P4.BestLevel);
    }

    public function _04z():int {
        return (this._P4.BestFame);
    }

    public function numStars():int {
        return (_0ZU.numStars(int(this._P4.BestFame)));
    }


}
}//package com.company.assembleegameclient.appengine

