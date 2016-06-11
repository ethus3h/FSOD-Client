// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mr._0w3

package _0Mr {
import _175._dS;

public class _0w3 implements _1vN {

    private const _14c:RegExp = /(\{([^\{]+?)\})/gi;

    private var _D4:String = "";
    private var _jF:Array;
    private var provider:_dS;


    public function setPattern(_arg1:String):_0w3 {
        this._D4 = _arg1;
        return (this);
    }

    public function _qO(_arg1:_dS):void {
        this.provider = _arg1;
    }

    public function getString():String {
        var _local2:String;
        this._jF = this._D4.match(this._14c);
        var _local1:String = this._D4;
        for each (_local2 in this._jF) {
            _local1 = _local1.replace(_local2, this.provider.getValue(_local2.substr(1, (_local2.length - 2))));
        }
        ;
        return (_local1.replace(/\\n/g, "\n"));
    }


}
}//package _0Mr

