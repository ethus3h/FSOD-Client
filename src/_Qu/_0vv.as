// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Qu._0vv

package _Qu {
import _0cA._0bz;

import _1cr.*;

public class _0vv implements _SI {

    private var _sk:_0bz;
    private var _0f1:Class;
    private var handler:Object;


    public function setType(_arg1:Class):_0vv {
        this._0f1 = _arg1;
        return (this);
    }

    public function setInjector(_arg1:_0bz):_0vv {
        this._sk = _arg1;
        return (this);
    }

    public function getMethod():Function {
        return (((this.handler) ? this.handler.execute : this._nG()));
    }

    private function _nG():Function {
        if (!this._0f1) {
            return (null);
        }
        ;
        this.handler = this._sk.getInstance(this._0f1);
        return (this.handler.execute);
    }


}
}//package _Qu

