// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._1jP

package com.company.assembleegameclient.ui {
import _0Mr._1M;
import _0Mr._5R;

import _1Sm._sy;

public class _1jP extends _mH {

    public const textChanged:_sy = new _sy();

    public function _1jP(_arg1:int, _arg2:String, _arg3:int = 0, _arg4:Boolean = false) {
        super(_arg3);
        _1pL(_arg1);
        if (_arg4) {
            text_.setStringBuilder(new _1M(_arg2));
        } else {
            text_.setStringBuilder(new _5R().setParams(_arg2));
        }
        ;
        text_.textChanged.addOnce(this.onTextChanged);
    }

    protected function onTextChanged():void {
        initText();
        this.textChanged.dispatch();
    }


}
}//package com.company.assembleegameclient.ui

