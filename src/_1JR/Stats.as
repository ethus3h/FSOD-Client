// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1JR.Stats

package _1JR {
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.geom.Matrix;
import flash.geom.Rectangle;
import flash.system.System;
import flash.text.StyleSheet;
import flash.text.TextField;
import flash.utils.getTimer;

public class Stats extends Sprite {

    protected const WIDTH:uint = 70;
    protected const HEIGHT:uint = 100;

    public function Stats():void {
        this._0vc = new Colors();
        super();
        mouseEnabled = false;
        doubleClickEnabled = false;
        mouseChildren = false;
        this._MY = 0;
        this.xml = <xml>
            <fps>FPS:</fps>
            <ms>MS:</ms>
            <mem>MEM:</mem>
            <memMax>MAX:</memMax>
        </xml>
        ;
        this.style = new StyleSheet();
        this.style.setStyle("xml", {
            fontSize: "9px",
            fontFamily: "_sans",
            leading: "-2px"
        });
        this.style.setStyle("fps", {color: this._1ya(this._0vc.fps)});
        this.style.setStyle("ms", {color: this._1ya(this._0vc.ms)});
        this.style.setStyle("mem", {color: this._1ya(this._0vc.mem)});
        this.style.setStyle("memMax", {color: this._1ya(this._0vc.memmax)});
        this.text = new TextField();
        this.text.width = this.WIDTH;
        this.text.height = 50;
        this.text.styleSheet = this.style;
        this.text.condenseWhite = true;
        this.text.selectable = false;
        this.text.mouseEnabled = false;
        this._040 = new Rectangle((this.WIDTH - 1), 0, 1, (this.HEIGHT - 50));
        addEventListener(Event.ADDED_TO_STAGE, this.init, false, 0, true);
        addEventListener(Event.REMOVED_FROM_STAGE, this.destroy, false, 0, true);
    }
    protected var xml:XML;
    protected var text:TextField;
    protected var style:StyleSheet;
    protected var timer:uint;
    protected var fps:uint;
    protected var ms:uint;
    protected var _19I:uint;
    protected var mem:Number;
    protected var _MY:Number;
    protected var graph:BitmapData;
    protected var _040:Rectangle;
    protected var _0Yo:uint;
    protected var _uo:uint;
    protected var _119:uint;
    protected var _0vc:Colors;

    private function _1ya(_arg1:int):String {
        return (("#" + _arg1.toString(16)));
    }

    private function init(_arg1:Event):void {
        graphics.beginFill(this._0vc.bg);
        graphics.drawRect(0, 0, this.WIDTH, this.HEIGHT);
        graphics.endFill();
        addChild(this.text);
        this.graph = new BitmapData(this.WIDTH, (this.HEIGHT - 50), false, this._0vc.bg);
        graphics.beginBitmapFill(this.graph, new Matrix(1, 0, 0, 1, 0, 50));
        graphics.drawRect(0, 50, this.WIDTH, (this.HEIGHT - 50));
        addEventListener(Event.ENTER_FRAME, this.update);
    }

    private function destroy(_arg1:Event):void {
        graphics.clear();
        while (numChildren > 0) {
            removeChildAt(0);
        }
        ;
        this.graph.dispose();
        removeEventListener(MouseEvent.CLICK, this._1Lb);
        removeEventListener(Event.ENTER_FRAME, this.update);
    }

    private function update(_arg1:Event):void {
        this.timer = getTimer();
        if ((this.timer - 1000) > this._19I) {
            this._19I = this.timer;
            this.mem = Number((System.totalMemory * 9.54E-7).toFixed(3));
            this._MY = (((this._MY > this.mem)) ? this._MY : this.mem);
            this._0Yo = Math.min(this.graph.height, ((this.fps / stage.frameRate) * this.graph.height));
            this._uo = (Math.min(this.graph.height, Math.sqrt(Math.sqrt((this.mem * 5000)))) - 2);
            this._119 = (Math.min(this.graph.height, Math.sqrt(Math.sqrt((this._MY * 5000)))) - 2);
            this.graph.scroll(-1, 0);
            this.graph.fillRect(this._040, this._0vc.bg);
            this.graph.setPixel((this.graph.width - 1), (this.graph.height - this._0Yo), this._0vc.fps);
            this.graph.setPixel((this.graph.width - 1), (this.graph.height - ((this.timer - this.ms) >> 1)), this._0vc.ms);
            this.graph.setPixel((this.graph.width - 1), (this.graph.height - this._uo), this._0vc.mem);
            this.graph.setPixel((this.graph.width - 1), (this.graph.height - this._119), this._0vc.memmax);
            this.xml.fps = ((("FPS: " + this.fps) + " / ") + stage.frameRate);
            this.xml.mem = ("MEM: " + this.mem);
            this.xml.memMax = ("MAX: " + this._MY);
            this.fps = 0;
        }
        ;
        this.fps++;
        this.xml.ms = ("MS: " + (this.timer - this.ms));
        this.ms = this.timer;
        this.text.htmlText = this.xml;
    }

    private function _1Lb(_arg1:MouseEvent):void {
        if (((mouseY / height) > 0.5)) {
            stage.frameRate--;
        } else {
            stage.frameRate++;
        }
        ;
        this.xml.fps = ((("FPS: " + this.fps) + " / ") + stage.frameRate);
        this.text.htmlText = this.xml;
    }


}
}//package _1JR

class Colors {

    public var bg:uint = 51;
    public var fps:uint = 0xFFFF00;
    public var ms:uint = 0xFF00;
    public var mem:uint = 0xFFFF;
    public var memmax:uint = 0xFF0070;


}

