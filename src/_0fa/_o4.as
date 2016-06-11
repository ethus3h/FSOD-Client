// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0fa._o4

package _0fa {
import flash.errors.IllegalOperationError;

public class _o4 implements _0wR, _1j {

    protected const _2w:Vector.<Class> = new Vector.<Class>();
    protected const _Db:Vector.<Class> = new Vector.<Class>();
    protected const _0ST:Vector.<Class> = new Vector.<Class>();

    protected var _1KL:_z4;


    public function allOf(..._args):_o4 {
        this._1ol(_args, this._2w);
        return (this);
    }

    public function anyOf(..._args):_o4 {
        this._1ol(_args, this._Db);
        return (this);
    }

    public function noneOf(..._args):_o4 {
        this._1ol(_args, this._0ST);
        return (this);
    }

    public function _1y4():_z4 {
        return ((this._1KL = ((this._1KL) || (this._0M8()))));
    }

    public function _G0():_1j {
        this._1y4();
        return (this);
    }

    public function clone():_o4 {
        return (new _o4().allOf(this._2w).anyOf(this._Db).noneOf(this._0ST));
    }

    protected function _0M8():_z4 {
        if ((((((this._2w.length == 0)) && ((this._Db.length == 0)))) && ((this._0ST.length == 0)))) {
            throw (new _CN(_CN._ia));
        }
        ;
        return (new _04O(this._2w, this._Db, this._0ST));
    }

    protected function _1ol(_arg1:Array, _arg2:Vector.<Class>):void {
        ((this._1KL) && (this._0hB()));
        this._0ZE(_arg1, _arg2);
    }

    protected function _0hB():void {
        throw (new IllegalOperationError("This TypeMatcher has been sealed and can no longer be configured"));
    }

    protected function _0ZE(_arg1:Array, _arg2:Vector.<Class>):void {
        var _local3:Class;
        if ((((_arg1.length == 1)) && ((((_arg1[0] is Array)) || ((_arg1[0] is Vector.<Class>)))))) {
            for each (_local3 in _arg1[0]) {
                _arg2.push(_local3);
            }
            ;
        } else {
            for each (_local3 in _arg1) {
                _arg2.push(_local3);
            }
            ;
        }
        ;
    }


}
}//package _0fa

