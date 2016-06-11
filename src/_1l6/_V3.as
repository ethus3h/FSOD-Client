// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1l6._V3

package _1l6 {
import _0tf.*;

import _1Sm._0N3;

import flash.events.EventDispatcher;
import flash.utils.getTimer;

public class _V3 extends EventDispatcher implements _0yo {

    [Inject]
    public var stats:AppEngineRequestStats;
    [Inject]
    public var _1Zc:_0Dr;
    private var _1jE:int;
    private var target:String;


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
        this._1jE = getTimer();
        this.target = _arg1;
        this._1Zc.complete.addOnce(this.onComplete);
        this._1Zc.sendRequest(_arg1, _arg2);
    }

    public function _7e():Boolean {
        return (false);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        this.stats._OQ(this.target, _arg1, (getTimer() - this._1jE));
    }


}
}//package _1l6

