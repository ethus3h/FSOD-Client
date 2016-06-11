// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1R4._1Pc

package _1R4 {
import _14._29;

import _1oE._069;
import _1oE._0Aw;
import _1oE._cm;

import _1vS._sp;

import _r7._17v;

public class _1Pc extends _17v {

    [Inject]
    public var view:_SJ;
    [Inject]
    public var _0GI:_069;
    [Inject]
    public var _LG:_cm;
    [Inject]
    public var _053:_0Aw;
    [Inject]
    public var _SV:_sp;


    override public function initialize():void {
        this.view._0fr(this._SV.make());
        this._0GI.addOnce(this._02y);
        this._LG.add(this._SF);
        this._053.add(this._2p);
    }

    override public function destroy():void {
        this._LG.remove(this._SF);
    }

    private function _02y(_arg1:_29):void {
        this.view._0Um(_arg1._1YA, _arg1._02z);
    }

    private function _SF():void {
        this.view.disable();
    }

    private function _2p():void {
        this.view._1II();
    }


}
}//package _1R4

