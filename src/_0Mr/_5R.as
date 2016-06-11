// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mr._5R

package _0Mr {
import _0CT._8w;

import _175._dS;

public class _5R implements _1vN {

    public static function fromJSON(_arg1:String):_5R {
        var _local2:Object = JSON.parse(_arg1);
        return (new (_5R)().setParams(_local2.key, _local2.tokens));
    }

    public static function _n7(_arg1:String, _arg2:Object = null):String {
        var _local3:_5R = new (_5R)();
        _local3.setParams(_arg1, _arg2);
        var _local4:_dS = _8w._1Sz().getInstance(_dS);
        _local3._qO(_local4);
        return (_local3.getString());
    }

    public static function _MF(_arg1:String):String {
        var _local2:_5R;
        var _local3:_dS;
        if (_arg1.charAt(0) == "{") {
            _local2 = _5R.fromJSON(_arg1);
            _local3 = _8w._1Sz().getInstance(_dS);
            _local2._qO(_local3);
            return (_local2.getString());
        }
        ;
        return (_arg1);
    }

    public static function _1bj(_arg1:String, _arg2:Object = null, _arg3:String = "", _arg4:String = ""):String {
        var _local6:String;
        var _local7:String;
        var _local8:String;
        var _local5:String = _1JD(_arg1);
        for (_local6 in _arg2) {
            _local7 = _arg2[_local6];
            _local8 = (("{" + _local6) + "}");
            while (_local5.indexOf(_local8) != -1) {
                _local5 = _local5.replace(_local8, _local7);
            }
            ;
        }
        ;
        _local5 = _local5.replace(/\\n/g, "\n");
        return (((_arg3 + _local5) + _arg4));
    }

    public static function _1VK(_arg1:String, _arg2:Object = null):String {
        var _local3:_5R = new (_5R)();
        _local3.setParams(_arg1, _arg2);
        var _local4:_dS = _8w._1Sz().getInstance(_dS);
        _local3._qO(_local4);
        return (_local3.getString());
    }

    private static function _1JD(_arg1:String):String {
        var _local2:Boolean = ((((!((_arg1 == null))) && ((_arg1.charAt(0) == "{")))) && ((_arg1.charAt((_arg1.length - 1)) == "}")));
        return (((_local2) ? _arg1.substr(1, (_arg1.length - 2)) : _arg1));
    }
    public var key:String;
    public var tokens:Object;
    private var _1WG:String = "";
    private var _1nh:String = "";
    private var map:_dS;

    public function _0Zi():String {
        return (JSON.stringify({
            key: this.key,
            tokens: this.tokens
        }));
    }

    public function setParams(_arg1:String, _arg2:Object = null):_5R {
        this.key = ((_arg1) || (""));
        this.tokens = _arg2;
        return (this);
    }

    public function setPrefix(_arg1:String):_5R {
        this._1nh = _arg1;
        return (this);
    }

    public function setPostfix(_arg1:String):_5R {
        this._1WG = _arg1;
        return (this);
    }

    public function _qO(_arg1:_dS):void {
        this.map = _arg1;
    }

    public function getString():String {
        var _local3:String;
        var _local4:String;
        var _local5:String;
        var _local1:String = _1JD(this.key);
        var _local2:String = ((this.map.getValue(_local1)) || (""));
        for (_local3 in this.tokens) {
            _local4 = this.tokens[_local3];
            if ((((_local4.charAt(0) == "{")) && ((_local4.charAt((_local4.length - 1)) == "}")))) {
                _local4 = this.map.getValue(_local4.substr(1, (_local4.length - 2)));
            }
            ;
            _local5 = (("{" + _local3) + "}");
            while (_local2.indexOf(_local5) != -1) {
                _local2 = _local2.replace(_local5, _local4);
            }
            ;
        }
        ;
        _local2 = _local2.replace(/\\n/g, "\n");
        return (((this._1nh + _local2) + this._1WG));
    }


}
}//package _0Mr

