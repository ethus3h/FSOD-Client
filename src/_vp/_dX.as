// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_vp._dX

package _vp {
import _0ld._1Zg;

import _1Fr._qf;

import _1L3._IG;
import _1L3._xy;

import __Nj._M4;

import _r7.Command;

import com.company.assembleegameclient.objects.ObjectLibrary;

public class _dX extends Command {

    [Inject]
    public var type:int;
    [Inject]
    public var _M9:_IG;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _nU:_M4;


    override public function execute():void {
        this._M9._1VO(this._1NJ());
        this._nU.dispatch(new _1Zg(this._1b._1P));
    }

    private function _1NJ():int {
        var _local1:String = _xy._1rX(this.type).value;
        return (ObjectLibrary._22(_local1).@type);
    }


}
}//package _vp

