// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_vp._QF

package _vp {
import _0ld._1EE;

import _0tk.Command;

import __Nj._M4;

public class _QF extends Command {

    [Inject]
    public var petName:String;
    [Inject]
    public var _1SP:int;
    [Inject]
    public var _nU:_M4;


    override public function execute():void {
        this._nU.dispatch(new _1EE(this.petName, this._1SP));
    }


}
}//package _vp

