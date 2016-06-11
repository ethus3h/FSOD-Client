// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_00U._13u

package __00U {
import _0cA._0bz;
import _0cA._0cp;

import _0uW._04V;
import _0uW._0gm;

import _0vT.SsInternal;

import flash.utils.Dictionary;
import flash.utils.getQualifiedClassName;

public class _13u implements _06U {

    public function _13u(_arg1:Class, _arg2:_0bz) {
        this._WH = _arg1;
        this._Og = _arg2;
    }
    private var _WH:Class;
    private var _Og:_0bz;
    private var _1NB:Object;
    private var _1fO:Boolean;

    public function apply(_arg1:Class, _arg2:_0bz, _arg3:Dictionary):Object {
        return ((this._1NB = ((this._1NB) || (this._1w8(this._Og)))));
    }

    public function destroy():void {
        this._1fO = true;
        if (!this._1NB) {
            return;
        }
        ;
        var _local1:_0gm = this._Og._1K2(this._WH);
        var _local2:_04V = _local1._0Y5;
        while (_local2) {
            _local2.applyInjection(this._1NB, this._WH, this._Og);
            _local2 = _04V(_local2.next);
        }
        ;
        this._1NB = null;
    }

    private function _1w8(_arg1:_0bz):Object {
        if (this._1fO) {
            throw (new _0cp(("Forbidden usage of unmapped singleton provider for type " + getQualifiedClassName(this._WH))));
        }
        ;
        return (_arg1.SsInternal::_04d(this._WH));
    }


}
}//package _00U

