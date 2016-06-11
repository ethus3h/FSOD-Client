// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_45._0uo

package _45 {
import _10a._12l;

import _1L3._IG;

import _1f4._0Da;

import _r7._17v;

import com.company.assembleegameclient.objects.Pet;
import com.company.assembleegameclient.objects._Rk;

public class _0uo extends _17v {

    [Inject]
    public var view:_0Da;
    [Inject]
    public var _aI:_12l;
    [Inject]
    public var _e2:_IG;
    private var _0Ow:_Rk;


    override public function initialize():void {
        this.view._Rv = this._sI;
    }

    override public function destroy():void {
        super.destroy();
    }

    public function _sI():_Rk {
        if (!this._1z7()) {
            return (this._aI._O1);
        }
        ;
        if (this._0Ji()) {
            this._0Ow = this._aI._O1;
        }
        ;
        return (this._0Ow);
    }

    private function _0Ji():Boolean {
        return ((((this._aI._O1 is Pet)) ? this._0sl() : true));
    }

    private function _0sl():Boolean {
        if (((!(this._0Ow)) && (this._1z7()))) {
            return (true);
        }
        ;
        if ((((((this._0Ow is Pet)) && (this._1z7()))) && (!((Pet(this._aI._O1)._1HM._4E() == Pet(this._0Ow)._1HM._4E()))))) {
            return (true);
        }
        ;
        return (false);
    }

    private function _1z7():Boolean {
        return (this.view.gs_.map.isPetYard);
    }


}
}//package _45

