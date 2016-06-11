// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._1xc

package _X4 {
import _0Mr.AppendingLineBuilder;

import _6u._TG;

import _Z0._ix;

import _gl.*;

public class _1xc extends _0YI {

    private var _18L:XML;
    private var speedy:XML;
    private var _UP:XML;
    private var _09u:XML;
    private var _V7:XML;
    private var _TF:XML;


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        this._1WC(_arg1, _arg2);
        _0ak = new AppendingLineBuilder();
        this._60();
        this._0Qg();
        this._0d2();
    }

    private function _1WC(_arg1:XML, _arg2:XML):void {
        this._18L = this._1rO(_arg1, "Berserk");
        this.speedy = this._Ew(_arg1, "Speedy");
        this._V7 = this._Ew(_arg1, "Armored");
        this._UP = this._1rO(_arg2, "Berserk");
        this._09u = this._Ew(_arg2, "Speedy");
        this._TF = this._Ew(_arg2, "Armored");
    }

    private function _1rO(_arg1:XML, _arg2:String):XML {
        var matches:XMLList;
        var tag:XML;
        var xml:XML = _arg1;
        var typeName:String = _arg2;
        matches = xml.Activate.(text() == _1X._Bw);
        for each (tag in matches) {
            if (tag.@effect == typeName) {
                return (tag);
            }
            ;
        }
        ;
        return (null);
    }

    private function _Ew(_arg1:XML, _arg2:String):XML {
        var matches:XMLList;
        var tag:XML;
        var xml:XML = _arg1;
        var typeName:String = _arg2;
        matches = xml.Activate.(text() == _1X._ps);
        for each (tag in matches) {
            if (tag.@effect == typeName) {
                return (tag);
            }
            ;
        }
        ;
        return (null);
    }

    private function _60():void {
        if ((((this._18L == null)) || ((this._UP == null)))) {
            return;
        }
        ;
        var _local1:Number = Number(this._18L.@range);
        var _local2:Number = Number(this._UP.@range);
        var _local3:Number = Number(this._18L.@duration);
        var _local4:Number = Number(this._UP.@duration);
        var _local5:Number = ((0.5 * _local1) + (0.5 * _local3));
        var _local6:Number = ((0.5 * _local2) + (0.5 * _local4));
        var _local7:uint = _BZ((_local5 - _local6));
        var _local8:AppendingLineBuilder = new AppendingLineBuilder();
        _local8.pushParams(_TG._1iS, {range: _local1.toString()}, _ix._yk(_local7), _ix._0yJ());
        _local8.pushParams(_TG._QZ, {
            effect: _TG._1hr(_TG._Au),
            duration: _local3.toString()
        }, _ix._yk(_local7), _ix._0yJ());
        _0ak.pushParams(_TG._1Rr, {effect: _local8});
        _14[this._18L.toXMLString()] = true;
    }

    private function _0Qg():void {
        var _local1:Number;
        var _local2:Number;
        if (((!((this.speedy == null))) && (!((this._09u == null))))) {
            _local1 = Number(this.speedy.@duration);
            _local2 = Number(this._09u.@duration);
            _0ak.pushParams(_TG._1LN, {effect: ""});
            _0ak.pushParams(_TG._QZ, {
                effect: _TG._1hr(_TG._jt),
                duration: _local1.toString()
            }, _ix._yk(_BZ((_local1 - _local2))), _ix._0yJ());
            _14[this.speedy.toXMLString()] = true;
        } else {
            if (((!((this.speedy == null))) && ((this._09u == null)))) {
                _0ak.pushParams(_TG._1LN, {effect: ""});
                _0ak.pushParams(_TG._QZ, {
                    effect: _TG._1hr(_TG._jt),
                    duration: this.speedy.@duration
                }, _ix._yk(_17Q), _ix._0yJ());
                _14[this.speedy.toXMLString()] = true;
            }
            ;
        }
        ;
    }

    private function _0d2():void {
        if (this._V7 != null) {
            _0ak.pushParams(_TG._1LN, {effect: ""});
            _0ak.pushParams(_TG._QZ, {
                effect: _TG._1hr(_TG._1pe),
                duration: this._V7.@duration
            }, _ix._yk(_1D9), _ix._0yJ());
            _14[this._V7.toXMLString()] = true;
        }
        ;
    }


}
}//package _X4

