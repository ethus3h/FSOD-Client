// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._PR

package _fL {
import flash.utils.ByteArray;
import flash.utils.IDataOutput;

public class _PR extends _1b1 {

    public function _PR(_arg1:uint, _arg2:Function) {
        this.buildVersion_ = new String();
        this.guid_ = new String();
        this.password_ = new String();
        this.secret_ = new String();
        this.key_ = new ByteArray();
        this._0K1 = new String();
        super(_arg1, _arg2);
    }
    public var buildVersion_:String;
    public var gameId_:int = 0;
    public var guid_:String;
    public var password_:String;
    public var secret_:String;
    public var keyTime_:int = 0;
    public var key_:ByteArray;
    public var _0K1:String;
    public var _19e:String = "";
    public var _0Gt:String = "";
    public var _Jv:String = "";
    public var _0X8:String = "";
    public var _fE:String = "";

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeUTF(this.buildVersion_);
        _arg1.writeInt(this.gameId_);
        _arg1.writeUTF(this.guid_);
        _arg1.writeInt(int(Math.floor((Math.random() * 0x3B9ACA00))));
        _arg1.writeUTF(this.password_);
        _arg1.writeInt(int(Math.floor((Math.random() * 0x3B9ACA00))));
        _arg1.writeUTF(this.secret_);
        _arg1.writeInt(this.keyTime_);
        _arg1.writeShort(this.key_.length);
        _arg1.writeBytes(this.key_);
        _arg1.writeInt(this._0K1.length);
        _arg1.writeUTFBytes(this._0K1);
        _arg1.writeUTF(this._19e);
        _arg1.writeUTF(this._0Gt);
        _arg1.writeUTF(this._Jv);
        _arg1.writeUTF(this._0X8);
        _arg1.writeUTF(this._fE);
    }

    override public function toString():String {
        return (formatToString("HELLO", "buildVersion_", "gameId_", "guid_", "password_", "secret_"));
    }


}
}//package _fL

