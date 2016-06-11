// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03u._1hp

package _03u {
import _1Sm._sy;

public class _1hp extends _0MI {

    public function _1hp(_arg1:_sy, ..._args) {
        this._0QU = _arg1;
        this.params = _args;
    }
    private var _0QU:_sy;
    private var params:Array;

    override protected function startTask():void {
        this._0QU.dispatch.apply(null, this.params);
        _Ug(true);
    }


}
}//package _03u

