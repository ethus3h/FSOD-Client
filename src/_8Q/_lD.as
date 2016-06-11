// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_8Q._lD

package _8Q {
import _1Sm._sy;

import flash.events.Event;
import flash.events.IEventDispatcher;
import flash.utils.Dictionary;

public class _lD extends _sy {

    public function _lD(_arg1:String, ..._args) {
        this._yn = _arg1;
        this._00S = new Dictionary(true);
        super(_args);
    }
    private var _yn:String;
    private var _00S:Dictionary;

    public function map(_arg1:IEventDispatcher, _arg2):void {
        this._00S[_arg1] = _arg2;
        _arg1.addEventListener(this._yn, this._1bA, false, 0, true);
    }

    private function _1bA(_arg1:Event):void {
        dispatch(this._00S[_arg1.target]);
    }


}
}//package _8Q

