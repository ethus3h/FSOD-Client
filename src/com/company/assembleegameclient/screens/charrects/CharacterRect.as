// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.screens.charrects.CharacterRect

package com.company.assembleegameclient.screens.charrects {
import _0Mr._1vN;

import _0y9._06T;

import com.company.rotmg.graphics.StarGraphic;

import flash.display.Shape;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;

public class CharacterRect extends Sprite {

    public static const WIDTH:int = 419;
    public static const HEIGHT:int = 59;

    private static function makeDropShadowFilter():Array {
        return ([new DropShadowFilter(0, 0, 0, 1, 8, 8)]);
    }

    public function CharacterRect() {
        this.box = new Shape();
        super();
    }
    public var color:uint;
    public var overColor:uint;
    public var selectContainer:Sprite;
    protected var taglineIcon:Sprite;
    protected var taglineText:_06T;
    protected var classNameText:_06T;
    protected var className:_1vN;
    private var box:Shape;

    public function init():void {
        tabChildren = false;
        this.makeBox();
        this.makeContainer();
        this.makeClassNameText();
        this.addEventListeners();
    }

    public function makeBox():void {
        this.drawBox(false);
        addChild(this.box);
    }

    public function makeContainer():void {
        this.selectContainer = new Sprite();
        this.selectContainer.mouseChildren = false;
        this.selectContainer.buttonMode = true;
        this.selectContainer.graphics.beginFill(0xFF00FF, 0);
        this.selectContainer.graphics.drawRect(0, 0, WIDTH, HEIGHT);
        addChild(this.selectContainer);
    }

    protected function makeTaglineIcon():void {
        this.taglineIcon = new StarGraphic();
        this.taglineIcon.transform.colorTransform = new ColorTransform((179 / 0xFF), (179 / 0xFF), (179 / 0xFF));
        this.taglineIcon.scaleX = 1.2;
        this.taglineIcon.scaleY = 1.2;
        this.taglineIcon.x = CharacterRectConstants.TAGLINE_ICON_POS_X;
        this.taglineIcon.y = CharacterRectConstants.TAGLINE_ICON_POS_Y;
        this.taglineIcon.filters = [new DropShadowFilter(0, 0, 0)];
        this.selectContainer.addChild(this.taglineIcon);
    }

    protected function makeClassNameText():void {
        this.classNameText = new _06T().setSize(18).setColor(0xFFFFFF);
        this.classNameText.setBold(true);
        this.classNameText.setStringBuilder(this.className);
        this.classNameText.filters = makeDropShadowFilter();
        this.classNameText.x = CharacterRectConstants.CLASS_NAME_POS_X;
        this.classNameText.y = CharacterRectConstants.CLASS_NAME_POS_Y;
        this.selectContainer.addChild(this.classNameText);
    }

    protected function makeTaglineText(_arg1:_1vN):void {
        this.taglineText = new _06T().setSize(14).setColor(0xB3B3B3);
        this.taglineText.setStringBuilder(_arg1);
        this.taglineText.filters = makeDropShadowFilter();
        this.taglineText.x = CharacterRectConstants.TAGLINE_TEXT_POS_X;
        this.taglineText.y = CharacterRectConstants.TAGLINE_TEXT_POS_Y;
        this.selectContainer.addChild(this.taglineText);
    }

    private function addEventListeners():void {
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
    }

    private function drawBox(_arg1:Boolean):void {
        this.box.graphics.clear();
        this.box.graphics.beginFill(((_arg1) ? this.overColor : this.color));
        this.box.graphics.drawRect(0, 0, WIDTH, HEIGHT);
        this.box.graphics.endFill();
    }

    protected function onMouseOver(_arg1:MouseEvent):void {
        this.drawBox(true);
    }

    protected function onRollOut(_arg1:MouseEvent):void {
        this.drawBox(false);
    }


}
}//package com.company.assembleegameclient.screens.charrects

