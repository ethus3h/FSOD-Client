// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4.GuildHallPortalPanel

package _1f4 {
import _07g._2v;

import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.objects.GuildHallPortal;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui._1jP;
import com.company.assembleegameclient.util._1hw;

import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class GuildHallPortalPanel extends Panel {

    private const _qH:_2v = new _2v();

    public function GuildHallPortalPanel(_arg1:_0p2, _arg2:GuildHallPortal) {
        var _local3:Player;
        super(_arg1);
        this._0FE = new _1hw(this);
        this._9g = _arg2;
        if ((((gs_.map == null)) || ((gs_.map.player_ == null)))) {
            return;
        }
        ;
        _local3 = gs_.map.player_;
        this.nameText_ = new _06T().setSize(18).setColor(0xFFFFFF).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
        this.nameText_.setStringBuilder(new _5R().setParams(_TG._1Mi).setPrefix('<p align="center">').setPostfix("</p>"));
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        this.nameText_.y = 6;
        addChild(this.nameText_);
        if (((!((_local3.guildName_ == null))) && ((_local3.guildName_.length > 0)))) {
            this._1nv = new _1jP(16, _TG._vS);
            this._1nv.addEventListener(MouseEvent.CLICK, this._1Yp);
            addChild(this._1nv);
            this._qH.push(this._1nv.textChanged);
            addEventListener(Event.ADDED_TO_STAGE, this._1oe);
        } else {
            this._ei = new _06T().setSize(18).setColor(0xFF0000).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true).setBold(true);
            this._ei.setStringBuilder(new _5R().setParams(_TG._4R).setPrefix('<p align="center">').setPostfix("</p>"));
            this._ei.filters = [new DropShadowFilter(0, 0, 0)];
            this._qH.push(this._ei.textChanged);
            addChild(this._ei);
        }
        ;
        this._qH.complete.addOnce(this.alignUI);
    }
    public var _0FE:_1hw;
    private var _9g:GuildHallPortal;
    private var nameText_:_06T;
    private var _1nv:_1jP;
    private var _ei:_06T;

    private function alignUI():void {
        if (this._ei) {
            this._ei.y = ((HEIGHT - this._ei.height) - 12);
        }
        ;
        if (this._1nv) {
            this._1nv.x = ((WIDTH / 2) - (this._1nv.width / 2));
            this._1nv.y = ((HEIGHT - this._1nv.height) - 4);
        }
        ;
    }

    private function enterPortal():void {
        gs_.gsc_.usePortal(this._9g.objectId_);
    }

    private function _1oe(_arg1:Event):void {
        this._0FE.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        addEventListener(Event.REMOVED_FROM_STAGE, this._1fl);
    }

    private function _1fl(_arg1:Event):void {
        this._0FE.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
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

