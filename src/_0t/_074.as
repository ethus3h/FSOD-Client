// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._074

package _0t {
import _0tk.Command;

public class _074 extends Command {

    public function _074(_arg1:_19w, _arg2:int, _arg3:int, _arg4:_Kr, _arg5:_Kr) {
        this.map_ = _arg1;
        this.x_ = _arg2;
        this.y_ = _arg3;
        if (_arg4 != null) {
            this._13Y = _arg4.clone();
        }
        ;
        if (_arg5 != null) {
            this._0T4 = _arg5.clone();
        }
        ;
    }
    private var map_:_19w;
    private var x_:int;
    private var y_:int;
    private var _13Y:_Kr;
    private var _0T4:_Kr;

    override public function execute():void {
        if (this._0T4 == null) {
            this.map_._0WK(this.x_, this.y_);
        } else {
            this.map_._0mx(this.x_, this.y_, this._0T4);
        }
        ;
    }

    override public function unexecute():void {
        if (this._13Y == null) {
            this.map_._0WK(this.x_, this.y_);
        } else {
            this.map_._0mx(this.x_, this.y_, this._13Y);
        }
        ;
    }


}
}//package _0t-

