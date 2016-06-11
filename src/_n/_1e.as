// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_n-._1e

package _n {
import _0Mr._1M;

import _0y9._06T;

import _1Sm._sy;

import _DO.GTween;

import flash.display.Sprite;
import flash.events.TimerEvent;
import flash.filters.DropShadowFilter;
import flash.filters.GlowFilter;
import flash.utils.Timer;

public class _1e extends Sprite {

    public static const _vQ:int = 8;

    public function _1e() {
        this._a = new _sy();
        super();
        this.text = new _06T().setSize(40).setColor(0xFFFFFF).setBold(true);
        this.text.filters = [new DropShadowFilter(0, 0, 0), new GlowFilter(0xFFFF00, 1, 1.5, 1.5, 4.5, 1)];
        this.text.setStringBuilder(new _1M(("" + this._NP)));
        addChild(this.text);
        this.text.visible = false;
    }
    public var _NP:int = 0;
    public var _0EJ:Timer;
    public var text:_06T;
    public var background:_GR;
    public var _a:_sy;
    public var _1py:Number = -1;

    public function start(_arg1:int = 5):void {
        if (((!((this.text == null))) && (!((this.text.parent == null))))) {
            removeChild(this.text);
        }
        ;
        this.text.setStringBuilder(new _1M(("" + _arg1)));
        this.text.alpha = 0.5;
        this.text.scaleX = 1;
        this.text.scaleY = 1;
        this.text.visible = true;
        new GTween(this.text, 0.25, {
            scaleX: 1.25,
            scaleY: 1.25,
            alpha: 1
        });
        addChild(this.text);
        this._NP = _arg1;
        this._0EJ = new Timer(1000, _arg1);
        this._0EJ.addEventListener(TimerEvent.TIMER, this._AT);
        this._0EJ.start();
    }

    public function end():void {
        if (((!((this.background == null))) && (!((this.background.parent == null))))) {
            removeChild(this.background);
        }
        ;
        if (((!((this.text == null))) && (!((this.text.parent == null))))) {
            removeChild(this.text);
        }
        ;
        this._NP = 0;
        this._a.dispatch();
        if (this._0EJ != null) {
            this._0EJ.removeEventListener(TimerEvent.TIMER, this._AT);
            this._0EJ.reset();
        }
        ;
    }

    public function remove():void {
        if (((!((this.background == null))) && (!((this.background.parent == null))))) {
            removeChild(this.background);
        }
        ;
        if (((!((this.text == null))) && (!((this.text.parent == null))))) {
            removeChild(this.text);
        }
        ;
        this._NP = 0;
        this._0EJ.removeEventListener(TimerEvent.TIMER, this._AT);
        this._0EJ.reset();
    }

    public function _1IC():Boolean {
        return (!((this._NP == 0)));
    }

    public function setXPos(_arg1:Number):void {
        this._1py = _arg1;
        this.x = (this._1py - ((this.width * 1.25) / 2));
    }

    public function _1d3():void {
        this.x = (this._1py - ((this.width * 1.25) / 2));
    }

    public function setYPos(_arg1:Number):void {
        this.y = (_arg1 - ((this.height * 1.25) / 2));
    }

    public function getCenterX():Number {
        return ((this.x + (this.width / 2)));
    }

    public function getCenterY():Number {
        return ((this.y + (this.height / 2)));
    }

    public function _AT(_arg1:TimerEvent):void {
        this._NP--;
        if (this._NP == 0) {
            this.end();
        } else {
            this.text.setStringBuilder(new _1M(("" + this._NP)));
            this.text.alpha = 0.5;
            this.text.scaleX = 1;
            this.text.scaleY = 1;
            if ((((this._NP == 9)) || ((this._NP == 99)))) {
                this._1d3();
            }
            ;
            new GTween(this.text, 0.25, {
                scaleX: 1.25,
                scaleY: 1.25,
                alpha: 1
            });
        }
        ;
    }


}
}//package _n-

