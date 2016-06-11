// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Tw._10n

package _Tw {
import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;
import flash.display.Graphics;
import flash.display.Sprite;
import flash.events.Event;

public class _10n extends Sprite {

    public function _10n() {
        addChild((this.background = new Sprite()));
        addChild((this.container = new Sprite()));
        this.background.visible = false;
        this.background.mouseEnabled = true;
    }
    private var background:Sprite;
    private var container:DisplayObjectContainer;
    private var _Tg:Sprite;
    private var _1r2:DisplayObject;

    public function _1gc(_arg1:int = 0x151515):void {
        var _local2:Graphics = this.background.graphics;
        _local2.clear();
        _local2.beginFill(_arg1, 0.6);
        _local2.drawRect(0, 0, 800, 600);
        _local2.endFill();
        this.background.visible = true;
    }

    public function show(_arg1:Sprite, _arg2:Boolean):void {
        this._1yy();
        this._0d(_arg1);
        ((_arg2) && (this._1gc()));
    }

    public function _1GX():void {
        this.background.visible = false;
        this._1yy();
    }

    public function push(_arg1:Sprite):void {
        this._Tg.visible = false;
        this._1r2 = _arg1;
        addChild(_arg1);
        this.background.visible = true;
    }

    public function _mB():DisplayObject {
        return (this._1r2);
    }

    public function pop():void {
        removeChild(this._1r2);
        this._Tg.visible = true;
    }

    private function _0d(_arg1:Sprite):void {
        this._Tg = _arg1;
        _arg1.addEventListener(Event.REMOVED, this._1fl);
        this.container.addChild(_arg1);
    }

    private function _1yy():void {
        if (((this._Tg) && (this.container.contains(this._Tg)))) {
            this._Tg.removeEventListener(Event.REMOVED, this._1fl);
            this.container.removeChild(this._Tg);
            this.background.visible = false;
        }
        ;
    }

    private function _1fl(_arg1:Event):void {
        var _local2:Sprite = (_arg1.target as Sprite);
        if (this._Tg == _local2) {
            this.background.visible = false;
            this._Tg = null;
        }
        ;
    }


}
}//package _Tw

