// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4.PortalPanel

package _1f4 {
import _07g._2v;

import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Portal;
import com.company.assembleegameclient.objects._0Px;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.tutorial.Tutorial;
import com.company.assembleegameclient.tutorial.doneAction;
import com.company.assembleegameclient.ui._1jP;
import com.company.googleanalytics.GA;

import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormatAlign;

public class PortalPanel extends Panel {

    private const LOCKED:String = "Locked ";
    private const _11Y:RegExp = /\{"text":"(.+)"}/;
    public const _v0:_sy = new _sy();
    private const _qH:_2v = new _2v();

    public function PortalPanel(_arg1:GameSprite, _arg2:Portal) {
        super(_arg1);
        this._9g = _arg2;
        this.nameText_ = new _06T().setSize(18).setColor(0xFFFFFF).setBold(true).setTextWidth(WIDTH).setHorizontalAlign(TextFormatAlign.CENTER);
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.nameText_);
        this._qH.push(this.nameText_.textChanged);
        this._1nv = new _1jP(16, _TG._vS);
        addChild(this._1nv);
        this._qH.push(this._1nv.textChanged);
        this._1Z4 = new _06T().setSize(18).setColor(0xFF0000).setHTML(true).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
        var _local3:String = ((this._9g._0WE) ? _TG._9X : _TG._1L);
        this._1Z4.setStringBuilder(new _5R().setParams(_local3).setPrefix('<p align="center">').setPostfix("</p>"));
        this._1Z4.filters = [new DropShadowFilter(0, 0, 0)];
        this._1Z4.textChanged.addOnce(this.alignUI);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._qH.complete.addOnce(this.alignUI);
    }
    public var _9g:Portal;
    private var nameText_:_06T;
    private var _1nv:_1jP;
    private var _1Z4:_06T;

    override public function draw():void {
        this._1vr();
        if (((((!(this._9g._0WE)) && (this._9g._0N6))) && (contains(this._1Z4)))) {
            removeChild(this._1Z4);
            addChild(this._1nv);
        } else {
            if (((((this._9g._0WE) || (!(this._9g._0N6)))) && (contains(this._1nv)))) {
                removeChild(this._1nv);
                addChild(this._1Z4);
            }
            ;
        }
        ;
    }

    private function alignUI():void {
        this.nameText_.y = 6;
        this._1nv.x = ((WIDTH / 2) - (this._1nv.width / 2));
        this._1nv.y = ((HEIGHT - this._1nv.height) - 4);
        this._1Z4.y = (HEIGHT - 30);
        this._1Z4.x = (WIDTH / 2);
    }

    private function enterPortal():void {
        var _local1:String = ObjectLibrary._1w3[this._9g.objectType_];
        if (_local1 == "Nexus Portal") {
            GA.global().trackEvent("enterPortal", _local1);
        } else {
            GA.global().trackEvent("enterPortal", this._9g.getName());
        }
        ;
        doneAction(gs_, Tutorial._15S);
        gs_.gsc_.usePortal(this._9g.objectId_);
        this._v0.dispatch();
    }

    private function _1vr():void {
        var _local1:String = this.getName();
        var _local2:_1vN = new _0Px().makeBuilder(_local1);
        this.nameText_.setStringBuilder(_local2);
        this.nameText_.x = ((WIDTH - this.nameText_.width) * 0.5);
        this.nameText_.y = (((this.nameText_.height > 30)) ? 0 : 6);
    }

    private function getName():String {
        var _local1:String = this._9g.getName();
        if (((this._9g._0WE) && ((_local1.indexOf(this.LOCKED) == 0)))) {
            return (_local1.substr(this.LOCKED.length));
        }
        ;
        return (this._0Nl(_local1));
    }

    private function _0Nl(_arg1:String):String {
        var _local2:Array = _arg1.match(this._11Y);
        return (((_local2) ? _local2[1] : _arg1));
    }

    private function onAddedToStage(_arg1:Event):void {
        this._1nv.addEventListener(MouseEvent.CLICK, this._1Yp);
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function _1Yp(_arg1:MouseEvent):void {
        this.enterPortal();
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null)))) {
            this.enterPortal();
        }
        ;
    }


}
}//package _1f4

