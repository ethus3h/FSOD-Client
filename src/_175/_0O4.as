// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_175._0O4

package _175 {
import _6u._1wU;

public class _0O4 implements _dS {

    public function _0O4() {
        this._0oD = new Vector.<_1wU>();
        super();
    }
    [Inject]
    public var _0WN:_dS;
    [Inject]
    public var _0GF:_0CN;
    public var _0oD:Vector.<_1wU>;

    public function _cb(_arg1:String):Boolean {
        return (true);
    }

    public function getValue(_arg1:String):String {
        if (((!((_arg1 == ""))) && (this._1LE(_arg1)))) {
            return (_arg1);
        }
        ;
        return (this._0WN.getValue(_arg1));
    }

    public function clear():void {
    }

    public function setValue(_arg1:String, _arg2:String, _arg3:String):void {
        this._0WN.setValue(_arg1, _arg2, _arg3);
    }

    public function _0nw(_arg1:String):String {
        return (this._0WN._0nw(_arg1));
    }

    private function _1LE(_arg1:String):Boolean {
        return (((this._0h(_arg1)) || (this._1eY(_arg1))));
    }

    private function _0h(_arg1:String):Boolean {
        return (!(this._0WN._cb(_arg1)));
    }

    private function _Ji(_arg1:String):void {
        var _local2:String = this._0nw(_arg1);
        var _local3:_1wU = new _1wU();
        _local3.key = _arg1;
        _local3._cb = this._0WN._cb(_arg1);
        _local3._7C = _local2;
        _local3.value = this._0WN.getValue(_arg1);
        this._0oD.push(_local3);
    }

    private function _1eY(_arg1:String):Boolean {
        return (!((this._0nw(_arg1) == this._0GF._1Es())));
    }


}
}//package _175

