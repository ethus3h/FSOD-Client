// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._2v

package _07g {
import _19L._g3;

import _1Sm._sy;

import flash.utils.Dictionary;

public class _2v {

    public function _2v() {
        this.complete = new _sy();
        this._rZ = new Dictionary();
        super();
    }
    public var complete:_sy;
    private var _rZ:Dictionary;

    public function push(_arg1:_sy):_2v {
        this._rZ[_arg1] = true;
        this._1hP(_arg1);
        return (this);
    }

    public function pushArgs(..._args):_2v {
        var _local2:_sy;
        for each (_local2 in _args) {
            this.push(_local2);
        }
        ;
        return (this);
    }

    public function isEmpty():Boolean {
        return ((_g3._jp(this._rZ).length == 0));
    }

    private function _1hP(_arg1:_sy):void {
        var onTextChanged:Function;
        var value:_sy = _arg1;
        onTextChanged = function ():void {
            delete _rZ[value];
            _1Q6();
        };
        value.addOnce(onTextChanged);
    }

    private function _1Q6():void {
        if (this.isEmpty()) {
            this.complete.dispatch();
        }
        ;
    }


}
}//package _07g

