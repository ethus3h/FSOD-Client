// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_X4._NJ

package _X4 {
import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

import _6u._TG;

import _Z0._ix;

public class _NJ extends _0YI {

    private var decoy:XMLList;
    private var _0xQ:XMLList;


    override protected function compareSlots(_arg1:XML, _arg2:XML):void {
        var duration:Number;
        var otherDuration:Number;
        var textColor:uint;
        var test:String;
        var itemXML:XML = _arg1;
        var curItemXML:XML = _arg2;
        this.decoy = itemXML.Activate.(text() == "Decoy");
        this._0xQ = curItemXML.Activate.(text() == "Decoy");
        _0ak = new AppendingLineBuilder();
        if ((((this.decoy.length() == 1)) && ((this._0xQ.length() == 1)))) {
            duration = Number(this.decoy[0].@duration);
            otherDuration = Number(this._0xQ[0].@duration);
            textColor = _BZ((duration - otherDuration));
            _0ak.pushParams(_TG._mi, {data: new _5R().setParams(_TG._0AU, {duration: duration.toString()}).setPrefix(_ix._yk(textColor)).setPostfix(_ix._0yJ())});
            test = this.decoy[0].toXMLString();
            _14[this.decoy[0].toXMLString()] = true;
        }
        ;
    }


}
}//package _X4

