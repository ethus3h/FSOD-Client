// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_w9._K0

package _w9 {
import _14._eJ;

import flash.utils.IDataInput;

public class _K0 extends _eJ {

    public function _K0(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var petName:String;
    public var _1SP:int;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.petName = _arg1.readUTF();
        this._1SP = _arg1.readInt();
    }


}
}//package _w9

