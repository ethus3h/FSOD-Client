// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_fL._RT

package _fL {
import com.company.assembleegameclient.objects.Player;

import flash.utils.IDataOutput;

public class _RT extends _1b1 {

    public function _RT(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }
    public var skinID:int;
    public var player:Player;

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeInt(this.skinID);
    }

    override public function consume():void {
        super.consume();
        this.player = null;
    }

    override public function toString():String {
        return (formatToString("RESKIN", "skinID"));
    }


}
}//package _fL

