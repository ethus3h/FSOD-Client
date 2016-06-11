// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._Tl

package com.company.assembleegameclient.ui {
import _0Mr._1M;

import _1Sm._sy;

public class _Tl extends _mH {

    public const textChanged:_sy = new _sy();

    public function _Tl(_arg1:int, _arg2:String, _arg3:int = 0) {
        super(_arg3);
        _1pL(_arg1);
        text_.setStringBuilder(new _1M(_arg2));
        text_.textChanged.addOnce(this.onTextChanged);
    }

    protected function onTextChanged():void {
        initText();
        this.textChanged.dispatch();
    }


}
}//package com.company.assembleegameclient.ui

