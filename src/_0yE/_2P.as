// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0yE._2-P

package _0yE {
import _1qi._1K8;

import _gl._0An;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Player;
import com.company.util._1WM;

import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Shape;
import flash.display.Sprite;

public class _2P extends Sprite {

    public static const TILE_DOUBLE_CLICK:String = "TILE_DOUBLE_CLICK";
    public static const TILE_SINGLE_CLICK:String = "TILE_SINGLE_CLICK";
    public static const WIDTH:int = 40;
    public static const HEIGHT:int = 40;
    public static const BORDER:int = 4;

    public function _2P(_arg1:int, _arg2:_1K8) {
        this._1Xq = new GraphicsSolidFill(this.getBackgroundColor(), 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[this._1Xq, this.path_, _1WM.END_FILL];
        super();
        this._1lz = _arg1;
        this._1A8 = _arg2;
        this._H5 = new Shape();
        addChild(this._H5);
        this.setItemSprite(new _0Ej());
    }
    public var _Vc:_0Ej;
    public var _1lz:int;
    public var _1A8:_1K8;
    public var blockingItemUpdates:Boolean;
    private var _1Xq:GraphicsSolidFill;
    private var path_:GraphicsPath;
    private var graphicsData_:Vector.<IGraphicsData>;
    private var _H5:Shape;

    public function _QO(_arg1:Array):void {
        _1WM._0Kr(this.path_);
        _1WM._0lo(0, 0, WIDTH, HEIGHT, 4, _arg1, this.path_);
        graphics.clear();
        graphics.drawGraphicsData(this.graphicsData_);
        var _local2:GraphicsSolidFill = new GraphicsSolidFill(6036765, 1);
        _1WM._0Kr(this.path_);
        var _local3:Vector.<IGraphicsData> = new <IGraphicsData>[_local2, this.path_, _1WM.END_FILL];
        _1WM._0lo(0, 0, WIDTH, HEIGHT, 4, _arg1, this.path_);
        this._H5.graphics.drawGraphicsData(_local3);
        this._H5.cacheAsBitmap = true;
        this._H5.visible = false;
    }

    public function setItem(_arg1:int):Boolean {
        if (_arg1 == this._Vc.itemId) {
            return (false);
        }
        ;
        if (this.blockingItemUpdates) {
            return (true);
        }
        ;
        this._Vc.setType(_arg1);
        this._0IB(this._1A8.curPlayer);
        return (true);
    }

    public function setItemSprite(_arg1:_0Ej):void {
        this._Vc = _arg1;
        this._Vc.x = (WIDTH / 2);
        this._Vc.y = (HEIGHT / 2);
        addChild(this._Vc);
    }

    public function _0IB(_arg1:Player):void {
        if (this._Vc.itemId != _0An._5v) {
            this._H5.visible = !(ObjectLibrary._0KZ(this._Vc.itemId, _arg1));
        } else {
            this._H5.visible = false;
        }
        ;
    }

    public function canHoldItem(_arg1:int):Boolean {
        return (true);
    }

    public function _1iF():void {
        this.setItemSprite(this._Vc);
    }

    public function _mJ():int {
        return (this._Vc.itemId);
    }

    protected function getBackgroundColor():int {
        return (0x545454);
    }


}
}//package _0yE

