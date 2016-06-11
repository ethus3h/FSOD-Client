// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Em._1zd

package _1Em {
import _1CB._1il;
import _1CB._mz;

import com.company.assembleegameclient.map._18q;

import flash.display.Sprite;

public class _1zd extends Sprite {

    private const _Cn:Object = {};
    private const _151:Object = {};

    public function _1zd() {
        mouseEnabled = false;
        mouseChildren = false;
    }

    public function addSpeechBalloon(_arg1:_0Op):void {
        var _local2:int = _arg1.go_.objectId_;
        var _local3:_0Op = this._Cn[_local2];
        if (((_local3) && (contains(_local3)))) {
            removeChild(_local3);
        }
        ;
        this._Cn[_local2] = _arg1;
        addChild(_arg1);
    }

    public function addStatusText(_arg1:_i9):void {
        addChild(_arg1);
    }

    public function addQueuedText(_arg1:_mz):void {
        var _local2:int = _arg1.go_.objectId_;
        var _local3:_1il = (this._151[_local2] = ((this._151[_local2]) || (this._10U())));
        _local3.append(_arg1);
    }

    public function draw(_arg1:_18q, _arg2:int):void {
        var _local4:_wx;
        var _local3:int;
        while (_local3 < numChildren) {
            _local4 = (getChildAt(_local3) as _wx);
            if (((!(_local4)) || (_local4.draw(_arg1, _arg2)))) {
                _local3++;
            } else {
                _local4.dispose();
            }
            ;
        }
        ;
    }

    private function _10U():_1il {
        var _local1:_1il = new _1il();
        _local1.target = this;
        return (_local1);
    }


}
}//package _1Em

