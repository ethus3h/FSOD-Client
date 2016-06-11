// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Qu._1ff

package _Qu {
public class _1ff {

    public function _1ff(_arg1:int, _arg2:Class, _arg3:Function) {
        this.type = _arg2;
        this.id = _arg1;
        this.callback = _arg3;
    }
    public var type:Class;
    public var callback:Function;
    public var id:int;
    private var _qh:_cx;
    private var count:int = 0;

    public function _08G(_arg1:int):_1ff {
        var _local2:_cx;
        this.count = (this.count + _arg1);
        while (_arg1--) {
            _local2 = new this.type(this.id, this.callback);
            _local2.pool = this;
            ((this._qh) && ((this._qh.next = _local2)));
            _local2._dN = this._qh;
            this._qh = _local2;
        }
        ;
        return (this);
    }

    public function _1SN():_cx {
        var _local1:_cx = this._qh;
        if (_local1) {
            this._qh = this._qh._dN;
            _local1._dN = null;
            _local1.next = null;
        } else {
            _local1 = new this.type(this.id, this.callback);
            _local1.pool = this;
            this.count++;
        }
        ;
        return (_local1);
    }

    public function _1br():int {
        return (this.count);
    }

    public function dispose():void {
        this._qh = null;
    }

    function append(_arg1:_cx):void {
        ((this._qh) && ((this._qh.next = _arg1)));
        _arg1._dN = this._qh;
        this._qh = _arg1;
    }


}
}//package _Qu

