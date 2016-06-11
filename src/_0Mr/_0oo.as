// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mr._0oo

package _0Mr {
import _175._dS;

public class _0oo implements _1vN {

    private var _164:String;
    private var tokens:Object;
    private var _1WG:String = "";
    private var _1nh:String = "";
    private var provider:_dS;


    public function _yo(_arg1:String, _arg2:Object = null):_0oo {
        this._164 = _arg1;
        this.tokens = _arg2;
        return (this);
    }

    public function setPrefix(_arg1:String):_0oo {
        this._1nh = _arg1;
        return (this);
    }

    public function setPostfix(_arg1:String):_0oo {
        this._1WG = _arg1;
        return (this);
    }

    public function _qO(_arg1:_dS):void {
        this.provider = _arg1;
    }

    public function getString():String {
        var _local2:String;
        var _local3:String;
        var _local1:String = this._164;
        for (_local2 in this.tokens) {
            _local3 = this.tokens[_local2];
            if ((((_local3.charAt(0) == "{")) && ((_local3.charAt((_local3.length - 1)) == "}")))) {
                _local3 = this.provider.getValue(_local3.substr(1, (_local3.length - 2)));
            }
            ;
            _local1 = _local1.replace((("{" + _local2) + "}"), _local3);
        }
        ;
        _local1 = _local1.replace(/\\n/g, "\n");
        return (((this._1nh + _local1) + this._1WG));
    }


}
}//package _0Mr

