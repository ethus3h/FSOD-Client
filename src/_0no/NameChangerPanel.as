// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no.NameChangerPanel

package _0no {
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _1f4.Panel;

import _6u._TG;

import _n._19y;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui.RankText;
import com.company.assembleegameclient.ui._1jP;
import com.company.assembleegameclient.util.Currency;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFormatAlign;

public class NameChangerPanel extends Panel {

    public function NameChangerPanel(_arg1:GameSprite, _arg2:int) {
        var _local3:Player;
        var _local4:String;
        this.chooseName = new _sy();
        super(_arg1);
        if (this._72()) {
            _local3 = gs_.map.player_;
            this._10p = _local3._0LC;
            _local4 = this._1YL();
            if (this._10p) {
                this._1JL(_local4);
            } else {
                if (_local3.numStars_ < _arg2) {
                    this._0IM(_arg2);
                } else {
                    this._Ai();
                }
                ;
            }
            ;
        }
        ;
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
    }
    public var chooseName:_sy;
    public var _10p:Boolean;
    private var _ZE:_06T;
    private var _d4:Sprite;

    public function _Cy(_arg1:String):void {
        this._ZE.setStringBuilder(this._1u4(_arg1));
        this._ZE.y = 0;
    }

    private function _72():Boolean {
        return (((gs_.map) && (gs_.map.player_)));
    }

    private function _1YL():String {
        var _local1:String;
        _local1 = gs_.model.getName();
        this._ZE = new _06T().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH);
        this._ZE.setBold(true).setWordWrap(true).setMultiLine(true).setHorizontalAlign(TextFormatAlign.CENTER);
        this._ZE.filters = [new DropShadowFilter(0, 0, 0)];
        return (_local1);
    }

    private function _1JL(_arg1:String):void {
        this._ZE.setStringBuilder(this._1u4(_arg1));
        this._ZE.y = 0;
        addChild(this._ZE);
        var _local2:_19y = new _19y(_TG._1Nw, 16, Parameters._2B, Currency._1mE);
        _local2._0CF.addOnce(this._0xG);
        this._d4 = _local2;
        addChild(this._d4);
        this._V();
    }

    private function _0xG():void {
        this._d4.x = ((WIDTH / 2) - (this._d4.width / 2));
        this._d4.y = ((HEIGHT - (this._d4.height / 2)) - 17);
    }

    private function _Ai():void {
        this._ZE.setStringBuilder(new _5R().setParams(_TG._1I3));
        this._ZE.y = 6;
        addChild(this._ZE);
        var _local1:_1jP = new _1jP(16, _TG._1Sa);
        _local1.textChanged.addOnce(this._S3);
        this._d4 = _local1;
        addChild(this._d4);
        this._V();
    }

    private function _S3():void {
        this._d4.x = ((WIDTH / 2) - (this._d4.width / 2));
        this._d4.y = ((HEIGHT - this._d4.height) - 4);
    }

    private function _V():void {
        this._d4.addEventListener(MouseEvent.CLICK, this.onButtonClick);
    }

    private function _0IM(_arg1:int):void {
        var _local2:Sprite;
        var _local4:Sprite;
        this._ZE.setStringBuilder(new _5R().setParams(_TG._1I3));
        addChild(this._ZE);
        _local2 = new Sprite();
        var _local3:_06T = new _06T().setSize(16).setColor(0xFFFFFF);
        _local3.setBold(true);
        _local3.setStringBuilder(new _5R().setParams(_TG._eM));
        _local3.filters = [new DropShadowFilter(0, 0, 0)];
        _local2.addChild(_local3);
        _local4 = new RankText(_arg1, false, false);
        _local4.x = (_local3.width + 4);
        _local4.y = ((_local3.height / 2) - (_local4.height / 2));
        _local2.addChild(_local4);
        _local2.x = ((WIDTH / 2) - (_local2.width / 2));
        _local2.y = ((HEIGHT - (_local2.height / 2)) - 20);
        addChild(_local2);
    }

    private function _1u4(_arg1:String):_1vN {
        return (new _5R().setParams(_TG._1hg, {name: _arg1}));
    }

    private function _1Hf():void {
        this.chooseName.dispatch();
    }

    private function onAddedToStage(_arg1:Event):void {
        if (this._d4) {
            stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        }
        ;
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null)))) {
            this._1Hf();
        }
        ;
    }

    private function onButtonClick(_arg1:MouseEvent):void {
        this._1Hf();
    }


}
}//package _0no

