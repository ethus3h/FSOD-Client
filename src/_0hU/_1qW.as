// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hU._1qW

package _0hU {
import _0cy._0Ij;

import _1EG._9y;

import _1ik._f0;

import _r7.Command;

public class _1qW extends Command {

    [Inject]
    public var _0fh:int;
    [Inject]
    public var model:_f0;
    [Inject]
    public var _p7:_0Ij;


    override public function execute():void {
        this.model._Be();
        this.model._1ej._0fh = this._0fh;
        this._p7._KU.addChild(new _9y());
    }


}
}//package _0hU

