// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TC._01A

package _1TC {
import _11j._8p;

import _fL._1b1;

import flash.utils.IDataOutput;

public class _01A extends _1b1 {

    public static const _0Bc:int = 0;
    public static const _0Yj:int = 1;

    public function _01A(_arg1:uint, _arg2:Function) {
        this._0hR = new _8p();
        super(_arg1, _arg2);
    }
    public var _bK:int;
    public var _04U:int;
    public var _CA:int;
    public var objectId:int;
    public var _0hR:_8p;
    public var _0Pd:int;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeByte(this._bK);
        _arg1.writeInt(this._04U);
        _arg1.writeInt(this._CA);
        _arg1.writeInt(this.objectId);
        this._0hR.writeToOutput(_arg1);
        _arg1.writeByte(this._0Pd);
    }


}
}//package _1TC

