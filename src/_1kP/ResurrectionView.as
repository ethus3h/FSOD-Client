// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kP.ResurrectionView

package _1kP {
import _1Sm._sy;

import _6u._TG;

import _Vb.Dialog;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.filters.ColorMatrixFilter;

public class ResurrectionView extends Sprite {

    public const _1O9:_sy = new _sy(Sprite);
    public const closed:_sy = new _sy();
    private const _1cs:Number = 0;
    private const _0Fd:Number = 0x3B3B3B;
    private const _wT:Number = 300;
    private const _up:Number = 400;

    private var _20y:Dialog;


    public function init(_arg1:BitmapData):void {
        this._Gr(_arg1);
        this._fi();
    }

    public function _fi():void {
        this._20y = new Dialog(_TG._V0, _TG._throw, _TG._1x5, null, null);
        this._20y.addEventListener(Dialog.LEFT_BUTTON, this.onButtonClick);
        this._1O9.dispatch(this._20y);
    }

    private function _Gr(_arg1:BitmapData):void {
        var _local4:Bitmap;
        var _local2:Array = [0.33, 0.33, 0.33, 0, 0, 0.33, 0.33, 0.33, 0, 0, 0.33, 0.33, 0.33, 0, 0, 0.33, 0.33, 0.33, 1, 0];
        var _local3:ColorMatrixFilter = new ColorMatrixFilter(_local2);
        _local4 = new Bitmap(_arg1);
        _local4.filters = [_local3];
        addChild(_local4);
    }

    private function onButtonClick(_arg1:Event):void {
        this.closed.dispatch();
    }


}
}//package _1kP

