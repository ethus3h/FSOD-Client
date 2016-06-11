// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4._0Yy

package _1f4 {
import _1VR.PlayerMenu;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects._1CH;
import com.company.assembleegameclient.ui._12W;
import com.company.assembleegameclient.ui._wA;
import com.company.util.MoreColorUtil;

import flash.display.DisplayObjectContainer;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.ColorTransform;
import flash.utils.getTimer;

public class _0Yy extends Panel {

    public function _0Yy(_arg1:GameSprite) {
        this._1Eh = new Vector.<_12W>(_1CH._17r, true);
        super(_arg1);
        this._1Eh[0] = this._LC(0, 0);
        this._1Eh[1] = this._LC(100, 0);
        this._1Eh[2] = this._LC(0, 32);
        this._1Eh[3] = this._LC(100, 32);
        this._1Eh[4] = this._LC(0, 64);
        this._1Eh[5] = this._LC(100, 64);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var _uv:DisplayObjectContainer;
    public var _1Eh:Vector.<_12W>;
    public var _cL:Boolean;
    public var menu:PlayerMenu;

    override public function draw():void {
        var _local4:_wA;
        var _local5:Player;
        var _local6:ColorTransform;
        var _local7:Number;
        var _local8:int;
        var _local1:_1CH = gs_.map.party_;
        if (_local1 == null) {
            for each (_local4 in this._1Eh) {
                _local4.clear();
            }
            ;
            return;
        }
        ;
        var _local2:int;
        var _local3:int;
        while (_local3 < _1CH._17r) {
            if (((this._cL) || (((!((this.menu == null))) && (!((this.menu.parent == null))))))) {
                _local5 = (this._1Eh[_local3].go as Player);
            } else {
                _local5 = _local1._12q[_local3];
            }
            ;
            if (((!((_local5 == null))) && ((_local5.map_ == null)))) {
                _local5 = null;
            }
            ;
            _local6 = null;
            if (_local5 != null) {
                if (_local5._1wA < (_local5._022 * 0.2)) {
                    if (_local2 == 0) {
                        _local2 = getTimer();
                    }
                    ;
                    _local7 = (int((Math.abs(Math.sin((_local2 / 200))) * 10)) / 10);
                    _local8 = 128;
                    _local6 = new ColorTransform(1, 1, 1, 1, (_local7 * _local8), (-(_local7) * _local8), (-(_local7) * _local8));
                }
                ;
                if (!_local5.starred_) {
                    if (_local6 != null) {
                        _local6.concat(MoreColorUtil._KM);
                    } else {
                        _local6 = MoreColorUtil._KM;
                    }
                    ;
                }
                ;
            }
            ;
            this._1Eh[_local3].draw(_local5, _local6);
            _local3++;
        }
        ;
    }

    private function _LC(_arg1:int, _arg2:int):_12W {
        var _local3:_12W = new _12W(0xFFFFFF, false, null);
        addChild(_local3);
        _local3.x = _arg1;
        _local3.y = _arg2;
        return (_local3);
    }

    private function _i2():void {
        if (this.menu != null) {
            this.menu.remove();
            this.menu = null;
        }
        ;
    }

    private function onAddedToStage(_arg1:Event):void {
        var _local2:_12W;
        for each (_local2 in this._1Eh) {
            _local2.addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            _local2.addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            _local2.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        }
        ;
    }

    private function onRemovedFromStage(_arg1:Event):void {
        var _local2:_12W;
        this._i2();
        for each (_local2 in this._1Eh) {
            _local2.removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
            _local2.removeEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
            _local2.removeEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        }
        ;
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        if (((!((this.menu == null))) && (!((this.menu.parent == null))))) {
            return;
        }
        ;
        var _local2:_12W = (_arg1.currentTarget as _12W);
        var _local3:Player = (_local2.go as Player);
        if ((((_local3 == null)) || ((_local3.texture_ == null)))) {
            return;
        }
        ;
        this._cL = true;
    }

    private function onMouseOut(_arg1:MouseEvent):void {
        this._cL = false;
    }

    private function onMouseDown(_arg1:MouseEvent):void {
        this._i2();
        var _local2:_12W = (_arg1.currentTarget as _12W);
        _local2.setEnabled(false);
        this.menu = new PlayerMenu();
        this.menu.init(gs_, (_local2.go as Player));
        this._uv.addChild(this.menu);
        this.menu.addEventListener(Event.REMOVED_FROM_STAGE, this._0Go);
    }

    private function _0Go(_arg1:Event):void {
        var _local2:_wA;
        var _local3:_12W;
        for each (_local2 in this._1Eh) {
            _local3 = (_local2 as _12W);
            if (_local3) {
                _local3.setEnabled(true);
            }
            ;
        }
        ;
        _arg1.currentTarget.removeEventListener(Event.REMOVED_FROM_STAGE, this._0Go);
    }


}
}//package _1f4

