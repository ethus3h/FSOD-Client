// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0AI._0q8

package _0AI {
import _7T._0CZ;
import _7T._18u;

import _R2._fo;

import _nf._1GS;

import _r7._17v;

public class _0q8 extends _17v {

    public static var _060:Boolean = true;

    [Inject]
    public var update:_fo;
    [Inject]
    public var model:_18u;
    [Inject]
    public var _0c:_1GS;


    override public function initialize():void {
        this.update.add(this._0IJ);
        this._0c.start();
        if (_060) {
            _060 = false;
            this.model._176();
        }
        ;
    }

    override public function destroy():void {
        this.update.remove(this._0IJ);
    }

    private function _0IJ(_arg1:Vector.<_0CZ>):void {
        this.model._176();
    }


}
}//package _0AI

