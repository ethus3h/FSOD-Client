// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._mz

package _1CB {
import _0Mr._1vN;

import _1Em._i9;

import com.company.assembleegameclient.objects.GameObject;

public class _mz extends _i9 {

    public function _mz(_arg1:GameObject, _arg2:_1vN, _arg3:uint, _arg4:int, _arg5:int = 0) {
        this._cE = _arg2;
        super(_arg1, _arg3, _arg4, _arg5);
        setStringBuilder(_arg2);
    }
    public var list:_1il;
    public var next:_mz;
    public var _cE:_1vN;

    override public function dispose():void {
        this.list.shift();
    }


}
}//package _1CB

