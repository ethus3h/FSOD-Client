// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1qi._1cF

package _1qi {
import _0yE._1yW;

import _1iA._1BJ;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;
import com.company.util._0xu;
import com.company.util._1xs;

public class _1cF extends _1K8 {

    public static const _1t0:uint = 4;

    public function _1cF(_arg1:GameObject, _arg2:Vector.<int>, _arg3:Player, _arg4:int = 0) {
        var _local6:_1yW;
        super(_arg1, _arg3, _arg4);
        this._0mZ = new Vector.<_1yW>(_1t0);
        var _local5:int;
        while (_local5 < _1t0) {
            _local6 = new _1yW(_local5, this, _1Ug);
            _1AS(_local6, 1, _local5);
            _local6.setType(_arg2[_local5]);
            this._0mZ[_local5] = _local6;
            _local5++;
        }
        ;
    }
    private var _0mZ:Vector.<_1yW>;

    override public function setItems(_arg1:Vector.<int>, _arg2:int = 0):void {
        var _local3:int;
        var _local4:int;
        if (_arg1) {
            _local3 = _arg1.length;
            _local4 = 0;
            while (_local4 < this._0mZ.length) {
                if ((_local4 + _arg2) < _local3) {
                    this._0mZ[_local4].setItem(_arg1[(_local4 + _arg2)]);
                } else {
                    this._0mZ[_local4].setItem(-1);
                }
                ;
                this._0mZ[_local4].updateDim(curPlayer);
                _local4++;
            }
            ;
        }
        ;
    }

    public function _0xF():_1xs {
        return (new _0xu(_1BJ.toArray(this._0mZ)));
    }


}
}//package _1qi

