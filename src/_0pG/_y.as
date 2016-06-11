// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0pG._y-

package _0pG {
public class _y {

    public function _y(_arg1:XML) {
        var _local2:XML;
        this._xz = new Vector.<_1wd>();
        super();
        if (("@prob" in _arg1)) {
            this._UU = Number(_arg1.@prob);
        }
        ;
        this.period_ = int((Number(_arg1.@period) * 1000));
        this._1xS = int((Number(_arg1.@periodJitter) * 1000));
        this._0mH = (String(_arg1.@sync) == "true");
        for each (_local2 in _arg1.Frame) {
            this._xz.push(new _1wd(_local2));
        }
        ;
    }
    public var _UU:Number = 1;
    public var period_:int;
    public var _1xS:int;
    public var _0mH:Boolean = false;
    public var _xz:Vector.<_1wd>;

    public function _163(_arg1:int):int {
        if (this._0mH) {
            return ((int((_arg1 / this.period_)) * this.period_));
        }
        ;
        return (((_arg1 + this._1zo()) + (200 * Math.random())));
    }

    public function _im(_arg1:int):int {
        if (this._0mH) {
            return (((int((_arg1 / this.period_)) * this.period_) + this.period_));
        }
        ;
        return ((_arg1 + this._1zo()));
    }

    private function _1zo():int {
        if (this._1xS == 0) {
            return (this.period_);
        }
        ;
        return (((this.period_ - this._1xS) + ((2 * Math.random()) * this._1xS)));
    }


}
}//package _0pG

