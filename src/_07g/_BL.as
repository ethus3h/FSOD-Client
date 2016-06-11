// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._BL

package _07g {
import _0MO._0WQ;
import _0MO._218;

import _0jj._10z;
import _0jj._CH;
import _0jj._mX;

import _10a._FU;

import _1E._m;

import _1Yg._1Fn;

import _1d9._Mm;

import _1i0._0Ie;
import _1i0._18D;
import _1i0._Q;

import _20I._1Z;
import _20I._E0;

import _U1.CharacterSelectionAndNewsScreen;
import _U1._1sS;

import __1Ye._0nK;

import _r7._17v;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.util._FF;

public class _BL extends _17v {

    [Inject]
    public var view:CharacterSelectionAndNewsScreen;
    [Inject]
    public var _qP:_FU;
    [Inject]
    public var _PI:_1Z;
    [Inject]
    public var _16k:_18D;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var _04M:_Mm;
    [Inject]
    public var chooseName:_218;
    [Inject]
    public var _LY:_0WQ;
    [Inject]
    public var _FC:_0Ie;
    [Inject]
    public var _0Ws:_CH;
    [Inject]
    public var _1Gr:_mX;
    [Inject]
    public var _0ZK:_10z;
    [Inject]
    public var _0aX:_1Fn;


    override public function initialize():void {
        this._0s8();
        this.view.initialize(this._qP);
        this.view.close.add(this._0mM);
        this.view.newCharacter.add(this._sV);
        this.view._1wf.add(this._sV);
        this.view.chooseName.add(this._1aM);
        this.view._04M.add(this._0QE);
        this._FC.dispatch("/currentCharScreen");
        this._LY.add(this._19j);
        this._1Gr.add(this._1Ms);
        this._0ZK.add(this._11J);
        this._0Ws.dispatch();
    }

    override public function destroy():void {
        this._LY.remove(this._19j);
        this._1Gr.remove(this._1Ms);
        this.view.close.remove(this._0mM);
        this.view.newCharacter.remove(this._sV);
        this.view.chooseName.remove(this._1aM);
        this.view._1wf.remove(this._sV);
        this.view._04M.remove(this._0QE);
    }

    private function _11J():void {
        this.view._hb();
    }

    private function _1Ms():void {
        this.view._0vb();
    }

    private function _19j(_arg1:String):void {
        this.view.setName(_arg1);
    }

    private function _0s8():void {
        var _local2:_0nK;
        var _local1:String = _FF._2();
        if (Parameters.data_.lastDailyAnalytics != _local1) {
            _local2 = new _0nK();
            _local2.category = "joinDate";
            _local2._0HR = Parameters.data_.joinDate;
            this._16k.dispatch(_local2);
            Parameters.data_.lastDailyAnalytics = _local1;
            Parameters.save();
        }
        ;
    }

    private function _sV():void {
        this._p2.dispatch(new _1sS());
    }

    private function _0mM():void {
        this._p2.dispatch(new TitleView());
    }

    private function _1aM():void {
        this.chooseName.dispatch();
    }

    private function _0QE():void {
        var _local1:SavedCharacter = this._qP._15Z(0);
        this._qP._Oc = _local1.charId();
        var _local2:_E0 = this._PI._Sb(_local1.objectType());
        _local2._1dU(true);
        _local2._0fJ._1PW(_local1.skinType())._1dU(true);
        var _local3:_0nK = new _0nK();
        _local3.category = "character";
        _local3._0HR = "select";
        _local3.label = _local1._0Qh();
        _local3.value = _local1.level();
        this._16k.dispatch(_local3);
        var _local4:_m = new _m();
        _local4._HG = false;
        _local4.charId = _local1.charId();
        _local4._0uR = true;
        this._04M.dispatch(_local4);
    }


}
}//package _07g

