// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._1hn

package _U1 {
import _6u._TG;

import com.company.assembleegameclient.ui._1Db;
import com.company.assembleegameclient.util._0ZU;
import com.company.util.BitmapUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.geom.Rectangle;
import flash.utils.getTimer;

public class _1hn extends Sprite {

    public function _1hn(_arg1:Rectangle, _arg2:XML) {
        var _local4:XML;
        this.mask_ = new Shape();
        this._rv = new Sprite();
        this._VD = new Vector.<_AL>();
        super();
        this.rect_ = _arg1;
        graphics.lineStyle(1, 0x494949, 2);
        graphics.drawRect((this.rect_.x + 1), (this.rect_.y + 1), (this.rect_.width - 2), (this.rect_.height - 2));
        graphics.lineStyle();
        this._0CX = new _1Db(16, this.rect_.height);
        this._0CX.addEventListener(Event.CHANGE, this._0FN);
        this.mask_.graphics.beginFill(0xFFFFFF, 1);
        this.mask_.graphics.drawRect(this.rect_.x, this.rect_.y, this.rect_.width, this.rect_.height);
        this.mask_.graphics.endFill();
        addChild(this.mask_);
        mask = this.mask_;
        addChild(this._rv);
        this._1qM(_TG._1R2, null, 0, _arg2.Shots, false, 5746018);
        if (int(_arg2.Shots) != 0) {
            this._1qM(_TG._7Y, null, 0, ((100 * Number(_arg2.ShotsThatDamage)) / Number(_arg2.Shots)), true, 5746018, "", "%");
        }
        ;
        this._1qM(_TG._199, null, 0, _arg2.TilesUncovered, false, 5746018);
        this._1qM(_TG._0ly, null, 0, _arg2.MonsterKills, false, 5746018);
        this._1qM(_TG._Ot, null, 0, _arg2.GodKills, false, 5746018);
        this._1qM(_TG._0hc, null, 0, _arg2.OryxKills, false, 5746018);
        this._1qM(_TG._0w7, null, 0, _arg2.QuestsCompleted, false, 5746018);
        this._1qM(_TG._1cG, null, 0, ((((((int(_arg2.PirateCavesCompleted) + int(_arg2.UndeadLairsCompleted)) + int(_arg2.AbyssOfDemonsCompleted)) + int(_arg2.SnakePitsCompleted)) + int(_arg2.SpiderDensCompleted)) + int(_arg2.SpriteWorldsCompleted)) + int(_arg2.TombsCompleted)), false, 5746018);
        this._1qM(_TG._jN, null, 0, _arg2.LevelUpAssists, false, 5746018);
        var _local3:BitmapData = _0ZU._0e1();
        _local3 = BitmapUtil._6L(_local3, 6, 6, (_local3.width - 12), (_local3.height - 12));
        this._1qM(_TG._0Vg, null, 0, _arg2.BaseFame, true, 0xFFC800, "", "", new Bitmap(_local3));
        for each (_local4 in _arg2.Bonus) {
            this._1qM(_local4.@id, _local4.@desc, _local4.@level, int(_local4), true, 0xFFC800, "+", "", new Bitmap(_local3));
        }
        ;
    }
    private var rect_:Rectangle;
    private var mask_:Shape;
    private var _rv:Sprite;
    private var _VD:Vector.<_AL>;
    private var _0CX:_1Db;
    private var startTime_:int;

    public function _86():void {
        var _local1:_AL;
        this._LZ();
        this.startTime_ = -(int.MAX_VALUE);
        for each (_local1 in this._VD) {
            _local1._9();
        }
        ;
    }

    public function _LZ():void {
        this.startTime_ = getTimer();
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function _1qM(_arg1:String, _arg2:String, _arg3:int, _arg4:int, _arg5:Boolean, _arg6:uint, _arg7:String = "", _arg8:String = "", _arg9:DisplayObject = null):void {
        if ((((_arg4 == 0)) && (!(_arg5)))) {
            return;
        }
        ;
        this._VD.push(new _AL(20, 0xB3B3B3, _arg6, _arg1, _arg2, _arg3, _arg4, _arg7, _arg8, _arg9));
    }

    private function _u1():void {
        graphics.clear();
        graphics.lineStyle(1, 0x494949, 2);
        graphics.drawRect((this.rect_.x + 1), (this.rect_.y + 1), (this.rect_.width - 26), (this.rect_.height - 2));
        graphics.lineStyle();
        this._0CX.x = (this.rect_.width - 16);
        this._0CX._cf(this.mask_.height, this._rv.height);
        this._0CX._Vn(1);
        addChild(this._0CX);
    }

    private function _0FN(_arg1:Event):void {
        var _local2:Number = this._0CX._0LY();
        this._rv.y = ((_local2 * ((this.rect_.height - this._rv.height) - 15)) + 5);
    }

    private function onEnterFrame(_arg1:Event):void {
        var _local3:Number;
        var _local6:_AL;
        var _local2:Number = (this.startTime_ + ((2000 * (this._VD.length - 1)) / 2));
        _local3 = getTimer();
        var _local4:int = Math.min(this._VD.length, (((2 * (getTimer() - this.startTime_)) / 2000) + 1));
        var _local5:int;
        while (_local5 < _local4) {
            _local6 = this._VD[_local5];
            _local6.y = (28 * _local5);
            this._rv.addChild(_local6);
            _local5++;
        }
        ;
        this._rv.y = ((this.rect_.height - this._rv.height) - 10);
        if (_local3 > (_local2 + 1000)) {
            this._u1();
            dispatchEvent(new Event(Event.COMPLETE));
            removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        }
        ;
    }


}
}//package _U1

