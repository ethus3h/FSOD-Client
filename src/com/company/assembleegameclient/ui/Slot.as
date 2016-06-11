// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui.Slot

package com.company.assembleegameclient.ui {
import _0CT._8w;

import _0Mr._1M;

import _0y9._JP;

import com.company.util.AssetLibrary;
import com.company.util.MoreColorUtil;
import com.company.util._1WM;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;
import flash.filters.ColorMatrixFilter;
import flash.geom.Matrix;
import flash.geom.Point;

public class Slot extends Sprite {

    public static const _2h:Matrix = new Matrix();
    public static const _1Y:int = 0;
    public static const _1VX:int = 1;
    public static const _16B:int = 2;
    public static const _1h5:int = 3;
    public static const _MK:int = 4;
    public static const _06X:int = 5;
    public static const _0Kk:int = 6;
    public static const _Sv:int = 7;
    public static const _06w:int = 8;
    public static const _0tY:int = 9;
    public static const _2s:int = 10;
    public static const _W4:int = 11;
    public static const _Hp:int = 12;
    public static const _0sG:int = 13;
    public static const _1yU:int = 14;
    public static const _0c7:int = 15;
    public static const _0Td:int = 16;
    public static const _Qb:int = 17;
    public static const _0GM:int = 18;
    public static const _JN:int = 19;
    public static const _0UC:int = 20;
    public static const _0He:int = 21;
    public static const _11v:int = 22;
    public static const _sa:int = 23;
    public static const _Gv:int = 24;
    public static const WIDTH:int = 40;
    public static const HEIGHT:int = 40;
    public static const BORDER:int = 4;
    private static const _1E0:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._12s(0x363636));

    public static function _1zu(_arg1:int):String {
        switch (_arg1) {
            case _1Y:
                return ("Any");
            case _1VX:
                return ("Sword");
            case _16B:
                return ("Dagger");
            case _1h5:
                return ("Bow");
            case _MK:
                return ("Tome");
            case _06X:
                return ("Shield");
            case _0Kk:
                return ("Leather Armor");
            case _Sv:
                return ("Armor");
            case _06w:
                return ("Wand");
            case _0tY:
                return ("Accessory");
            case _2s:
                return ("Potion");
            case _W4:
                return ("Spell");
            case _Hp:
                return ("Holy Seal");
            case _0sG:
                return ("Cloak");
            case _1yU:
                return ("Robe");
            case _0c7:
                return ("Quiver");
            case _0Td:
                return ("Helm");
            case _Qb:
                return ("Staff");
            case _0GM:
                return ("Poison");
            case _JN:
                return ("Skull");
            case _0UC:
                return ("Trap");
            case _0He:
                return ("Orb");
            case _11v:
                return ("Prism");
            case _sa:
                return ("Scepter");
            case _Gv:
                return ("Shuriken");
        }
        ;
        return ("Invalid Type!");
    }

    public function Slot(_arg1:int, _arg2:int, _arg3:Array) {
        this._1Xq = new GraphicsSolidFill(0x545454, 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[this._1Xq, this.path_, _1WM.END_FILL];
        super();
        this.type_ = _arg1;
        this._1XC = _arg2;
        this._0z4 = _arg3;
        this._QO();
    }
    public var type_:int;
    public var _1XC:int;
    public var _0z4:Array;
    public var _0a3:Bitmap;
    protected var _1Xq:GraphicsSolidFill;
    protected var path_:GraphicsPath;
    private var graphicsData_:Vector.<IGraphicsData>;

    protected function _0Yx(_arg1:int, _arg2:int, _arg3:Boolean):Point {
        var _local4:Point = new Point();
        switch (_arg2) {
            case _0tY:
                _local4.x = (((_arg1) == 2878) ? 0 : -2);
                _local4.y = ((_arg3) ? -2 : 0);
                break;
            case _W4:
                _local4.y = -2;
                break;
        }
        ;
        return (_local4);
    }

    protected function _QO():void {
        var _local4:Point;
        var _local5:_JP;
        _1WM._0Kr(this.path_);
        _1WM._0lo(0, 0, WIDTH, HEIGHT, 4, this._0z4, this.path_);
        graphics.clear();
        graphics.drawGraphicsData(this.graphicsData_);
        var _local1:BitmapData;
        var _local2:int;
        var _local3:int;
        switch (this.type_) {
            case _1Y:
                break;
            case _1VX:
                _local1 = AssetLibrary._Rb("lofiObj5", 48);
                break;
            case _16B:
                _local1 = AssetLibrary._Rb("lofiObj5", 96);
                break;
            case _1h5:
                _local1 = AssetLibrary._Rb("lofiObj5", 80);
                break;
            case _MK:
                _local1 = AssetLibrary._Rb("lofiObj6", 80);
                break;
            case _06X:
                _local1 = AssetLibrary._Rb("lofiObj6", 112);
                break;
            case _0Kk:
                _local1 = AssetLibrary._Rb("lofiObj5", 0);
                break;
            case _Sv:
                _local1 = AssetLibrary._Rb("lofiObj5", 32);
                break;
            case _06w:
                _local1 = AssetLibrary._Rb("lofiObj5", 64);
                break;
            case _0tY:
                _local1 = AssetLibrary._Rb("lofiObj", 44);
                break;
            case _W4:
                _local1 = AssetLibrary._Rb("lofiObj6", 64);
                break;
            case _Hp:
                _local1 = AssetLibrary._Rb("lofiObj6", 160);
                break;
            case _0sG:
                _local1 = AssetLibrary._Rb("lofiObj6", 32);
                break;
            case _1yU:
                _local1 = AssetLibrary._Rb("lofiObj5", 16);
                break;
            case _0c7:
                _local1 = AssetLibrary._Rb("lofiObj6", 48);
                break;
            case _0Td:
                _local1 = AssetLibrary._Rb("lofiObj6", 96);
                break;
            case _Qb:
                _local1 = AssetLibrary._Rb("lofiObj5", 112);
                break;
            case _0GM:
                _local1 = AssetLibrary._Rb("lofiObj6", 128);
                break;
            case _JN:
                _local1 = AssetLibrary._Rb("lofiObj6", 0);
                break;
            case _0UC:
                _local1 = AssetLibrary._Rb("lofiObj6", 16);
                break;
            case _0He:
                _local1 = AssetLibrary._Rb("lofiObj6", 144);
                break;
            case _11v:
                _local1 = AssetLibrary._Rb("lofiObj6", 176);
                break;
            case _sa:
                _local1 = AssetLibrary._Rb("lofiObj6", 192);
                break;
        }
        ;
        if (this._0a3 == null) {
            if (_local1 != null) {
                _local4 = this._0Yx(-1, this.type_, true);
                this._0a3 = new Bitmap(_local1);
                this._0a3.x = (BORDER + _local4.x);
                this._0a3.y = (BORDER + _local4.y);
                this._0a3.scaleX = 4;
                this._0a3.scaleY = 4;
                this._0a3.filters = [_1E0];
                addChild(this._0a3);
            } else {
                if (this._1XC > 0) {
                    _local5 = _8w._1Sz().getInstance(_JP);
                    _local1 = _local5.make(new _1M(String(this._1XC)), 26, 0x363636, true, _2h, false);
                    this._0a3 = new Bitmap(_local1);
                    this._0a3.x = ((WIDTH / 2) - (_local1.width / 2));
                    this._0a3.y = ((HEIGHT / 2) - 18);
                    addChild(this._0a3);
                }
                ;
            }
            ;
        }
        ;
    }


}
}//package com.company.assembleegameclient.ui

