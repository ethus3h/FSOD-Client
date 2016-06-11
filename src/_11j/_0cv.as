// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_11j._0cv

package _11j {
import flash.utils.IDataInput;

public class _0cv {

    public var item_:int;
    public var _00m:int;
    public var _TU:Boolean;
    public var included_:Boolean;


    public function parseFromInput(_arg1:IDataInput):void {
        this.item_ = _arg1.readInt();
        this._00m = _arg1.readInt();
        this._TU = _arg1.readBoolean();
        this.included_ = _arg1.readBoolean();
    }

    public function toString():String {
        return (((((((("item: " + this.item_) + " slotType: ") + this._00m) + " tradeable: ") + this._TU) + " included:") + this.included_));
    }


}
}//package _11j

