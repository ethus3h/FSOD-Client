// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL.ObjectProcessor

package _0hL {
import _1fY._1rS;

public class ObjectProcessor {

    private const _handlers:Array = [];


    public function _Wn(_arg1:_1rS, _arg2:Function):void {
        this._handlers.push(new ObjectHandler(_arg1, _arg2));
    }

    public function _0ie(_arg1:Object):void {
        var _local2:ObjectHandler;
        for each (_local2 in this._handlers) {
            _local2.handle(_arg1);
        }
        ;
    }


}
}//package _0hL

import _1fY._1rS;

class ObjectHandler {

    private var _matcher:_1rS;
    private var _handler:Function;

    public function ObjectHandler(_arg1:_1rS, _arg2:Function) {
        this._matcher = _arg1;
        this._handler = _arg2;
    }

    public function handle(_arg1:Object):void {
        ((this._matcher.matches(_arg1)) && (this._handler(_arg1)));
    }


}

