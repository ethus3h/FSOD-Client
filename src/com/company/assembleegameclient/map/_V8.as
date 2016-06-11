// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._V8

package com.company.assembleegameclient.map {
import _0Mr._5R;

import _1CB._mz;

import _r7._17v;

public class _V8 extends _17v {

    [Inject]
    public var view:Map;
    [Inject]
    public var _p5:_0H0;


    override public function initialize():void {
        this._p5.add(this._0Km);
    }

    override public function destroy():void {
        this._p5.remove(this._0Km);
    }

    private function _0Km(_arg1:String, _arg2:uint):void {
        ((this.view.player_) && (this._1f2(_arg1, _arg2)));
    }

    private function _1f2(_arg1:String, _arg2:uint):void {
        var _local3:_mz = new _mz(this.view.player_, new _5R().setParams(_arg1), _arg2, 2000, 0);
        this.view.mapOverlay_.addQueuedText(_local3);
    }


}
}//package com.company.assembleegameclient.map

