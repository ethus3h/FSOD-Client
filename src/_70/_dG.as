// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_70._dG

package _70 {
import _1PM._1YQ;

import _1kP.ZombifyDialog;

import __Nj._1HT;
import __Nj._M4;

public class _dG {

    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _1vM:_1HT;
    [Inject]
    public var _1TT:_1YQ;


    public function execute():void {
        this._1TT.info("Zombify Player");
        this._nU.dispatch(new ZombifyDialog());
        this._1vM.dispatch(0x3300);
    }


}
}//package _70

