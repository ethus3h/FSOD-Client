// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._7M

package _1EG {
import _0cA._0bz;

import _0hU._0n;

import _1fG._0qT;

import _1ik._1Sl;
import _1ik._rG;

import __Nj._0ay;

import _r7._17v;

public class _7M extends _17v {

    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var view:ArenaLeaderboard;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _Fs:_0n;
    [Inject]
    public var _7a:_1Sl;


    override public function initialize():void {
        this._Fs.add(this._1Kp);
        this.view._A8.add(this._Wi);
        this.view.close.add(this._0mM);
        this.view.init();
    }

    override public function destroy():void {
        this._7a._1NN();
        this._Fs.remove(this._1Kp);
        this.view.destroy();
    }

    private function _0mM():void {
        this.closeDialogs.dispatch();
    }

    private function _Wi(_arg1:_rG):void {
        var _local2:_0qT;
        if (_arg1._0j1()) {
            this.view._0fK(_arg1._M1());
        } else {
            _local2 = this._sk.getInstance(_0qT);
            _local2.filter = _arg1;
            _local2.start();
        }
        ;
    }

    private function _1Kp():void {
        this.view._lN();
    }


}
}//package _1EG

