// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1l6._0dk

package _1l6 {
import _0tf.*;

import _1Sm._0N3;

import _1i0._18D;

import __1Ye._0nK;

import flash.utils.getTimer;

public class _0dk implements _0yo {

    [Inject]
    public var _16k:_18D;
    [Inject]
    public var _1Zc:_0Dr;
    private var target:String;
    private var time:int;


    public function get complete():_0N3 {
        return (this._1Zc.complete);
    }

    public function _97(_arg1:String):void {
        this._1Zc._97(_arg1);
    }

    public function _160(_arg1:Boolean):void {
        this._1Zc._160(_arg1);
    }

    public function _1Vb(_arg1:int):void {
        this._1Zc._1Vb(_arg1);
    }

    public function sendRequest(_arg1:String, _arg2:Object):void {
        this.target = _arg1;
        this.time = getTimer();
        this._1Zc.complete.addOnce(this._0o4);
        this._1Zc.sendRequest(_arg1, _arg2);
    }

    public function _7e():Boolean {
        return (false);
    }

    private function _0o4(_arg1:Boolean, _arg2):void {
        var _local3:_0nK = new _0nK();
        _local3.category = "AppEngineResponseTime";
        _local3._0HR = this.target;
        _local3.value = (this.time - getTimer());
        this._16k.dispatch(_local3);
    }


}
}//package _1l6

