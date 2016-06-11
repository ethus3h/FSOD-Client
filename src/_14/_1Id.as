// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._1Id

package _14 {
import flash.display.BitmapData;
import flash.utils.IDataInput;

public class _1Id extends _eJ {

    public function _1Id(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var accountId_:String;
    public var charId_:int;
    public var killedBy_:String;
    public var _qW:int;
    public var _1D7:int;
    public var _0AO:Boolean;
    public var background:BitmapData;

    override public function parseFromInput(_arg1:IDataInput):void {
        this.accountId_ = _arg1.readUTF();
        this.charId_ = _arg1.readInt();
        this.killedBy_ = _arg1.readUTF();
        this._1D7 = _arg1.readInt();
        this._qW = _arg1.readInt();
        this._0AO = !((this._qW == -1));
    }

    override public function toString():String {
        return (formatToString("DEATH", "accountId_", "charId_", "killedBy_"));
    }

    public function _1JP():void {
        ((this.background) && (this.background.dispose()));
        this.background = null;
    }


}
}//package _14-

