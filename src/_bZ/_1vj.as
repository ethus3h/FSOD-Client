// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bZ._1vj

package _bZ {
import _0fa._0wR;
import _0fa._o4;

import _1Vz._1jz;
import _1Vz._20z;

import _UB.*;

import _nj.*;

import flash.display.DisplayObject;
import flash.utils.Dictionary;

public class _1vj implements _210, _0XC {

    private const _0zH:Dictionary = new Dictionary();
    private const _0yT:_20z = new _PE();

    public function _1vj(_arg1:_0fY, _arg2:_1UH = null) {
        this._factory = _arg1;
        this._handler = ((_arg2) || (new _WL(this._factory)));
    }
    private var _handler:_1UH;
    private var _factory:_0fY;

    public function _0S(_arg1:_0wR):_1jz {
        return ((this._0zH[_arg1._1y4()._1Gf] = ((this._0zH[_arg1._1y4()._1Gf]) || (this._1eu(_arg1)))));
    }

    public function map(_arg1:Class):_1jz {
        var _local2:_0wR = new _o4().allOf(_arg1);
        return (this._0S(_local2));
    }

    public function _0DY(_arg1:_0wR):_20z {
        return (((this._0zH[_arg1._1y4()._1Gf]) || (this._0yT)));
    }

    public function _g(_arg1:Class):_20z {
        var _local2:_0wR = new _o4().allOf(_arg1);
        return (this._0DY(_local2));
    }

    public function _1ao(_arg1:DisplayObject, _arg2:Class):void {
        this._handler._1ao(_arg1, _arg2);
    }

    public function _13(_arg1:Object):void {
        var _local2:Class = (_arg1.constructor as Class);
        this._handler._px(_arg1, _local2);
    }

    public function _1al(_arg1:Object):void {
        this._factory._1B9(_arg1);
    }

    private function _1eu(_arg1:_0wR, _arg2:Class = null):_1jz {
        return (new _1S6(_arg1._1y4(), this._handler));
    }


}
}//package _bZ

