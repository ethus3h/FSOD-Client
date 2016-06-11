// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1iA._0rP

package _1iA {
public class _0rP {

    private var _0ed:Boolean = false;
    private var seconds:int;
    private var minutes:int;
    private var _0RD:int;
    private var days:int;
    private var _0hA:Array;


    public function _0Jt(_arg1:Number):String {
        this.seconds = Math.floor((_arg1 / 1000));
        this.minutes = Math.floor((this.seconds / 60));
        this._0RD = Math.floor((this.minutes / 60));
        this.days = Math.floor((this._0RD / 24));
        this.seconds = (this.seconds % 60);
        this.minutes = (this.minutes % 60);
        this._0RD = (this._0RD % 24);
        this._0ed = false;
        this._0hA = [];
        this._1Lh(this.days, "d");
        this._1Lh(this._0RD, "h");
        this._1Lh(this.minutes, "m", 2);
        this._1Lh(this.seconds, "s", 2);
        this._0ed = false;
        return (this._0hA.join(" "));
    }

    private function _1Lh(_arg1:int, _arg2:String, _arg3:int = -1):void {
        if ((((_arg1 == 0)) && (!(this._0ed)))) {
            return;
        }
        ;
        this._0ed = true;
        var _local4:String = _arg1.toString();
        if (_arg3 == -1) {
            _arg3 = _local4.length;
        }
        ;
        var _local5 = "";
        var _local6:int = _local4.length;
        while (_local6 < _arg3) {
            _local5 = (_local5 + "0");
            _local6++;
        }
        ;
        _local4 = ((_local5 + _local4) + _arg2);
        this._0hA.push(_local4);
    }


}
}//package _1iA

