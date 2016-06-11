// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Nf._04-

package __Nf {
public class _04 {

    public function _04(_arg1:String) {
        this._F = new _0nA(_arg1);
        this._0Em();
        this.value = this._UW();
    }
    private var value;
    private var _F:_0nA;
    private var token:_0Lk;

    public function getValue() {
        return (this.value);
    }

    private function _0Em():_0Lk {
        return ((this.token = this._F._PG()));
    }

    private function _1QM():Array {
        var _local1:Array = new Array();
        this._0Em();
        if (this.token.type == _0yk._07m) {
            return (_local1);
        }
        ;
        while (true) {
            _local1.push(this._UW());
            this._0Em();
            if (this.token.type == _0yk._07m) {
                return (_local1);
            }
            ;
            if (this.token.type == _0yk._0BX) {
                this._0Em();
            } else {
                this._F._0hf(("Expecting ] or , but found " + this.token.value));
            }
            ;
        }
        ;
        return (null);
    }

    private function _eG():Object {
        var _local2:String;
        var _local1:Object = new Object();
        this._0Em();
        if (this.token.type == _0yk._L9) {
            return (_local1);
        }
        ;
        while (true) {
            if (this.token.type == _0yk._1No) {
                _local2 = String(this.token.value);
                this._0Em();
                if (this.token.type == _0yk._15M) {
                    this._0Em();
                    _local1[_local2] = this._UW();
                    this._0Em();
                    if (this.token.type == _0yk._L9) {
                        return (_local1);
                    }
                    ;
                    if (this.token.type == _0yk._0BX) {
                        this._0Em();
                    } else {
                        this._F._0hf(("Expecting } or , but found " + this.token.value));
                    }
                    ;
                } else {
                    this._F._0hf(("Expecting : but found " + this.token.value));
                }
                ;
            } else {
                this._F._0hf(("Expecting string but found " + this.token.value));
            }
            ;
        }
        ;
        return (null);
    }

    private function _UW():Object {
        if (this.token == null) {
            this._F._0hf("Unexpected end of input");
        }
        ;
        switch (this.token.type) {
            case _0yk._0po:
                return (this._eG());
            case _0yk._0jn:
                return (this._1QM());
            case _0yk._1No:
            case _0yk._94:
            case _0yk._1dl:
            case _0yk._1yk:
            case _0yk.NULL:
                return (this.token.value);
            default:
                this._F._0hf(("Unexpected " + this.token.value));
        }
        ;
        return (null);
    }


}
}//package _Nf

