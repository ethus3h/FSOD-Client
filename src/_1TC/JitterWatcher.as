// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TC.JitterWatcher

package _1TC {
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import flash.display.Sprite;
import flash.events.Event;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.utils.getTimer;

public class JitterWatcher extends Sprite {

    private static const _13X:_5R = new _5R();

    public function JitterWatcher() {
        this._eA = new Vector.<int>();
        super();
        this.text_ = new _06T().setSize(14).setColor(0xFFFFFF);
        this.text_.setAutoSize(TextFieldAutoSize.LEFT);
        this.text_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.text_);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var text_:_06T = null;
    private var _1IJ:int = -1;
    private var _eA:Vector.<int>;
    private var _1wI:int;

    public function record():void {
        var _local3:int;
        var _local1:int = getTimer();
        if (this._1IJ == -1) {
            this._1IJ = _local1;
            return;
        }
        ;
        var _local2:int = (_local1 - this._1IJ);
        this._eA.push(_local2);
        this._1wI = (this._1wI + _local2);
        if (this._eA.length > 50) {
            _local3 = this._eA.shift();
            this._1wI = (this._1wI - _local3);
        }
        ;
        this._1IJ = _local1;
    }

    private function jitter():Number {
        var _local4:int;
        var _local1:int = this._eA.length;
        if (_local1 == 0) {
            return (0);
        }
        ;
        var _local2:Number = (this._1wI / _local1);
        var _local3:Number = 0;
        for each (_local4 in this._eA) {
            _local3 = (_local3 + ((_local4 - _local2) * (_local4 - _local2)));
        }
        ;
        return (Math.sqrt((_local3 / _local1)));
    }

    private function onAddedToStage(_arg1:Event):void {
        stage.addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onEnterFrame(_arg1:Event):void {
        this.text_.setStringBuilder(_13X.setParams(_TG._1jp, {jitter: this.jitter()}));
    }


}
}//package _1TC

