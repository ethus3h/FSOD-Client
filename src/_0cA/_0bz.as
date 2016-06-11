// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cA._0bz

package _0cA {
import _0uW._04V;
import _0uW._0gm;
import _0uW._13U;
import _0uW._kL;

import _0vT.SsInternal;
import _0vT._0AT;

import _1HX._0o6;
import _1HX._Oa;
import _1HX._Xs;

import _1Qp._Q0;
import _1Qp._at;

import _4N._0MX;
import _4N._dJ;

import __00U._06U;
import __00U._0Or;
import __00U._0Sd;
import __00U._1hl;

import avmplus.DescribeTypeJSON;

import flash.events.EventDispatcher;
import flash.system.ApplicationDomain;
import flash.utils.Dictionary;
import flash.utils.getDefinitionByName;
import flash.utils.getQualifiedClassName;

use namespace SsInternal;

public class _0bz extends EventDispatcher {

    SsInternal const _c2:Dictionary = new Dictionary();
    private static var _0dA:Dictionary = new Dictionary(true);

    public function _0bz() {
        super();
        this._1Yr = new Dictionary();
        this._qT = new Dictionary();
        this._0o7 = new Dictionary();
        this._Bj = new Dictionary();
        try {
            this._0A0 = ((DescribeTypeJSON.available) ? new _Oa() : new _Xs());
        } catch (e:Error) {
            _0A0 = new _Xs();
        }
        ;
        this._1u6 = new _0AT(this._0A0, _0dA);
        this._0wO = ApplicationDomain.currentDomain;
    }
    private var _0KN:_0bz;
    private var _0wO:ApplicationDomain;
    private var _1u6:_0AT;
    private var _1Yr:Dictionary;
    private var _qT:Dictionary;
    private var _0o7:Dictionary;
    private var _Bj:Dictionary;
    private var _0A0:_0o6;

    public function get _ff():_0bz {
        return (this._0KN);
    }

    public function set _ff(_arg1:_0bz):void {
        this._0KN = _arg1;
    }

    public function get _0uU():ApplicationDomain {
        return (this._0wO);
    }

    public function set _0uU(_arg1:ApplicationDomain):void {
        this._0wO = ((_arg1) || (ApplicationDomain.currentDomain));
    }

    public function map(_arg1:Class, _arg2:String = ""):_at {
        var _local3:String = ((getQualifiedClassName(_arg1) + "|") + _arg2);
        return (((this._1Yr[_local3]) || (this._T(_arg1, _arg2, _local3))));
    }

    public function _g(_arg1:Class, _arg2:String = ""):void {
        var _local3:String = ((getQualifiedClassName(_arg1) + "|") + _arg2);
        var _local4:_at = this._1Yr[_local3];
        if (((_local4) && (_local4._07u))) {
            throw (new _0cp("Can't unmap a sealed mapping"));
        }
        ;
        if (!_local4) {
            throw (new _0cp((("Error while removing an injector mapping: " + "No mapping defined for dependency ") + _local3)));
        }
        ;
        _local4._1BQ().destroy();
        delete this._1Yr[_local3];
        delete this._c2[_local3];
        ((hasEventListener(_Q0._02a)) && (dispatchEvent(new _Q0(_Q0._02a, _arg1, _arg2, null))));
    }

    public function _0Yb(_arg1:Class, _arg2:String = ""):Boolean {
        return (!((this._1BQ(((getQualifiedClassName(_arg1) + "|") + _arg2)) == null)));
    }

    public function _R(_arg1:Class, _arg2:String = ""):Boolean {
        return (!((this._c2[((getQualifiedClassName(_arg1) + "|") + _arg2)] == null)));
    }

    public function _QB(_arg1:Class, _arg2:String = ""):_at {
        var _local3:String = ((getQualifiedClassName(_arg1) + "|") + _arg2);
        var _local4:_at = this._1Yr[_local3];
        if (!_local4) {
            throw (new _0MX((("Error while retrieving an injector mapping: " + "No mapping defined for dependency ") + _local3)));
        }
        ;
        return (_local4);
    }

    public function _aU(_arg1:Object):void {
        var _local2:Class = this._0A0._0KT(_arg1);
        this._1J(_arg1, _local2, this._1u6._1SJ(_local2));
    }

    public function getInstance(_arg1:Class, _arg2:String = "", _arg3:Class = null) {
        var _local4:String;
        var _local6:_13U;
        _local4 = ((getQualifiedClassName(_arg1) + "|") + _arg2);
        var _local5:_06U = this._1BQ(_local4, false);
        if (_local5) {
            _local6 = this._1u6._1SJ(_arg1).ctor;
            return (_local5.apply(_arg3, this, ((_local6) ? _local6.injectParameters : null)));
        }
        ;
        if (_arg2) {
            throw (new _0MX((("No mapping found for request " + _local4) + ". getInstance only creates an unmapped instance if no name is given.")));
        }
        ;
        return (this._04d(_arg1));
    }

    public function _0My(_arg1:Object):void {
        var _local2:Class;
        if (!_arg1) {
            return;
        }
        ;
        _local2 = this._0A0._0KT(_arg1);
        var _local3:_0gm = this._1K2(_local2);
        var _local4:_04V = _local3._0Y5;
        while (_local4) {
            _local4.applyInjection(_arg1, _local2, this);
            _local4 = _04V(_local4.next);
        }
        ;
    }

    public function _1lJ():void {
        var _local1:_at;
        var _local2:Object;
        for each (_local1 in this._1Yr) {
            _local1._1BQ().destroy();
        }
        ;
        for each (_local2 in this._Bj) {
            this._0My(_local2);
        }
        ;
        this._1Yr = new Dictionary();
        this._qT = new Dictionary();
        this._0o7 = new Dictionary();
        this._Bj = new Dictionary();
    }

    public function _1L(_arg1:ApplicationDomain = null):_0bz {
        var _local2:_0bz = new _0bz();
        _local2._0uU = ((_arg1) || (this._0uU));
        _local2._ff = this;
        return (_local2);
    }

    public function _1aQ(_arg1:Class, _arg2:_0gm):void {
        this._1u6._0mo(_arg1, _arg2);
    }

    public function _1K2(_arg1:Class):_0gm {
        return (this._0A0._0Kg(_arg1));
    }

    private function _T(_arg1:Class, _arg2:String, _arg3:String):_at {
        var _local4:_at;
        if (this._qT[_arg3]) {
            throw (new _0cp("Can't change a mapping from inside a listener to it's creation event"));
        }
        ;
        this._qT[_arg3] = true;
        ((hasEventListener(_Q0._183)) && (dispatchEvent(new _Q0(_Q0._183, _arg1, _arg2, null))));
        _local4 = new _at(this, _arg1, _arg2, _arg3);
        this._1Yr[_arg3] = _local4;
        var _local5:Object = _local4._8C();
        ((hasEventListener(_Q0._st)) && (dispatchEvent(new _Q0(_Q0._st, _arg1, _arg2, _local4))));
        delete this._qT[_arg3];
        _local4._tr(_local5);
        return (_local4);
    }

    private function _1J(_arg1:Object, _arg2:Class, _arg3:_0gm):void {
        var _local4:_kL = _arg3.injectionPoints;
        ((hasEventListener(_028._0qi)) && (dispatchEvent(new _028(_028._0qi, _arg1, _arg2))));
        while (_local4) {
            _local4.applyInjection(_arg1, _arg2, this);
            _local4 = _local4.next;
        }
        ;
        if (_arg3._0Y5) {
            this._Bj[_arg1] = _arg1;
        }
        ;
        ((hasEventListener(_028._1nl)) && (dispatchEvent(new _028(_028._1nl, _arg1, _arg2))));
    }

    SsInternal static function _Xc():void {
        _0dA = new Dictionary(true);
    }

    SsInternal function _04d(_arg1:Class):Object {
        var _local2:_0gm = this._1u6._1SJ(_arg1);
        if (!_local2.ctor) {
            throw (new _dJ(("Can't instantiate interface " + getQualifiedClassName(_arg1))));
        }
        ;
        var _local3:* = _local2.ctor.createInstance(_arg1, this);
        ((hasEventListener(_028._1X8)) && (dispatchEvent(new _028(_028._1X8, _local3, _arg1))));
        this._1J(_local3, _arg1, _local2);
        return (_local3);
    }

    SsInternal function _1BQ(_arg1:String, _arg2:Boolean = true):_06U {
        var _local3:_06U;
        var _local5:_06U;
        var _local4:_0bz = this;
        while (_local4) {
            _local5 = _local4._c2[_arg1];
            if (_local5) {
                if ((_local5 is _0Or)) {
                    _local3 = _local5;
                    _local4 = _local4._ff;
                    continue;
                }
                ;
                if ((((_local5 is _1hl)) && (!((_local4 === this))))) {
                    _local4 = _local4._ff;
                    continue;
                }
                ;
                return (_local5);
            }
            ;
            _local4 = _local4._ff;
        }
        ;
        if (_local3) {
            return (_local3);
        }
        ;
        return (((_arg2) ? this._1S(_arg1) : null));
    }

    SsInternal function _1S(_arg1:String):_06U {
        var parts:Array;
        var definition:Object;
        var mappingId:String = _arg1;
        if (mappingId === "String|") {
            return (null);
        }
        ;
        parts = mappingId.split("|");
        var name:String = parts.pop();
        if (name.length !== 0) {
            return (null);
        }
        ;
        var typeName:String = parts.pop();
        try {
            definition = ((this._0wO.hasDefinition(typeName)) ? this._0wO.getDefinition(typeName) : getDefinitionByName(typeName));
        } catch (e:Error) {
            return (null);
        }
        ;
        if (((!(definition)) || (!((definition is Class))))) {
            return (null);
        }
        ;
        var type:Class = Class(definition);
        var description:_0gm = this._1u6._1SJ(type);
        if (!description.ctor) {
            return (null);
        }
        ;
        return ((this._0o7[type] = ((this._0o7[type]) || (new _0Sd(type)))));
    }


}
}//package _0cA

