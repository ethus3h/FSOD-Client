// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Nb._0ML

package _0Nb {

public class _0ML {

    public function _0ML(_arg1:Vector.<_0nz>) {
        this._1y = _arg1;
    }
    private var _1y:Vector.<_0nz>;
    private var selected:_0nz;

    public function setSelected(_arg1:String):void {
        var _local2:_0nz;
        for each (_local2 in this._1y) {
            if (_local2.getValue() == _arg1) {
                this._Jy(_local2);
                return;
            }
            ;
        }
        ;
    }

    public function _0ZN():_0nz {
        return (this.selected);
    }

    private function _Jy(_arg1:_0nz):void {
        if (this.selected != null) {
            this.selected.setSelected(false);
        }
        ;
        this.selected = _arg1;
        this.selected.setSelected(true);
    }


}
}//package _0Nb

