// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1pV._0BG

package _1pV {

public class _0BG {

    private const map:Object = {};

    public function _0BG() {
        this.timespan = Timespan._xG;
        super();
    }
    private var timespan:Timespan;

    public function _0Ud():Timespan {
        return (this.timespan);
    }

    public function _1Re(_arg1:Timespan):void {
        this.timespan = _arg1;
    }

    public function _1dD():Boolean {
        return (!((this.map[this.timespan._yr()] == null)));
    }

    public function _0zO():Vector.<_nD> {
        return (this.map[this.timespan._yr()]);
    }

    public function _Ni(_arg1:Vector.<_nD>):void {
        this.map[this.timespan._yr()] = _arg1;
    }

    public function clear():void {
        var _local1:String;
        for (_local1 in this.map) {
            this.dispose(this.map[_local1]);
            delete this.map[_local1];
        }
        ;
    }

    private function dispose(_arg1:Vector.<_nD>):void {
        var _local2:_nD;
        for each (_local2 in _arg1) {
            ((_local2.character) && (this._1TK(_local2)));
        }
        ;
    }

    private function _1TK(_arg1:_nD):void {
        _arg1.character.dispose();
        _arg1.character = null;
    }


}
}//package _1pV

