// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Nf._0nA

package __Nf {
public class _0nA {

    public function _0nA(_arg1:String) {
        this._Vt = _arg1;
        this._1jH = 0;
        this._Oz();
    }
    private var obj:Object;
    private var _Vt:String;
    private var _1jH:int;
    private var ch:String;

    public function _PG():_0Lk {
        var _local2:String;
        var _local3:String;
        var _local4:String;
        var _local1:_0Lk = new _0Lk();
        this._1fo();
        switch (this.ch) {
            case "{":
                _local1.type = _0yk._0po;
                _local1.value = "{";
                this._Oz();
                break;
            case "}":
                _local1.type = _0yk._L9;
                _local1.value = "}";
                this._Oz();
                break;
            case "[":
                _local1.type = _0yk._0jn;
                _local1.value = "[";
                this._Oz();
                break;
            case "]":
                _local1.type = _0yk._07m;
                _local1.value = "]";
                this._Oz();
                break;
            case ",":
                _local1.type = _0yk._0BX;
                _local1.value = ",";
                this._Oz();
                break;
            case ":":
                _local1.type = _0yk._15M;
                _local1.value = ":";
                this._Oz();
                break;
            case "t":
                _local2 = ((("t" + this._Oz()) + this._Oz()) + this._Oz());
                if (_local2 == "true") {
                    _local1.type = _0yk._1dl;
                    _local1.value = true;
                    this._Oz();
                } else {
                    this._0hf(("Expecting 'true' but found " + _local2));
                }
                ;
                break;
            case "f":
                _local3 = (((("f" + this._Oz()) + this._Oz()) + this._Oz()) + this._Oz());
                if (_local3 == "false") {
                    _local1.type = _0yk._1yk;
                    _local1.value = false;
                    this._Oz();
                } else {
                    this._0hf(("Expecting 'false' but found " + _local3));
                }
                ;
                break;
            case "n":
                _local4 = ((("n" + this._Oz()) + this._Oz()) + this._Oz());
                if (_local4 == "null") {
                    _local1.type = _0yk.NULL;
                    _local1.value = null;
                    this._Oz();
                } else {
                    this._0hf(("Expecting 'null' but found " + _local4));
                }
                ;
                break;
            case '"':
                _local1 = this._K7();
                break;
            default:
                if (((this._0q0(this.ch)) || ((this.ch == "-")))) {
                    _local1 = this._FM();
                } else {
                    if (this.ch == "") {
                        return (null);
                    }
                    ;
                    this._0hf((("Unexpected " + this.ch) + " encountered"));
                }
                ;
        }
        ;
        return (_local1);
    }

    public function _0hf(_arg1:String):void {
        throw (new JSONParseError(_arg1, this._1jH, this._Vt));
    }

    private function _K7():_0Lk {
        var _local3:String;
        var _local4:int;
        var _local1:_0Lk = new _0Lk();
        _local1.type = _0yk._1No;
        var _local2 = "";
        this._Oz();
        while (((!((this.ch == '"'))) && (!((this.ch == ""))))) {
            if (this.ch == "\\") {
                this._Oz();
                switch (this.ch) {
                    case '"':
                        _local2 = (_local2 + '"');
                        break;
                    case "/":
                        _local2 = (_local2 + "/");
                        break;
                    case "\\":
                        _local2 = (_local2 + "\\");
                        break;
                    case "b":
                        _local2 = (_local2 + "\b");
                        break;
                    case "f":
                        _local2 = (_local2 + "\f");
                        break;
                    case "n":
                        _local2 = (_local2 + "\n");
                        break;
                    case "r":
                        _local2 = (_local2 + "\r");
                        break;
                    case "t":
                        _local2 = (_local2 + "\t");
                        break;
                    case "u":
                        _local3 = "";
                        _local4 = 0;
                        while (_local4 < 4) {
                            if (!this._08j(this._Oz())) {
                                this._0hf((" Excepted a hex digit, but found: " + this.ch));
                            }
                            ;
                            _local3 = (_local3 + this.ch);
                            _local4++;
                        }
                        ;
                        _local2 = (_local2 + String.fromCharCode(parseInt(_local3, 16)));
                        break;
                    default:
                        _local2 = (_local2 + ("\\" + this.ch));
                }
                ;
            } else {
                _local2 = (_local2 + this.ch);
            }
            ;
            this._Oz();
        }
        ;
        if (this.ch == "") {
            this._0hf("Unterminated string literal");
        }
        ;
        this._Oz();
        _local1.value = _local2;
        return (_local1);
    }

    private function _FM():_0Lk {
        var _local1:_0Lk = new _0Lk();
        _local1.type = _0yk._94;
        var _local2 = "";
        if (this.ch == "-") {
            _local2 = (_local2 + "-");
            this._Oz();
        }
        ;
        if (!this._0q0(this.ch)) {
            this._0hf("Expecting a digit");
        }
        ;
        if (this.ch == "0") {
            _local2 = (_local2 + this.ch);
            this._Oz();
            if (this._0q0(this.ch)) {
                this._0hf("A digit cannot immediately follow 0");
            }
            ;
        } else {
            while (this._0q0(this.ch)) {
                _local2 = (_local2 + this.ch);
                this._Oz();
            }
            ;
        }
        ;
        if (this.ch == ".") {
            _local2 = (_local2 + ".");
            this._Oz();
            if (!this._0q0(this.ch)) {
                this._0hf("Expecting a digit");
            }
            ;
            while (this._0q0(this.ch)) {
                _local2 = (_local2 + this.ch);
                this._Oz();
            }
            ;
        }
        ;
        if ((((this.ch == "e")) || ((this.ch == "E")))) {
            _local2 = (_local2 + "e");
            this._Oz();
            if ((((this.ch == "+")) || ((this.ch == "-")))) {
                _local2 = (_local2 + this.ch);
                this._Oz();
            }
            ;
            if (!this._0q0(this.ch)) {
                this._0hf("Scientific notation number needs exponent value");
            }
            ;
            while (this._0q0(this.ch)) {
                _local2 = (_local2 + this.ch);
                this._Oz();
            }
            ;
        }
        ;
        var _local3:Number = Number(_local2);
        if (((isFinite(_local3)) && (!(isNaN(_local3))))) {
            _local1.value = _local3;
            return (_local1);
        }
        ;
        this._0hf((("Number " + _local3) + " is not valid!"));
        return (null);
    }

    private function _Oz():String {
        return ((this.ch = this._Vt.charAt(this._1jH++)));
    }

    private function _1fo():void {
        var _local1:int;
        do {
            _local1 = this._1jH;
            this._Yn();
            this._11s();
        } while (_local1 != this._1jH);
    }

    private function _11s():void {
        if (this.ch == "/") {
            this._Oz();
            switch (this.ch) {
                case "/":
                    do {
                        this._Oz();
                    } while (((!((this.ch == "\n"))) && (!((this.ch == "")))));
                    this._Oz();
                    return;
                case "*":
                    this._Oz();
                    while (true) {
                        if (this.ch == "*") {
                            this._Oz();
                            if (this.ch == "/") {
                                this._Oz();
                                break;
                            }
                            ;
                        } else {
                            this._Oz();
                        }
                        ;
                        if (this.ch == "") {
                            this._0hf("Multi-line comment not closed");
                        }
                        ;
                    }
                    ;
                    return;
                default:
                    this._0hf((("Unexpected " + this.ch) + " encountered (expecting '/' or '*' )"));
            }
            ;
        }
        ;
    }

    private function _Yn():void {
        while (this._062(this.ch)) {
            this._Oz();
        }
        ;
    }

    private function _062(_arg1:String):Boolean {
        return ((((((((_arg1 == " ")) || ((_arg1 == "\t")))) || ((_arg1 == "\n")))) || ((_arg1 == "\r"))));
    }

    private function _0q0(_arg1:String):Boolean {
        return ((((_arg1 >= "0")) && ((_arg1 <= "9"))));
    }

    private function _08j(_arg1:String):Boolean {
        var _local2:String = _arg1.toUpperCase();
        return (((this._0q0(_arg1)) || ((((_local2 >= "A")) && ((_local2 <= "F"))))));
    }


}
}//package _Nf

