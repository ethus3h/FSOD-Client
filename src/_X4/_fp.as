// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._fp

package _X4 {
import _0Mr.AppendingLineBuilder;

import _6u._TG;

import _Z0._ix;

public class _fp extends _0YI {

    private var _es:XML;
    private var _0pm:XML;
    private var _0qp:XML;
    private var _7D:XML;


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var tag:XML;
        var itemXML:XML = _arg1;
        var curItemXML:XML = _arg2;
        _0ak = new AppendingLineBuilder();
        this._es = this._TO(itemXML, "Healing");
        this._0pm = this._TO(itemXML, "Damaging");
        this._0qp = this._TO(curItemXML, "Healing");
        this._7D = this._TO(curItemXML, "Damaging");
        if (this._0MD()) {
            this._1Vm();
            this._0JE();
            if (itemXML.@id == "Seal of Blasphemous Prayer") {
                tag = itemXML.Activate.(text() == "ConditionEffectSelf")[0];
                _0ak.pushParams(_TG._1LN, {effect: ""});
                _0ak.pushParams(_TG._QZ, {
                    effect: _TG._1hr(_TG._qu),
                    duration: tag.@duration
                }, _ix._yk(_1D9), _ix._0yJ());
                _14[tag.toXMLString()] = true;
            }
            ;
        }
        ;
    }

    private function _0MD():Boolean {
        return (((((((!((this._es == null))) && (!((this._0pm == null))))) && (!((this._0qp == null))))) && (!((this._7D == null)))));
    }

    private function _TO(_arg1:XML, _arg2:String):XML {
        var matches:XMLList;
        var tag:XML;
        var xml:XML = _arg1;
        var effectName:String = _arg2;
        matches = xml.Activate.(text() == "ConditionEffectAura");
        for each (tag in matches) {
            if (tag.@effect == effectName) {
                return (tag);
            }
            ;
        }
        ;
        return (null);
    }

    private function _1Vm():void {
        var _local1:int = int(this._es.@duration);
        var _local2:int = int(this._0qp.@duration);
        var _local3:Number = Number(this._es.@range);
        var _local4:Number = Number(this._0qp.@range);
        var _local5:Number = (((0.5 * _local1) * 0.5) * _local3);
        var _local6:Number = (((0.5 * _local2) * 0.5) * _local4);
        var _local7:uint = _BZ((_local5 - _local6));
        var _local8:AppendingLineBuilder = new AppendingLineBuilder();
        _local8.pushParams(_TG._1iS, {range: this._es.@range}, _ix._yk(_local7), _ix._0yJ());
        _local8.pushParams(_TG._QZ, {
            effect: _TG._1hr(_TG._0DQ),
            duration: _local1.toString()
        }, _ix._yk(_local7), _ix._0yJ());
        _0ak.pushParams(_TG._1Rr, {effect: _local8});
        _14[this._es.toXMLString()] = true;
    }

    private function _0JE():void {
        var _local1:int = int(this._0pm.@duration);
        var _local2:int = int(this._7D.@duration);
        var _local3:Number = Number(this._0pm.@range);
        var _local4:Number = Number(this._7D.@range);
        var _local5:Number = (((0.5 * _local1) * 0.5) * _local3);
        var _local6:Number = (((0.5 * _local2) * 0.5) * _local4);
        var _local7:uint = _BZ((_local5 - _local6));
        var _local8:AppendingLineBuilder = new AppendingLineBuilder();
        _local8.pushParams(_TG._1iS, {range: this._0pm.@range}, _ix._yk(_local7), _ix._0yJ());
        _local8.pushParams(_TG._QZ, {
            effect: _TG._1hr(_TG._0fX),
            duration: _local1.toString()
        }, _ix._yk(_local7), _ix._0yJ());
        _0ak.pushParams(_TG._1Rr, {effect: _local8});
        _14[this._0pm.toXMLString()] = true;
    }


}
}//package _X4

