// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Sm.Slot

package _1Sm {
public class Slot implements _1xK {

    public function Slot(_arg1:Function, _arg2:_0Jk, _arg3:Boolean = false, _arg4:int = 0) {
        this._0BB = _arg1;
        this._once = _arg3;
        this._signal = _arg2;
        this._02k = _arg4;
        this._1xC(_arg1);
    }
    protected var _signal:_0Jk;
    protected var _1vh:Boolean = true;
    protected var _0BB:Function;
    protected var _02k:int = 0;
    protected var _0IZ:Array;

    protected var _once:Boolean = false;

    public function get once():Boolean {
        return (this._once);
    }

    public function get listener():Function {
        return (this._0BB);
    }

    public function set listener(_arg1:Function):void {
        if (null == _arg1) {
            throw (new ArgumentError("Given listener is null.\nDid you want to set enabled to false instead?"));
        }
        ;
        this._1xC(_arg1);
        this._0BB = _arg1;
    }

    public function get priority():int {
        return (this._02k);
    }

    public function get enabled():Boolean {
        return (this._1vh);
    }

    public function set enabled(_arg1:Boolean):void {
        this._1vh = _arg1;
    }

    public function get params():Array {
        return (this._0IZ);
    }

    public function set params(_arg1:Array):void {
        this._0IZ = _arg1;
    }

    public function execute0():void {
        if (!this._1vh) {
            return;
        }
        ;
        if (this._once) {
            this.remove();
        }
        ;
        if (((this._0IZ) && (this._0IZ.length))) {
            this._0BB.apply(null, this._0IZ);
            return;
        }
        ;
        this._0BB();
    }

    public function execute1(_arg1:Object):void {
        if (!this._1vh) {
            return;
        }
        ;
        if (this._once) {
            this.remove();
        }
        ;
        if (((this._0IZ) && (this._0IZ.length))) {
            this._0BB.apply(null, [_arg1].concat(this._0IZ));
            return;
        }
        ;
        this._0BB(_arg1);
    }

    public function execute(_arg1:Array):void {
        if (!this._1vh) {
            return;
        }
        ;
        if (this._once) {
            this.remove();
        }
        ;
        if (((this._0IZ) && (this._0IZ.length))) {
            _arg1 = _arg1.concat(this._0IZ);
        }
        ;
        var _local2:int = _arg1.length;
        if (_local2 == 0) {
            this._0BB();
        } else {
            if (_local2 == 1) {
                this._0BB(_arg1[0]);
            } else {
                if (_local2 == 2) {
                    this._0BB(_arg1[0], _arg1[1]);
                } else {
                    if (_local2 == 3) {
                        this._0BB(_arg1[0], _arg1[1], _arg1[2]);
                    } else {
                        this._0BB.apply(null, _arg1);
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }

    public function toString():String {
        return ((((((((("[Slot listener: " + this._0BB) + ", once: ") + this._once) + ", priority: ") + this._02k) + ", enabled: ") + this._1vh) + "]"));
    }

    public function remove():void {
        this._signal.remove(this._0BB);
    }

    protected function _1xC(_arg1:Function):void {
        if (null == _arg1) {
            throw (new ArgumentError("Given listener is null."));
        }
        ;
        if (null == this._signal) {
            throw (new Error("Internal signal reference has not been set yet."));
        }
        ;
    }


}
}//package _1Sm

