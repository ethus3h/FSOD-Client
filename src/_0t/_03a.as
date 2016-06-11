// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._03a

package _0t {
import _0tk.Command;

public class _03a extends Command {

    public function _03a(_arg1:_19w, _arg2:int, _arg3:int, _arg4:int, _arg5:int, _arg6:int) {
        this.map_ = _arg1;
        this.x_ = _arg2;
        this.y_ = _arg3;
        this._0lf = _arg4;
        this._0WO = _arg5;
        this._19T = _arg6;
    }
    private var map_:_19w;
    private var x_:int;
    private var y_:int;
    private var _0lf:int;
    private var _0WO:int;
    private var _19T:int;

    override public function execute():void {
        this.map_._0Rs(this.x_, this.y_, this._0lf, this._19T);
    }

    override public function unexecute():void {
        this.map_._0Rs(this.x_, this.y_, this._0lf, this._0WO);
    }


}
}//package _0t-

