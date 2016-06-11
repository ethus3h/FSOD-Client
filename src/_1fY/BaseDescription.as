// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fY.BaseDescription

package _1fY {
import flash.errors.IllegalOperationError;

public class BaseDescription implements Description {

    private static const _1Ia:Object = {
        "\\": "\\n",
        "\\r": "\\t"
    };


    public function _vE(_arg1:_088):Description {
        _arg1.describeTo(this);
        return (this);
    }

    public function _Wx(_arg1:_1rS, _arg2):Description {
        _arg1.describeMismatch(_arg2, this);
        return (this);
    }

    public function appendText(_arg1:String):Description {
        append(_arg1);
        return (this);
    }

    public function _1r0(_arg1:String, _arg2:String, _arg3:String, _arg4:Array):Description {
        return (_1YC(_arg1, _arg2, _arg3, _arg4.map(_0Tg)));
    }

    public function _1H7(_arg1:Object):Description {
        if (_arg1 == null) {
            append("null");
        } else {
            if ((_arg1 is String)) {
                append('"');
                _1ZY(_arg1);
                append('"');
            } else {
                if ((_arg1 is Number)) {
                    append("<");
                    append(_arg1);
                    append(">");
                } else {
                    if ((_arg1 is int)) {
                        append("<");
                        append(_arg1);
                        append(">");
                    } else {
                        if ((_arg1 is uint)) {
                            append("<");
                            append(_arg1);
                            append(">");
                        } else {
                            if ((_arg1 is Array)) {
                                _1r0("[", ",", "]", (_arg1 as Array));
                            } else {
                                if ((_arg1 is XML)) {
                                    append(XML(_arg1).toXMLString());
                                } else {
                                    append("<");
                                    append(_arg1);
                                    append(">");
                                }
                                ;
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        return (this);
    }

    public function _1YC(_arg1:String, _arg2:String, _arg3:String, _arg4:Array):Description {
        var _local6:Object;
        var _local5:Boolean;
        append(_arg1);
        for each (_local6 in _arg4) {
            if (_local5) {
                append(_arg2);
            }
            ;
            if ((_local6 is _088)) {
                _vE((_local6 as _088));
            } else {
                _1H7(_local6);
            }
            ;
            _local5 = true;
        }
        ;
        append(_arg3);
        return (this);
    }

    public function toString():String {
        throw (new IllegalOperationError("BaseDescription#toString is abstract and must be overriden by a subclass"));
    }

    protected function append(_arg1:Object):void {
        throw (new IllegalOperationError("BaseDescription#append is abstract and must be overriden by a subclass"));
    }

    private function _1ZY(_arg1:Object):void {
        String(_arg1).split("").forEach(_fG);
    }

    private function _0Tg(_arg1:Object, _arg2:int = 0, _arg3:Array = null):SelfDescribingValue {
        return (new SelfDescribingValue(_arg1));
    }

    private function _fG(_arg1:String, _arg2:int = 0, _arg3:Array = null):void {
        append(((_1Ia[_arg1]) || (_arg1)));
    }


}
}//package _1fY

import _1fY.*;

class SelfDescribingValue implements _088 {

    private var _value:Object;

    public function SelfDescribingValue(_arg1:Object) {
        _value = _arg1;
    }

    public function describeTo(_arg1:Description):void {
        _arg1._1H7(_value);
    }


}

