// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_11j._1ST

package _11j {
import flash.geom.Point;
import flash.utils.IDataInput;
import flash.utils.IDataOutput;

public class _1ST {

    public var x_:Number;
    public var y_:Number;


    public function _1Ab():Point {
        return (new Point(this.x_, this.y_));
    }

    public function parseFromInput(_arg1:IDataInput):void {
        this.x_ = _arg1.readFloat();
        this.y_ = _arg1.readFloat();
    }

    public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeFloat(this.x_);
        _arg1.writeFloat(this.y_);
    }

    public function toString():String {
        return (((("x_: " + this.x_) + " y_: ") + this.y_));
    }


}
}//package _11j

