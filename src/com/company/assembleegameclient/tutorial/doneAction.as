// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.tutorial.doneAction

package com.company.assembleegameclient.tutorial {
import com.company.assembleegameclient.game._0p2;

public function doneAction(_arg1:_0p2, _arg2:String):void {
    if (_arg1.tutorial_ == null) {
        return;
    }
    ;
    _arg1.tutorial_.doneAction(_arg2);
}

}//package com.company.assembleegameclient.tutorial

