// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0oZ.Console

package _0oZ {
import _1Sm._sy;

import _pz._1Oo;

public final class Console {

    public function Console() {
        this.hash = new _0xn();
        this.history = new _1dz();
    }
    private var hash:_0xn;
    private var history:_1dz;

    public function register(_arg1:_1Oo, _arg2:_sy):void {
        this.hash.register(_arg1.name, _arg1.description, _arg2);
    }

    public function _01L(_arg1:String):Boolean {
        return (this.hash._0Xs(_arg1));
    }

    public function execute(_arg1:String):void {
        this.history.add(_arg1);
        this.hash.execute(_arg1);
    }

    public function _NM():Vector.<String> {
        return (this.hash._NM());
    }

    public function _EG():String {
        return (this.history._0TG());
    }

    public function _0Zf():String {
        return (this.history._04l());
    }


}
}//package _0oZ

