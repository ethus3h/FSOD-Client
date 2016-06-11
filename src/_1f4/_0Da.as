// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1f4._0Da

package _1f4 {
import _1qi._1K8;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects._Rk;

import flash.display.Sprite;
import flash.events.Event;

public class _0Da extends Sprite {

    public static const _jw:Number = 1;

    public function _0Da(_arg1:GameSprite, _arg2:Player, _arg3:int, _arg4:int) {
        this.gs_ = _arg1;
        this.player_ = _arg2;
        this.w_ = _arg3;
        this.h_ = _arg4;
        this._E3 = new _0Yy(_arg1);
    }
    public var gs_:GameSprite;
    public var player_:Player;
    public var w_:int;
    public var h_:int;
    public var _0gs:Panel = null;
    public var _1wB:_Rk = null;
    public var _E3:_0Yy;
    public var _Rv:Function;
    private var _Mz:Panel;

    public function setOverride(_arg1:Panel):void {
        if (this._Mz != null) {
            this._Mz.removeEventListener(Event.COMPLETE, this.onComplete);
        }
        ;
        this._Mz = _arg1;
        this._Mz.addEventListener(Event.COMPLETE, this.onComplete);
    }

    public function redraw():void {
        this._0gs.draw();
    }

    public function draw():void {
        var _local1:_Rk;
        var _local2:Panel;
        if (this._Mz != null) {
            this._1mO(this._Mz);
            this._0gs.draw();
            return;
        }
        ;
        _local1 = this._Rv();
        if ((((this._0gs == null)) || (!((_local1 == this._1wB))))) {
            this._1wB = _local1;
            if (this._1wB != null) {
                _local2 = this._1wB.getPanel(this.gs_);
                this._E3 = new _0Yy(this.gs_);
            } else {
                _local2 = this._E3;
            }
            ;
            this._1mO(_local2);
        }
        ;
        if (this._0gs) {
            this._0gs.draw();
        }
        ;
    }

    public function _1mO(_arg1:Panel):void {
        if (_arg1 != this._0gs) {
            ((this._0gs) && (removeChild(this._0gs)));
            this._0gs = _arg1;
            ((this._0gs) && (this._0wn()));
        }
        ;
    }

    private function _0wn():void {
        if ((this._0gs is _1K8)) {
            this._0gs.x = ((this.w_ - this._0gs.width) * 0.5);
            this._0gs.y = 8;
        } else {
            this._0gs.x = 6;
            this._0gs.y = 8;
        }
        ;
        addChild(this._0gs);
    }

    private function onComplete(_arg1:Event):void {
        if (this._Mz != null) {
            this._Mz.removeEventListener(Event.COMPLETE, this.onComplete);
            this._Mz = null;
        }
        ;
        this._1mO(null);
        this.draw();
    }


}
}//package _1f4

