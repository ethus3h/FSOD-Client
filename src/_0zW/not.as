// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0zW.not

package _0zW {
import _1fY._1rS;

import _hk.equalTo;

public function not(_arg1:Object):_1rS {
    if ((_arg1 is _1rS)) {
        return (new _1tM((_arg1 as _1rS)));
    }
    ;
    return (not(equalTo(_arg1)));
}

}//package _0zW

