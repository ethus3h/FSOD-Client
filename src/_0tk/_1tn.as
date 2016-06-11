// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tk._1tn

package _0tk {

public class _1tn {

    public function _1tn() {
        this._1iW = new Vector.<Command>();
        super();
    }
    private var _1iW:Vector.<Command>;

    public function _02M():Boolean {
        return ((this._1iW.length == 0));
    }

    public function _33(_arg1:Command):void {
        this._1iW.push(_arg1);
    }

    public function execute():void {
        var _local1:Command;
        for each (_local1 in this._1iW) {
            _local1.execute();
        }
        ;
    }

    public function unexecute():void {
        var _local1:Command;
        for each (_local1 in this._1iW) {
            _local1.unexecute();
        }
        ;
    }


}
}//package _0tk

