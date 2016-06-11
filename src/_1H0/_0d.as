// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1H0._0d-

package _1H0 {
import _0FY._0Vj;

import _14._1Id;

import _1i0._0Ie;
import _1i0._1Uh;
import _1i0._Q;

import _3q._0av;

import _GD._7t;

import _r7._17v;

import _wm._vG;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects._1kQ;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0zq;

import flash.display.BitmapData;

import kabam.rotmg.assets.services._1Ns;

public class _0d extends _17v {

    [Inject]
    public var view:FameView;
    [Inject]
    public var _FX:_vG;
    [Inject]
    public var _gn:_7t;
    [Inject]
    public var _p2:_Q;
    [Inject]
    public var _SH:_1Uh;
    [Inject]
    public var _16k:_0Ie;
    [Inject]
    public var _2:_0Vj;
    [Inject]
    public var factory:_1Ns;
    private var _Qz:Boolean;
    private var death:_1Id;


    override public function initialize():void {
        this.view.closed.add(this._0zc);
        this._16k.dispatch("/fame");
        this._1sx();
        this._1Mv();
    }

    override public function destroy():void {
        this.view.closed.remove(this._0zc);
        this.view._1ln();
        ((this.death) && (this.death._1JP()));
        this._2._i4.removeAll();
    }

    private function _1sx():void {
        this._Qz = this._gn._0K3();
        this.view._2v(this._Qz);
        this.death = this._gn._1jw();
        if (((this.death) && (this.death.background))) {
            this.view._yI(this.death.background);
        }
        ;
    }

    private function _1Mv():void {
        this._2.accountId = this._FX.accountId;
        this._2.charId = this._FX._O;
        this._2._i4.addOnce(this._v);
        this._2.start();
    }

    private function _v(_arg1:_0Vj, _arg2:Boolean, _arg3:String = ""):void {
        var _local4:BitmapData = this.makeIcon();
        this.view._1XZ(_arg1.name, _arg1.level, _arg1.type);
        this.view._0dr(_arg1._PK, _arg1.killer);
        this.view.setIcon(_local4);
        this.view._0S0(_arg1._0UL, _arg1.xml);
    }

    private function makeIcon():BitmapData {
        if (((this._Qz) && (this.death._0AO))) {
            return (this._52());
        }
        ;
        return (this._0GG());
    }

    private function _0GG():BitmapData {
        return (this.factory.makeIcon(this._2._164, 250, this._2.texture1, this._2.texture2));
    }

    private function _52():BitmapData {
        var _local1:_1kQ = ObjectLibrary._mQ[this.death._1D7];
        var _local2:_0zq = _local1._0TX;
        var _local3:_0T2 = _local2.imageFromDir(_0zq.RIGHT, _0zq._c0, 0);
        return (TextureRedrawer.resize(_local3.image_, _local3.mask_, 250, true, this._2.texture1, this._2.texture2));
    }

    private function _0zc():void {
        if (this._Qz) {
            this._p2.dispatch(new _0av());
        } else {
            this._SH.dispatch();
        }
        ;
    }


}
}//package _1H0

