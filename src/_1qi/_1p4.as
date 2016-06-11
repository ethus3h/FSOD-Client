// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1qi._1p4

package _1qi {
import _0yE._J6;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;

public class _1p4 extends _1K8 {

    private const _1t0:uint = 8;

    public function _1p4(_arg1:GameObject, _arg2:Player) {
        var _local4:_J6;
        super(_arg1, _arg2, 0);
        this._0mZ = new Vector.<_J6>(this._1t0);
        var _local3:int;
        while (_local3 < this._1t0) {
            _local4 = new _J6((_local3 + _1sN), this, _1Ug);
            _1AS(_local4, 2, _local3);
            this._0mZ[_local3] = _local4;
            _local3++;
        }
        ;
    }
    private var _0mZ:Vector.<_J6>;

    override public function setItems(_arg1:Vector.<int>, _arg2:int = 0):void {
        var _local3:Boolean;
        var _local4:int;
        var _local5:int;
        if (_arg1) {
            _local3 = false;
            _local4 = _arg1.length;
            _local5 = 0;
            while (_local5 < this._1t0) {
                if ((_local5 + _1sN) < _local4) {
                    if (this._0mZ[_local5].setItem(_arg1[(_local5 + _1sN)])) {
                        _local3 = true;
                    }
                    ;
                } else {
                    if (this._0mZ[_local5].setItem(-1)) {
                        _local3 = true;
                    }
                    ;
                }
                ;
                _local5++;
            }
            ;
            if (_local3) {
                _0Mp();
            }
            ;
        }
        ;
    }


}
}//package _1qi

