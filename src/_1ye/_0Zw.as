// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1ye._0Zw

package _1ye {
import flash.events.IEventDispatcher;

public class _0Zw {

    public function _0Zw(_arg1:IEventDispatcher, _arg2:String, _arg3:Function, _arg4:Class, _arg5:Function, _arg6:Boolean) {
        this._1p2 = _arg1;
        this._0uL = _arg2;
        this._0BB = _arg3;
        this._Rc = _arg4;
        this._callback = _arg5;
        this._1TY = _arg6;
    }
    private var _1p2:IEventDispatcher;
    private var _0uL:String;
    private var _0BB:Function;
    private var _Rc:Class;
    private var _1TY:Boolean;

    private var _callback:Function;

    public function get callback():Function {
        return (this._callback);
    }

    public function get dispatcher():IEventDispatcher {
        return (this._1p2);
    }

    public function get eventString():String {
        return (this._0uL);
    }

    public function get listener():Function {
        return (this._0BB);
    }

    public function get eventClass():Class {
        return (this._Rc);
    }

    public function get useCapture():Boolean {
        return (this._1TY);
    }


}
}//package _1ye

