﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.google.analytics.core.ServerOperationMode

package com.google.analytics.core {
public class ServerOperationMode {

    public static const both:ServerOperationMode = new ServerOperationMode(2, "both");
    public static const remote:ServerOperationMode = new ServerOperationMode(1, "remote");
    public static const local:ServerOperationMode = new ServerOperationMode(0, "local");

    public function ServerOperationMode(_arg1:int = 0, _arg2:String = "") {
        _value = _arg1;
        _name = _arg2;
    }
    private var _value:int;
    private var _name:String;

    public function valueOf():int {
        return (_value);
    }

    public function toString():String {
        return (_name);
    }


}
}//package com.google.analytics.core

