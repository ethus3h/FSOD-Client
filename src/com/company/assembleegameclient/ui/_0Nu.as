// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._0Nu

package com.company.assembleegameclient.ui {
import _0Mr._1M;

import _0y9._JP;

import _1Ea._1V1;

import _1i0._1PV;
import _1i0._GV;

import _1s5.*;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Player;
import com.company.util.MoreColorUtil;
import com.company.util._1WM;
import com.company.util._dT;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.CapsStyle;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.GraphicsStroke;
import flash.display.IGraphicsData;
import flash.display.JointStyle;
import flash.display.LineScaleMode;
import flash.display.Shape;
import flash.geom.Matrix;
import flash.geom.Point;

public class _0Nu extends Slot implements _1q5 {

    private static const _2h:Matrix = new Matrix();
    public static const _Jc:int = -1;
    private static const _0VR:Matrix = _1wa();

    public const _8c:_1Ud = new _1Ud();

    private static function _1wa():Matrix {
        var _local1:Matrix = new Matrix();
        _local1.translate(10, 5);
        return (_local1);
    }

    public function _0Nu(_arg1:int, _arg2:Boolean, _arg3:Boolean, _arg4:int, _arg5:int, _arg6:Array, _arg7:uint) {
        this._04F = new _0Qy();
        this._1Dm = new GraphicsSolidFill(16711310, 1);
        this._1jo = new GraphicsStroke(2, false, LineScaleMode.NORMAL, CapsStyle.NONE, JointStyle.ROUND, 3, this._1Dm);
        this._01R = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[this._1jo, this._01R, _1WM._0c2];
        super(_arg4, _arg5, _arg6);
        this.id = _arg7;
        this.item_ = _arg1;
        this.included_ = _arg3;
        this._0Ls();
        if (!_arg2) {
            transform.colorTransform = MoreColorUtil._1KY;
        }
        ;
        this._17a = this._1LZ();
        addChild(this._17a);
        this.setIncluded(_arg3);
        this._8c._0qm(this);
    }
    public var included_:Boolean;
    public var _04F:_0Qy;
    private var id:uint;
    private var item_:int;
    private var _17a:Shape;
    private var _1Dm:GraphicsSolidFill;
    private var _1jo:GraphicsStroke;
    private var _01R:GraphicsPath;
    private var graphicsData_:Vector.<IGraphicsData>;
    private var _0yy:_JP;

    public function setIncluded(_arg1:Boolean):void {
        this.included_ = _arg1;
        this._17a.visible = this.included_;
        if (this.included_) {
            _1Xq.color = 16764247;
        } else {
            _1Xq.color = 0x545454;
        }
        ;
        _QO();
    }

    public function _Rw(_arg1:_JP):void {
        this._0yy = _arg1;
        this._0Ls();
    }

    public function _1Tg(_arg1:_1PV):void {
        this._8c._1Tg(_arg1);
    }

    public function _1ml():_1PV {
        return (this._8c._1ml());
    }

    public function _Md(_arg1:_GV):void {
        this._8c._Md(_arg1);
    }

    public function _0ec():_GV {
        return (this._8c._0ec());
    }

    public function _8B(_arg1:Player):void {
        if (!this.isEmpty()) {
            this._8c.tooltip = this._04F.make(this.item_, _arg1, -1, _1V1.OTHER_PLAYER, this.id);
        }
        ;
    }

    public function isEmpty():Boolean {
        return ((this.item_ == _Jc));
    }

    private function _0Ls():void {
        if (!this.isEmpty()) {
            this._0C1();
        }
        ;
    }

    private function _0C1():void {
        var _local3:Point;
        var _local4:Bitmap;
        var _local5:BitmapData;
        _dT._vn(this, _0a3);
        var _local1:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.item_, 80, true);
        var _local2:XML = ObjectLibrary._18H[this.item_];
        if (((_local2.hasOwnProperty("Doses")) && (this._0yy))) {
            _local1 = _local1.clone();
            _local5 = this._0yy.make(new _1M(String(_local2.Doses)), 12, 0xFFFFFF, false, _2h, false);
            _local1.draw(_local5, _0VR);
        }
        ;
        _local3 = _0Yx(this.item_, type_, false);
        _local4 = new Bitmap(_local1);
        _local4.x = (((WIDTH / 2) - (_local4.width / 2)) + _local3.x);
        _local4.y = (((HEIGHT / 2) - (_local4.height / 2)) + _local3.y);
        _dT._1gf(this, _local4);
    }

    private function _1LZ():Shape {
        var _local1:Shape = new Shape();
        _1WM._0Kr(this._01R);
        _1WM._0lo(0, 0, WIDTH, HEIGHT, 4, _0z4, this._01R);
        _local1.graphics.drawGraphicsData(this.graphicsData_);
        return (_local1);
    }


}
}//package com.company.assembleegameclient.ui

