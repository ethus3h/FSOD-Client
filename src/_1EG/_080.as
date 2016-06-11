// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._080

package _1EG {
import _0N._I7;

import _0hi._DG;

import _1E._03e;

import _1Fr._qf;

import _1TC._08E;

import _1cr._0VP;

import _1ik._f0;

import _FT._1Qu;

import _Qu._en;

import __Nj._0ay;

import _r7._17v;

public class _080 extends _17v {

    [Inject]
    public var view:ContinueOrQuitDialog;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _0Je:_en;
    [Inject]
    public var _1Zi:_0VP;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _0Xz:_f0;
    [Inject]
    public var _Zs:_03e;
    [Inject]
    public var _1kx:_1Qu;
    [Inject]
    public var _ky:_DG;


    override public function initialize():void {
        this._1kx.add(this._tn);
        this.view.quit.add(this._Sp);
        this.view._1l7.add(this._1Xd);
        this.view.init(this._0Xz._1ej._1qz, this._Zs.player.credits_);
    }

    override public function destroy():void {
        this._1kx.remove(this._tn);
        this.view.quit.remove(this._Sp);
        this.view._1l7.remove(this._1Xd);
        this.view.destroy();
    }

    private function _tn():void {
        this.view._0Ca(false);
    }

    private function _1Xd(_arg1:int, _arg2:int):void {
        var _local3:_I7;
        if (this._Zs.player.credits_ >= _arg2) {
            this.closeDialogs.dispatch();
            _local3 = (this._1Zi._1SN(_08E.ENTER_ARENA) as _I7);
            _local3.currency = _arg1;
            this._0Je.sendMessage(_local3);
        } else {
            this.view._0Ca(true);
            this._ky.dispatch();
        }
        ;
    }

    private function _Sp():void {
        this.closeDialogs.dispatch();
        this._1b._1P.gsc_.escape();
    }


}
}//package _1EG

