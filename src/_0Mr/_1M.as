// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mr._1M

package _0Mr {
import _175._dS;

public class _1M implements _1vN {

    public function _1M(_arg1:String = "") {
        this.string = _arg1;
        this._1nh = "";
        this._1WG = "";
    }
    private var string:String;
    private var _1nh:String;
    private var _1WG:String;

    public function setString(_arg1:String):_1M {
        this.string = _arg1;
        return (this);
    }

    public function setPrefix(_arg1:String):_1M {
        this._1nh = _arg1;
        return (this);
    }

    public function setPostfix(_arg1:String):_1M {
        this._1WG = _arg1;
        return (this);
    }

    public function _qO(_arg1:_dS):void {
    }

    public function getString():String {
        return (((this._1nh + this.string) + this._1WG));
    }


}
}//package _0Mr

