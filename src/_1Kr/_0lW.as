// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Kr._0lW

package _1Kr {
import _0MO._07F;

import _0yE._J6;

import _1E._0rN;
import _1E._1ne;

import _1Fr._1vE;
import _1Fr._qf;

import _1L3._0xm;

import _1TC._08E;

import _1d9._HW;

import _MU._0t5;

import _gl._0An;

import _r7._17v;

import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util._bp;

import flash.display.DisplayObject;

public class _0lW extends _17v {

    [Inject]
    public var view:_0MU;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _1VF:_07F;
    [Inject]
    public var _0eE:_1ne;
    [Inject]
    public var _au:_HW;
    [Inject]
    public var _Iv:_0xm;
    private var _aE:Boolean = false;


    override public function initialize():void {
        this._1VF.addOnce(this._O);
        this.view._04H.add(this._1DK);
        this.view._0g3.add(this._lS);
        this._1VF.add(this.update);
    }

    override public function destroy():void {
        this.view._04H.remove(this._1DK);
        this.view._0g3.remove(this._lS);
        this._1VF.remove(this.update);
    }

    private function _O(_arg1:Player):void {
        var _local2:_1vE = this._0eE._1YP[this.view.position];
        var _local3:int = _arg1.getPotionCount(_local2.objectId);
        this.view._f(_local3, _local2._1nt(_local3), _local2.available, _local2.objectId);
    }

    private function update(_arg1:Player):void {
        var _local2:_1vE;
        var _local3:int;
        if ((((((this.view.objectType == _1ne._0ip)) || ((this.view.objectType == _1ne._0Kh)))) && (!(this._aE)))) {
            _local2 = this._0eE._9s(this.view.objectType);
            _local3 = _arg1.getPotionCount(_local2.objectId);
            this.view._f(_local3, _local2._1nt(_local3), _local2.available);
        }
        ;
    }

    private function _1DK(_arg1:DisplayObject):void {
        var _local4:_J6;
        var _local2:Player = this._1b._1P.map.player_;
        var _local3:* = _bp._0Wy(_arg1, _J6, Map, _0t5);
        if ((((_local3 is Map)) || (((Parameters._0g5()) && ((_local3 == null)))))) {
            _08E._a9.invDrop(_local2, _1ne._1Kn(this.view.objectType), this.view.objectType);
        } else {
            if ((_local3 is _J6)) {
                _local4 = (_local3 as _J6);
                if ((((_local4._mJ() == _0An._5v)) && (!((_local4._1A8.owner == _local2))))) {
                    _08E._a9.invSwapPotion(_local2, _local2, _1ne._1Kn(this.view.objectType), this.view.objectType, _local4._1A8.owner, _local4._1lz, _0An._5v);
                }
                ;
            }
            ;
        }
        ;
    }

    private function _lS():void {
        var _local2:_0rN;
        var _local1:_1vE = this._0eE._1YP[this.view.position];
        if (_local1.available) {
            _local2 = new _0rN(_local1.objectId, _0rN._0K6);
            this._au.dispatch(_local2);
        }
        ;
    }


}
}//package _1Kr

