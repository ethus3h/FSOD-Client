// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._12W

package com.company.assembleegameclient.ui {
import _1i0._1PV;
import _1i0._GV;

import _1s5.*;

import _Z0.PlayerToolTip;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;
import com.company.util.MoreColorUtil;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.ColorTransform;

public class _12W extends _wA implements _1q5 {

    public const _8c:_1Ud = new _1Ud();

    public function _12W(_arg1:uint, _arg2:Boolean, _arg3:GameObject) {
        super(_arg1, _arg2, _arg3);
        var _local4:Player = (_arg3 as Player);
        if (_local4) {
            this._1ZC = _local4.starred_;
        }
        ;
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var enabled:Boolean = true;
    private var _1ZC:Boolean = false;

    override public function draw(_arg1:GameObject, _arg2:ColorTransform = null):void {
        var _local3:Player = (_arg1 as Player);
        if (((_local3) && (!((this._1ZC == _local3.starred_))))) {
            transform.colorTransform = ((_arg2) || (MoreColorUtil.identity));
            this._1ZC = _local3.starred_;
        }
        ;
        super.draw(_arg1, _arg2);
    }

    public function setEnabled(_arg1:Boolean):void {
        if (((!((this.enabled == _arg1))) && (!((Player(go) == null))))) {
            this.enabled = _arg1;
            this._8c.tooltip = ((this.enabled) ? new PlayerToolTip(Player(go)) : null);
            if (!this.enabled) {
                this._8c._1ml().dispatch(this._8c.tooltip);
            }
            ;
        }
        ;
    }

    public function _1Tg(_arg1:_1PV):void {
        this._8c._1Tg(_arg1);
    }

    public function _1ml():_1PV {
        return (this._8c._1ml());
    }

    public function _Md(_arg1:_GV):void {
        this._8c._Md(_arg1);
    }

    public function _0ec():_GV {
        return (this._8c._0ec());
    }

    private function onAddedToStage(_arg1:Event):void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        this._8c._0qm(this);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    private function onMouseOver(_arg1:MouseEvent):void {
        this._8c.tooltip = ((this.enabled) ? new PlayerToolTip(Player(go)) : null);
    }


}
}//package com.company.assembleegameclient.ui

