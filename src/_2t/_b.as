// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_2-t._b

package _2t {
import _0gF._094;

import _0y9._06T;

import _6u._TG;

import _U1._1O0;

import _Vb.Dialog;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.objects.Player;
import com.company.rotmg.graphics.ScreenGraphic;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.text.TextFieldAutoSize;

public class _b extends Sprite {

    public function _b(_arg1:_0p2) {
        this.gs_ = _arg1;
        graphics.clear();
        graphics.beginFill(0x2B2B2B, 0.8);
        graphics.drawRect(0, 0, 800, 600);
        graphics.endFill();
        addChild((this.container = new Sprite()));
        this._iW();
        addChild(new ScreenGraphic());
        this._0vM = new _1O0(_TG._0BY, 36, false);
        this._0vM.setAutoSize(TextFieldAutoSize.CENTER);
        this._0vM.setVerticalAlign(_06T.MIDDLE);
        this._0vM.addEventListener(MouseEvent.CLICK, this._0YN);
        addChild(this._0vM);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var gs_:_0p2;
    private var container:Sprite;
    private var _p4:GuildPlayerList;
    private var _0vM:_1O0;

    private function _iW():void {
        if (((this._p4) && (this._p4.parent))) {
            this.container.removeChild(this._p4);
        }
        ;
        var _local1:Player = this.gs_.map.player_;
        this._p4 = new GuildPlayerList(50, 0, (((_local1 == null)) ? "" : _local1.name_), _local1.guildRank_);
        this._p4.addEventListener(_0N9.SET_RANK, this._1Nk);
        this._p4.addEventListener(_0N9.REMOVE_MEMBER, this._Sd);
        this.container.addChild(this._p4);
    }

    private function _1sE():void {
        this._p4.removeEventListener(_0N9.SET_RANK, this._1Nk);
        this._p4.removeEventListener(_0N9.REMOVE_MEMBER, this._Sd);
        this.container.removeChild(this._p4);
        this._p4 = null;
    }

    private function _08D(_arg1:String):void {
        var _local2:Dialog = new Dialog(_TG._12F, _arg1, _TG._0fn, null, "/guildError");
        _local2.addEventListener(Dialog.LEFT_BUTTON, this._0Zh);
        stage.addChild(_local2);
    }

    private function close():void {
        stage.focus = null;
        parent.removeChild(this);
    }

    private function _1Nk(_arg1:_0N9):void {
        this._1sE();
        this.gs_.addEventListener(_094._Pu, this._1Wt);
        this.gs_.gsc_.changeGuildRank(_arg1.name_, _arg1._02V);
    }

    private function _1Wt(_arg1:_094):void {
        this.gs_.removeEventListener(_094._Pu, this._1Wt);
        if (!_arg1.success_) {
            this._08D(_arg1._0XJ);
        } else {
            this._iW();
        }
        ;
    }

    private function _Sd(_arg1:_0N9):void {
        this._1sE();
        this.gs_.addEventListener(_094._Pu, this._1sb);
        this.gs_.gsc_.guildRemove(_arg1.name_);
    }

    private function _1sb(_arg1:_094):void {
        this.gs_.removeEventListener(_094._Pu, this._1sb);
        if (!_arg1.success_) {
            this._08D(_arg1._0XJ);
        } else {
            this._iW();
        }
        ;
    }

    private function _0Zh(_arg1:Event):void {
        var _local2:Dialog = (_arg1.currentTarget as Dialog);
        stage.removeChild(_local2);
        this._iW();
    }

    private function _0YN(_arg1:MouseEvent):void {
        this.close();
    }

    private function onAddedToStage(_arg1:Event):void {
        this._0vM.x = (stage.stageWidth / 2);
        this._0vM.y = 550;
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y, false, 1);
        stage.addEventListener(KeyboardEvent.KEY_UP, this._1Gn, false, 1);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y, false);
        stage.removeEventListener(KeyboardEvent.KEY_UP, this._1Gn, false);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        _arg1.stopImmediatePropagation();
    }

    private function _1Gn(_arg1:KeyboardEvent):void {
        _arg1.stopImmediatePropagation();
    }


}
}//package _2-t

