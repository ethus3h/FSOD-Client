﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.hurlant.util.der.Integer

package com.hurlant.util.der {
import com.hurlant.math._1wH;

import flash.utils.ByteArray;

public class Integer extends _1wH implements IAsn1Type {

    public function Integer(_arg1:uint, _arg2:uint, _arg3:ByteArray) {
        this.type = _arg1;
        this.len = _arg2;
        super(_arg3);
    }
    private var type:uint;
    private var len:uint;

    override public function toString(_arg1:Number = 0):String {
        return ((((((((DER.indent + "Integer[") + this.type) + "][") + this.len) + "][") + super.toString(16)) + "]"));
    }

    public function getLength():uint {
        return (this.len);
    }

    public function getType():uint {
        return (this.type);
    }

    public function toDER():ByteArray {
        return (null);
    }


}
}//package com.hurlant.util.der

