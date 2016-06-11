// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0sf._0uf

package _0sf {

public class _0uf implements _fS {

    public static var _1Wd:Class = EmbeddedData_proTips;

    public function _0uf() {
        this.index = 0;
        this._0o0();
        this.count = this._20T.length;
        this._150();
    }
    private var _20T:Vector.<String>;
    private var _1zg:Vector.<int>;
    private var index:int;
    private var count:int;

    public function _Ju():String {
        var _local1:int = this._1zg[(this.index++ % this.count)];
        return (this._20T[_local1]);
    }

    private function _0o0():void {
        var _local2:XML;
        var _local1:XML = XML(new _1Wd());
        this._20T = new <String>[];
        for each (_local2 in _local1.Protip) {
            this._20T.push(_local2.toString());
        }
        ;
        this.count = this._20T.length;
    }

    private function _150():void {
        var _local1:Vector.<int> = new <int>[];
        var _local2:int;
        while (_local2 < this.count) {
            _local1.push(_local2);
            _local2++;
        }
        ;
        this._1zg = new <int>[];
        while (_local2 > 0) {
            this._1zg.push(_local1.splice(Math.floor((Math.random() * _local2--)), 1)[0]);
        }
        ;
        this._1zg.fixed = true;
    }


}
}//package _0sf

