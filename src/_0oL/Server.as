// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0oL.Server

package _0oL {
public class Server {

    public var name:String;
    public var address:String;
    public var port:int;
    public var _0Gg:_1uM;
    public var _1Dw:Number;
    public var _1Yx:Boolean;


    public function setName(_arg1:String):Server {
        this.name = _arg1;
        return (this);
    }

    public function setAddress(_arg1:String):Server {
        this.address = _arg1;
        return (this);
    }

    public function setPort(_arg1:int):Server {
        this.port = _arg1;
        return (this);
    }

    public function setLatLong(_arg1:Number, _arg2:Number):Server {
        this._0Gg = new _1uM(_arg1, _arg2);
        return (this);
    }

    public function setUsage(_arg1:Number):Server {
        this._1Dw = _arg1;
        return (this);
    }

    public function setIsAdminOnly(_arg1:Boolean):Server {
        this._1Yx = _arg1;
        return (this);
    }

    public function priority():int {
        if (this._1Yx) {
            return (2);
        }
        ;
        if (this._1kX()) {
            return (1);
        }
        ;
        return (0);
    }

    public function _1kX():Boolean {
        return ((this._1Dw >= 0.66));
    }

    public function _1or():Boolean {
        return ((this._1Dw >= 1));
    }

    public function toString():String {
        return ((((((((((((("[" + this.name) + ": ") + this.address) + ":") + this.port) + ":") + this._0Gg) + ":") + this._1Dw) + ":") + this._1Yx) + "]"));
    }


}
}//package _0oL

