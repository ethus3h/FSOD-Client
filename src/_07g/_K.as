// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._K-

package _07g {
import _0MO._07F;

import _1CB._0r;
import _1CB.__0Vh;

import _1Fr._qf;

import _r7._17v;

import com.company.assembleegameclient.objects.Player;

import flash.display.Sprite;
import flash.events.MouseEvent;

public class _K extends _17v {

    [Inject]
    public var view:_1QQ;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _1VF:_07F;
    [Inject]
    public var _0tg:_0r;
    [Inject]
    public var _Q6:_gC;
    private var stats:Sprite;


    override public function initialize():void {
        this._1VF.addOnce(this._0Bi);
        this._1VF.add(this._09V);
        this._0tg.add(this._1ta);
    }

    override public function destroy():void {
        this._1VF.remove(this._09V);
        this._0tg.remove(this._1ta);
        if (((this.stats) && (this.stats.hasEventListener(MouseEvent.MOUSE_DOWN)))) {
            this.stats.removeEventListener(MouseEvent.MOUSE_DOWN, this._1uz);
        }
        ;
    }

    private function _1ta(_arg1:__0Vh):void {
        this.stats = _arg1;
        this.view.addChild(_arg1);
        _arg1.x = (this.view.mouseX - (_arg1.width / 2));
        _arg1.y = (this.view.mouseY - (_arg1.height / 2));
        this._0aj(_arg1);
    }

    private function _0aj(_arg1:__0Vh):void {
        _arg1.startDrag();
        _arg1.addEventListener(MouseEvent.MOUSE_UP, this._0AD);
    }

    private function _0u8(_arg1:Sprite):void {
        this._Q6.dispatch();
        this.view.removeChild(_arg1);
        _arg1.stopDrag();
    }

    private function _1Kb(_arg1:Sprite):void {
        _arg1.removeEventListener(MouseEvent.MOUSE_UP, this._0AD);
        _arg1.addEventListener(MouseEvent.MOUSE_DOWN, this._1uz);
        _arg1.stopDrag();
    }

    private function _09V(_arg1:Player):void {
        this.view.draw();
    }

    private function _0Bi(_arg1:Player):void {
        this.view._1Y3(this._1b._1P);
    }

    private function _0AD(_arg1:MouseEvent):void {
        var _local2:Sprite = __0Vh(_arg1.target);
        this._1Kb(_local2);
        if (_local2.hitTestObject(this.view._1w4)) {
            this._0u8(_local2);
        }
        ;
    }

    private function _1uz(_arg1:MouseEvent):void {
        var _local2:Sprite = Sprite(_arg1.target);
        this.stats = _local2;
        _local2.removeEventListener(MouseEvent.MOUSE_DOWN, this._1uz);
        _local2.addEventListener(MouseEvent.MOUSE_UP, this._0AD);
        _local2.startDrag();
    }


}
}//package _07g

