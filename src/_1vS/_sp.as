// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1vS._sp

package _1vS {
import _10a._FU;

import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import com.company.assembleegameclient.appengine.SavedCharacter;

import kabam.rotmg.assets.model.Animation;
import kabam.rotmg.assets.services._1Ns;

public class _sp {

    [Inject]
    public var _qP:_FU;
    [Inject]
    public var factory:_1Ns;
    [Inject]
    public var _PI:_1Z;
    private var _0dD:SavedCharacter;
    private var _1hR:_E0;
    private var skin:_1GP;
    private var tex2:int;
    private var tex1:int;


    public function make():Animation {
        this._0dD = this._qP._0im(this._qP._Oc);
        this._1hR = ((this._0dD) ? this._hc() : this._1iI());
        this.skin = this._1hR._0fJ._20R();
        this.tex1 = ((this._0dD) ? this._0dD.tex1() : 0);
        this.tex2 = ((this._0dD) ? this._0dD.tex2() : 0);
        return (this.factory._0kq(this.skin._164, 100, this.tex1, this.tex2));
    }

    private function _1iI():_E0 {
        return (this._PI._0ZN());
    }

    private function _hc():_E0 {
        return (this._PI._Sb(this._0dD.objectType()));
    }


}
}//package _1vS

