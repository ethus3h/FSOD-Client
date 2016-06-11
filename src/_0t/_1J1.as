// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1J1

package _0t {
import _0tk.Command;

public class _1J1 extends Command {

    public function _1J1(_arg1:_19w, _arg2:int, _arg3:int, _arg4:String, _arg5:String) {
        this.map_ = _arg1;
        this.x_ = _arg2;
        this.y_ = _arg3;
        this._Ze = _arg4;
        this._1i3 = _arg5;
    }
    private var map_:_19w;
    private var x_:int;
    private var y_:int;
    private var _Ze:String;
    private var _1i3:String;

    override public function execute():void {
        this.map_._03E(this.x_, this.y_, this._1i3);
    }

    override public function unexecute():void {
        this.map_._03E(this.x_, this.y_, this._Ze);
    }


}
}//package _0t-

