// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Tn._1JO

package _0Tn {
import _1Sm._1xK;
import _1Sm._sy;

public class _1JO extends _sy {

    public function _1JO(..._args) {
        this.data = [];
        super(_args);
    }
    private var data:Array;
    private var log:Boolean = true;

    override public function dispatch(..._args):void {
        if (this.log) {
            this.data.push(_args);
        }
        ;
        super.dispatch.apply(this, _args);
    }

    override public function add(_arg1:Function):_1xK {
        var _local2:_1xK = super.add(_arg1);
        while (this.data.length > 0) {
            _arg1.apply(this, this.data.shift());
        }
        ;
        this.log = false;
        return (_local2);
    }

    override public function addOnce(_arg1:Function):_1xK {
        var _local2:_1xK;
        if (this.data.length > 0) {
            _arg1.apply(this, this.data.shift());
        } else {
            _local2 = super.addOnce(_arg1);
            this.log = false;
        }
        ;
        while (this.data.length > 0) {
            this.data.shift();
        }
        ;
        return (_local2);
    }

    public function _1wQ():int {
        return (this.data.length);
    }


}
}//package _0Tn

