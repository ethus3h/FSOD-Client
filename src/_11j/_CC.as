// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_11j._CC

package _11j {
import flash.utils.IDataInput;

public class _CC {

    public function _CC() {
        this._0K8 = new _0g1();
        super();
    }
    public var objectType_:int;
    public var _0K8:_0g1;

    public function parseFromInput(_arg1:IDataInput):void {
        this.objectType_ = _arg1.readShort();
        this._0K8.parseFromInput(_arg1);
    }

    public function toString():String {
        return (((("objectType_: " + this.objectType_) + " status_: ") + this._0K8));
    }


}
}//package _11j

