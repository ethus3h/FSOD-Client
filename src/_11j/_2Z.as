// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_11j._2-Z

package _11j {
import flash.utils.IDataInput;

public class _2Z {

    public var x_:int;
    public var y_:int;
    public var type_:uint;


    public function parseFromInput(_arg1:IDataInput):void {
        this.x_ = _arg1.readShort();
        this.y_ = _arg1.readShort();
        this.type_ = _arg1.readUnsignedShort();
    }

    public function toString():String {
        return (((((("x_: " + this.x_) + " y_: ") + this.y_) + " type_:") + this.type_));
    }


}
}//package _11j

