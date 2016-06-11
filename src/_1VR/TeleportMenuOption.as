// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1VR.TeleportMenuOption

package _1VR {
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import com.company.assembleegameclient.objects.Player;
import com.company.util.AssetLibrary;

import flash.display.Shape;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.ColorTransform;

public class TeleportMenuOption extends _W6 {

    private static const _0vm:ColorTransform = new ColorTransform((84 / 0xFF), (84 / 0xFF), (84 / 0xFF));

    public function TeleportMenuOption(_arg1:Player) {
        this._1Ou = new Shape();
        super(AssetLibrary._Rb("lofiInterface2", 3), 0xFFFFFF, _TG._0sm);
        this.player_ = _arg1;
        this._1qk = new _06T().setSize(18).setColor(0xFFFFFF);
        this._1qk.setBold(true);
        this._1qk.setStringBuilder(new _5R().setParams(_TG._0sm));
        this._1qk.x = (this._1Ou.x = text_.x);
        this._1qk.y = (this._1Ou.y = text_.y);
        this._1qk.textChanged.add(this.onTextChanged);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var player_:Player;
    private var _cL:Boolean = false;
    private var _1qk:_06T;
    private var _1Rx:int;
    private var _1Ou:Shape;

    private function onTextChanged():void {
        this._1Rx = this._1qk.textField.width;
        this._1Ou.graphics.beginFill(0xFF00FF);
        this._1Ou.graphics.drawRect(0, 0, this._1qk.textField.width, this._1qk.textField.height);
    }

    override protected function onMouseOver(_arg1:MouseEvent):void {
        this._cL = true;
    }

    override protected function onMouseOut(_arg1:MouseEvent):void {
        this._cL = false;
    }

    private function onAddedToStage(_arg1:Event):void {
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onEnterFrame(_arg1:Event):void {
        var _local3:Number;
        var _local2:int = this.player_._U();
        if (_local2 > 0) {
            if (!contains(this._1qk)) {
                addChild(this._1qk);
                addChild(this._1Ou);
                this._1qk.mask = this._1Ou;
            }
            ;
            _local3 = (this._1Rx * (1 - (_local2 / Player._0jz)));
            this._1Ou.width = _local3;
            _1Pk(_0vm);
        } else {
            if (contains(this._1qk)) {
                removeChild(this._1qk);
            }
            ;
            if (this._cL) {
                _1Pk(_0kl);
            } else {
                _1Pk(null);
            }
            ;
        }
        ;
    }


}
}//package _1VR

