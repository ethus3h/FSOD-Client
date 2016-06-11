// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._1m9

package _X4 {
import _0Mr.AppendingLineBuilder;

public class _1m9 extends _0YI {

    private static const _1Dc:String = "21";

    public function _1m9() {
        _0ak = new AppendingLineBuilder();
    }
    private var _KZ:XMLList;
    private var _qX:XMLList;

    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var defense:int;
        var otherDefense:int;
        var itemXML:XML = _arg1;
        var curItemXML:XML = _arg2;
        this._KZ = itemXML.ActivateOnEquip.(@stat == _1Dc);
        this._qX = curItemXML.ActivateOnEquip.(@stat == _1Dc);
        if ((((this._KZ.length() == 1)) && ((this._qX.length() == 1)))) {
            defense = int(this._KZ.@amount);
            otherDefense = int(this._qX.@amount);
        }
        ;
    }

    private function _1It(_arg1:int, _arg2:int):String {
        var _local3:uint = _BZ((_arg1 - _arg2));
        return (_sO((("+" + _arg1) + " Defense"), _local3));
    }


}
}//package _X4

