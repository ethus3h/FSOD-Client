// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.screens.charrects.CurrentCharacterRect

package com.company.assembleegameclient.screens.charrects {
import _0Mr._5R;

import _0yV._pE;

import _1Sm._sy;

import _20I._E0;

import _6u._TG;

import _Z0.MyPlayerToolTip;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.appengine._1Ha;
import com.company.assembleegameclient.util._0ZU;
import com.company.rotmg.graphics.DeleteXGraphic;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

public class CurrentCharacterRect extends CharacterRect {

    public const selected:_sy = new _sy();
    public const deleteCharacter:_sy = new _sy();
    public const showToolTip:_sy = new _sy(Sprite);
    public const hideTooltip:_sy = new _sy();
    private static var toolTip_:MyPlayerToolTip = null;

    public function CurrentCharacterRect(_arg1:String, _arg2:_E0, _arg3:SavedCharacter, _arg4:_1Ha) {
        this.myPlayerToolTipFactory = new MyPlayerToolTipFactory();
        super();
        this.charName = _arg1;
        this.charType = _arg2;
        this.char = _arg3;
        this.charStats = _arg4;
        var _local5:String = _arg2.name;
        var _local6:int = _arg3._0lT.Level;
        super.className = new _5R().setParams(_TG._0iY, {
            className: _local5,
            level: _local6
        });
        super.color = 0x5C5C5C;
        super.overColor = 0x7F7F7F;
        super.init();
        this.makeTagline();
        this.makeDeleteButton();
        this.addEventListeners();
    }
    public var charName:String;
    public var charStats:_1Ha;
    public var char:SavedCharacter;
    public var myPlayerToolTipFactory:MyPlayerToolTipFactory;
    private var charType:_E0;
    private var deleteButton:Sprite;
    private var icon:DisplayObject;

    public function setIcon(_arg1:DisplayObject):void {
        ((this.icon) && (selectContainer.removeChild(this.icon)));
        this.icon = _arg1;
        this.icon.x = CharacterRectConstants.ICON_POS_X;
        this.icon.y = CharacterRectConstants.ICON_POS_Y;
        ((this.icon) && (selectContainer.addChild(this.icon)));
    }

    private function addEventListeners():void {
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        selectContainer.addEventListener(MouseEvent.CLICK, this.onSelect);
        this.deleteButton.addEventListener(MouseEvent.CLICK, this.onDelete);
    }

    private function makeTagline():void {
        if (this.getNextStarFame() > 0) {
            super.makeTaglineIcon();
            super.makeTaglineText(new _5R().setParams(_TG._0Z6, {
                fame: this.char.fame(),
                nextStarFame: this.getNextStarFame()
            }));
            taglineText.x = (taglineText.x + taglineIcon.width);
        }
        ;
    }

    private function getNextStarFame():int {
        return (_0ZU.nextStarFame((((this.charStats == null)) ? 0 : this.charStats._04z()), this.char.fame()));
    }

    private function makeDeleteButton():void {
        this.deleteButton = new DeleteXGraphic();
        this.deleteButton.addEventListener(MouseEvent.MOUSE_DOWN, this.onDeleteDown);
        this.deleteButton.x = (WIDTH - 40);
        this.deleteButton.y = ((HEIGHT - this.deleteButton.height) * 0.5);
        addChild(this.deleteButton);
    }

    private function removeToolTip():void {
        this.hideTooltip.dispatch();
    }

    override protected function onMouseOver(_arg1:MouseEvent):void {
        super.onMouseOver(_arg1);
        this.removeToolTip();
        toolTip_ = this.myPlayerToolTipFactory.create(this.charName, this.char._0lT, this.charStats);
        toolTip_.set();
        this.showToolTip.dispatch(toolTip_);
    }

    override protected function onRollOut(_arg1:MouseEvent):void {
        super.onRollOut(_arg1);
        this.removeToolTip();
    }

    private function onSelect(_arg1:MouseEvent):void {
        this.selected.dispatch(this.char);
    }

    private function onDelete(_arg1:MouseEvent):void {
        this.deleteCharacter.dispatch(this.char);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this.removeToolTip();
    }

    private function onDeleteDown(_arg1:MouseEvent):void {
        _arg1.stopImmediatePropagation();
        dispatchEvent(new _pE(this.char));
    }


}
}//package com.company.assembleegameclient.screens.charrects

