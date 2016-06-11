// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1K-

package _0t {
import _0tk.Command;

public class _1K extends Command {

    public function _1K(_arg1:_19w, _arg2:int, _arg3:int, _arg4:_Kr) {
        this.map_ = _arg1;
        this.x_ = _arg2;
        this.y_ = _arg3;
        this._13Y = _arg4.clone();
    }
    private var map_:_19w;
    private var x_:int;
    private var y_:int;
    private var _13Y:_Kr;

    override public function execute():void {
        this.map_._0WK(this.x_, this.y_);
    }

    override public function unexecute():void {
        this.map_._0mx(this.x_, this.y_, this._13Y);
    }


}
}//package _0t-

