// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Kr._1xb

package _1Kr {
import _058.Background;

import _0YW._0s2;

import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map._18q;
import com.company.util.IntPoint;

import flash.display.Sprite;
import flash.events.Event;
import flash.geom.Rectangle;
import flash.utils.ByteArray;
import flash.utils.getTimer;

public class _1xb extends Sprite {

    private static const BORDER:int = 10;
    private static const _1Ij:Rectangle = new Rectangle(-400, -300, 800, 600);
    private static const _7k:Number = ((7 * Math.PI) / 4);//5.49778714378214
    private static const _jR:Number = (1 / 1000);//0.001
    private static const _4A:Class = _tD;

    private static var _1k:Map;
    private static var _Zl:IntPoint;
    private static var _RJ:Number;
    private static var _18V:Number;
    private static var camera:_18q;

    public function _1xb() {
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var _sj:int;
    private var time:Number;

    private function _SY():Map {
        var _local1:ByteArray = new _4A();
        var _local2:String = _local1.readUTFBytes(_local1.length);
        _Zl = _0s2._Ie(_local2);
        _RJ = BORDER;
        _18V = (BORDER + int(((_Zl.y_ - (2 * BORDER)) * Math.random())));
        camera = new _18q();
        var _local3:Map = new Map(null);
        _local3.setProps((_Zl.x_ + (2 * BORDER)), _Zl.y_, "Background Map", Background._1iK, false, false);
        _local3.initialize();
        _0s2._1r3(_local2, _local3, 0, 0);
        _0s2._1r3(_local2, _local3, _Zl.x_, 0);
        return (_local3);
    }

    private function onAddedToStage(_arg1:Event):void {
        addChildAt((_1k = ((_1k) || (this._SY()))), 0);
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        this._sj = getTimer();
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onEnterFrame(_arg1:Event):void {
        this.time = getTimer();
        _RJ = (_RJ + ((this.time - this._sj) * _jR));
        if (_RJ > (_Zl.x_ + BORDER)) {
            _RJ = (_RJ - _Zl.x_);
        }
        ;
        camera.configure(_RJ, _18V, 12, _7k, _1Ij);
        _1k.draw(camera, this.time);
        this._sj = this.time;
    }


}
}//package _1Kr

