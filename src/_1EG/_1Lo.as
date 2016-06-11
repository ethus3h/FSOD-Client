// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._1Lo

package _1EG {
import _1ik._f0;

import _r7._17v;

public class _1Lo extends _17v {

    [Inject]
    public var view:_1fW;
    [Inject]
    public var _0Xz:_f0;


    override public function initialize():void {
        this._0Xz._1s3.add(this._Lo);
    }

    override public function destroy():void {
        this._0Xz._1s3.remove(this._Lo);
    }

    private function _Lo():void {
        this.view._sF(this._0Xz._1ej._1qz);
    }


}
}//package _1EG

