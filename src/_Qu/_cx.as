// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Qu._cx

package _Qu {
import flash.utils.IDataInput;
import flash.utils.IDataOutput;

public class _cx {

    public function _cx(_arg1:uint, _arg2:Function = null) {
        this.id = _arg1;
        this._0Ot = !((_arg2 == null));
        this.callback = _arg2;
    }
    public var pool:_1ff;
    public var _dN:_cx;
    public var next:_cx;
    public var id:uint;
    public var callback:Function;
    private var _0Ot:Boolean;

    public function parseFromInput(_arg1:IDataInput):void {
    }

    public function writeToOutput(_arg1:IDataOutput):void {
    }

    public function toString():String {
        return (this.formatToString("MESSAGE", "id"));
    }

    public function consume():void {
        ((this._0Ot) && (this.callback(this)));
        this._dN = null;
        this.next = null;
        this.pool.append(this);
    }

    protected function formatToString(_arg1:String, ..._args):String {
        var _local3:String = ("[" + _arg1);
        var _local4:int;
        while (_local4 < _args.length) {
            _local3 = (_local3 + ((((" " + _args[_local4]) + '="') + this[_args[_local4]]) + '"'));
            _local4++;
        }
        ;
        _local3 = (_local3 + "]");
        return (_local3);
    }


}
}//package _Qu

