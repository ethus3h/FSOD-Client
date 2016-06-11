// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mr.AppendingLineBuilder

package _0Mr {
import _175._dS;

public class AppendingLineBuilder implements _1vN {

    public function AppendingLineBuilder() {
        this.data = new Vector.<LineData>();
        super();
    }
    private var data:Vector.<LineData>;
    private var _09A:String = "\n";
    private var provider:_dS;

    public function pushParams(_arg1:String, _arg2:Object = null, _arg3:String = "", _arg4:String = ""):AppendingLineBuilder {
        this.data.push(new LineData().setKey(_arg1).setTokens(_arg2).setOpeningTags(_arg3).setClosingTags(_arg4));
        return (this);
    }

    public function setDelimiter(_arg1:String):AppendingLineBuilder {
        this._09A = _arg1;
        return (this);
    }

    public function _qO(_arg1:_dS):void {
        this.provider = _arg1;
    }

    public function getString():String {
        var _local2:LineData;
        var _local1:Vector.<String> = new Vector.<String>();
        for each (_local2 in this.data) {
            _local1.push(_local2.getString(this.provider));
        }
        ;
        return (_local1.join(this._09A));
    }

    public function _Uq():Boolean {
        return (!((this.data.length == 0)));
    }

    public function clear():void {
        this.data = new Vector.<LineData>();
    }


}
}//package _0Mr

import _0Mr._1vN;

import _175._dS;

import _6u._TG;

class LineData {

    public var key:String;
    public var tokens:Object;
    public var openingHTMLTags:String = "";
    public var closingHTMLTags:String = "";


    public function setKey(_arg1:String):LineData {
        this.key = _arg1;
        return (this);
    }

    public function setTokens(_arg1:Object):LineData {
        this.tokens = _arg1;
        return (this);
    }

    public function setOpeningTags(_arg1:String):LineData {
        this.openingHTMLTags = _arg1;
        return (this);
    }

    public function setClosingTags(_arg1:String):LineData {
        this.closingHTMLTags = _arg1;
        return (this);
    }

    public function getString(_arg1:_dS):String {
        var _local3:String;
        var _local4:String;
        var _local5:_1vN;
        var _local6:String;
        var _local2:String = this.openingHTMLTags;
        _local3 = _arg1.getValue(_TG._1JD(this.key));
        if (_local3 == null) {
            _local3 = this.key;
        }
        ;
        _local2 = _local2.concat(_local3);
        for (_local4 in this.tokens) {
            if ((this.tokens[_local4] is _1vN)) {
                _local5 = _1vN(this.tokens[_local4]);
                _local5._qO(_arg1);
                _local2 = _local2.replace((("{" + _local4) + "}"), _local5.getString());
            } else {
                _local6 = this.tokens[_local4];
                if ((((((_local6.length > 0)) && ((_local6.charAt(0) == "{")))) && ((_local6.charAt((_local6.length - 1)) == "}")))) {
                    _local6 = _arg1.getValue(_local6.substr(1, (_local6.length - 2)));
                }
                ;
                _local2 = _local2.replace((("{" + _local4) + "}"), _local6);
            }
            ;
        }
        ;
        _local2 = _local2.replace(/\\n/g, "\n");
        _local2 = _local2.concat(this.closingHTMLTags);
        return (_local2);
    }


}

