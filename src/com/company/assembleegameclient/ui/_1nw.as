// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._1nw

package com.company.assembleegameclient.ui {
import _EH._JG;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.net.FileReference;

public class _1nw extends Sprite {

    public function _1nw(_arg1:BitmapData) {
        this.bitmap_ = new Bitmap(_arg1);
        addChild(this.bitmap_);
        this._16K = new _1jP(16, "Save");
        addChild(this._16K);
        this._LA = new _1jP(16, "Close");
        addChild(this._LA);
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var bitmap_:Bitmap;
    private var _16K:_1jP;
    private var _LA:_1jP;

    private function onAddedToStage(_arg1:Event):void {
        this._16K.addEventListener(MouseEvent.CLICK, this._in);
        this._LA.addEventListener(MouseEvent.CLICK, this._0mM);
        this.bitmap_.x = ((stage.stageHeight / 2) - (this.bitmap_.width / 2));
        this.bitmap_.y = ((stage.stageHeight / 2) - (this.bitmap_.height / 2));
        this._LA.x = ((this.bitmap_.x + this.bitmap_.width) - this._LA.width);
        this._LA.y = ((this.bitmap_.y + this.bitmap_.height) + 10);
        this._16K.x = ((this._LA.x - this._16K.width) - 10);
        this._16K.y = ((this.bitmap_.y + this.bitmap_.height) + 10);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this._16K.removeEventListener(MouseEvent.CLICK, this._in);
        this._LA.removeEventListener(MouseEvent.CLICK, this._0mM);
    }

    private function _in(_arg1:Event):void {
        new FileReference().save(_JG.encode(this.bitmap_.bitmapData), "map.png");
    }

    private function _0mM(_arg1:Event):void {
        if (parent != null) {
            parent.removeChild(this);
        }
        ;
    }


}
}//package com.company.assembleegameclient.ui

