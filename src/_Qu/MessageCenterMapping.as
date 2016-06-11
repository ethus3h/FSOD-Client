// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Qu.MessageCenterMapping

package _Qu {
import _0cA._0bz;

import _1cr._SI;
import _1cr._cK;

public class MessageCenterMapping implements _cK {

    private const _1RT:NullHandlerProxy = new NullHandlerProxy();

    public function MessageCenterMapping() {
        this.handler = this._1RT;
        super();
    }
    private var id:int;
    private var _sk:_0bz;
    private var _1Ky:Class;
    private var _1FM:int = 1;
    private var handler:_SI;

    public function setID(_arg1:int):_cK {
        this.id = _arg1;
        return (this);
    }

    public function setInjector(_arg1:_0bz):MessageCenterMapping {
        this._sk = _arg1;
        return (this);
    }

    public function _0VH(_arg1:Class):_cK {
        this._1Ky = _arg1;
        return (this);
    }

    public function _do(_arg1:Class):_cK {
        this.handler = new _0vv().setType(_arg1).setInjector(this._sk);
        return (this);
    }

    public function _1fc(_arg1:Function):_cK {
        this.handler = new _0jv().setMethod(_arg1);
        return (this);
    }

    public function _ax(_arg1:int):_cK {
        this._1FM = _arg1;
        return (this);
    }

    public function _1gw():_1ff {
        var _local1:_1ff = new _1ff(this.id, this._1Ky, this.handler.getMethod());
        _local1._08G(this._1FM);
        return (_local1);
    }


}
}//package _Qu

import _1cr.*;

class NullHandlerProxy implements _SI {


    public function getMethod():Function {
        return (null);
    }


}

