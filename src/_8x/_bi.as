// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_8x._bi

package _8x {
import _0oZ._function;

import _1RN._035;
import _1RN._1mv;
import _1RN._7E;
import _1RN._Yg;
import _1RN._lf;

import _r7._17v;

import flash.system.System;

public final class _bi extends _17v {

    [Inject]
    public var log:_035;
    [Inject]
    public var _1f:_lf;
    [Inject]
    public var _18p:_1mv;
    [Inject]
    public var clear:_7E;
    [Inject]
    public var copy:_Yg;
    [Inject]
    public var view:_CJ;


    override public function initialize():void {
        this.log.add(this._0Od);
        this._1f.add(this._0c0);
        this._18p.add(this._95);
        this.clear.add(this._1tF);
        this.copy.add(this._rb);
    }

    override public function destroy():void {
        this.log.remove(this._0Od);
        this._1f.remove(this._0c0);
        this._18p.remove(this._95);
        this.clear.remove(this._1tF);
        this.copy.remove(this._rb);
    }

    private function _0Od(_arg1:String):void {
        this.view.log(_arg1);
    }

    private function _0c0(_arg1:_function):void {
        this.view._1f(_arg1);
    }

    private function _95(_arg1:String):void {
        this.view._18p(_arg1);
    }

    private function _1tF():void {
        this.view.clear();
    }

    private function _rb():void {
        System.setClipboard(this.view._4D());
    }


}
}//package _8x

