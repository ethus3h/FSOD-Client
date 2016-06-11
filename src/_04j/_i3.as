// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_04j._i3

package _04j {
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;
import com.company.util.MoreColorUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.filters.ColorMatrixFilter;

public class _i3 extends Sprite {

    public static const _Ou:int = 0;
    public static const _0nk:int = 1;
    public static const _1U2:int = 2;
    public static const _1h:int = 3;
    public static const _M2:int = 4;
    public static const _QG:int = 0;

    private const _bR:Number = 176;

    public function _i3() {
        var _local1:BitmapData;
        var _local2:uint;
        var _local3:Bitmap;
        super();
        this._1CF = new Vector.<Bitmap>();
        _local2 = 0;
        while (_local2 < 3) {
            _local1 = AssetLibrary._Rb("lofiCharBig", (this._bR + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, _QG, false);
            _local3 = new Bitmap(_local1);
            _local3.filters = [new ColorMatrixFilter(MoreColorUtil._1Bu)];
            this._1CF.push(_local3);
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 3) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 16) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, _QG, false);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 7) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 32) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, _QG, false);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 7) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 48) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, _QG, false);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 5) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 64) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, _QG, false);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        _local2 = 0;
        while (_local2 < 8) {
            _local1 = AssetLibrary._Rb("lofiCharBig", ((this._bR + 80) + _local2));
            _local1 = TextureRedrawer.redraw(_local1, this.size_, true, _QG, false);
            this._1CF.push(new Bitmap(_local1));
            _local2++;
        }
        ;
        this.reset();
        _local1 = AssetLibrary._Rb("lofiCharBig", 32);
        _local1 = TextureRedrawer.redraw(_local1, this.size_, true, _QG, false);
        this._1ym = new Bitmap(_local1);
        addChild(this._1ym);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var _1ym:Bitmap;
    public var size_:int = 150;
    private var _1CF:Vector.<Bitmap>;
    private var _pd:Number = 210;
    private var _14K:Number = 0;
    private var _i0:Number;

    public function reset():void {
        this._1rU(_1h);
    }

    public function setXPos(_arg1:Number):void {
        this.x = (_arg1 - (this.width / 2));
    }

    public function setYPos(_arg1:Number):void {
        this.y = (_arg1 - (this.height / 2));
    }

    public function getCenterX():Number {
        return ((this.x + (this.width / 2)));
    }

    public function getCenterY():Number {
        return ((this.y + (this.height / 2)));
    }

    public function _Qc(_arg1:int, _arg2:int):void {
        removeChild(this._1ym);
        this._1ym = this._1CF[(this._14K + uint(((_arg1 / this._pd) % this._i0)))];
        addChild(this._1ym);
    }

    public function setAnimationDuration(_arg1:Number):void {
        this._pd = _arg1;
    }

    public function setAnimation(_arg1:Number, _arg2:Number):void {
        this._14K = _arg1;
        this._i0 = _arg2;
    }

    public function _1rU(_arg1:int):void {
        switch (_arg1) {
            case _Ou:
                this.setAnimation(0, 0);
                this.setAnimationDuration(250);
                return;
            case _0nk:
                this.setAnimation(3, 3);
                this.setAnimationDuration(10);
                return;
            case _1U2:
                this.setAnimation(6, 7);
                this.setAnimationDuration(80);
                return;
            case _1h:
                this.setAnimation(13, 7);
                this.setAnimationDuration(210);
                return;
            case _M2:
                this.setAnimation(20, 13);
                this.setAnimationDuration(120);
                return;
            default:
                this.setAnimation(13, 7);
        }
        ;
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        this._1ym = null;
        this._1CF = null;
    }


}
}//package _04j

