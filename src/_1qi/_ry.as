// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1qi._ry

package _1qi {
import _0yE._1F7;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;

public class _ry extends _1K8 {

    private const _1t0:uint = 8;

    public function _ry(_arg1:GameObject, _arg2:Player, _arg3:int = 0, _arg4:Boolean = false) {
        var _local6:_1F7;
        super(_arg1, _arg2, _arg3);
        this._0mZ = new Vector.<_1F7>(this._1t0);
        this._CE = _arg4;
        var _local5:int;
        while (_local5 < this._1t0) {
            _local6 = new _1F7((_local5 + _1sN), this, _1Ug);
            _local6._1pI((_local5 + 1));
            _1AS(_local6, 2, _local5);
            this._0mZ[_local5] = _local6;
            _local5++;
        }
        ;
    }
    private var _0mZ:Vector.<_1F7>;
    private var _CE:Boolean;

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

