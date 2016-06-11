// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._7V

package _fL {
import flash.utils.IDataOutput;

public class _7V extends _1b1 {

    public function _7V(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var _0zQ:uint;
    public var _03p:uint;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeByte(this._0zQ);
        _arg1.writeInt(this._03p);
    }


}
}//package _fL

