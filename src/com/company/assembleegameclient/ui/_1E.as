// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._1-E

package com.company.assembleegameclient.ui {
import _0y9._06T;

import com.company.util._1WM;

import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;
import flash.text.TextFieldAutoSize;

public class _1E extends Sprite {

    protected static const _vQ:int = 4;

    public function _1E(_arg1:int):void {
        this._137 = new GraphicsSolidFill(0xFFFFFF, 1);
        this._1Af = new GraphicsSolidFill(0x7F7F7F, 1);
        this.path_ = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        this.graphicsData_ = new <IGraphicsData>[_137, path_, _1WM.END_FILL];
        super();
        this._Ml = _arg1;
    }
    public var _Ml:int = 0;
    protected var graphicsData_:Vector.<IGraphicsData>;
    protected var text_:_06T;
    protected var w_:int;
    protected var _137:GraphicsSolidFill;
    protected var _1Af:GraphicsSolidFill;
    protected var path_:GraphicsPath;

    public function _1pL(_arg1:int):void {
        this.text_ = this.makeText().setSize(_arg1).setColor(0x363636);
        this.text_.setBold(true);
        this.text_.setAutoSize(TextFieldAutoSize.CENTER);
        this.text_.y = _vQ;
        addChild(this.text_);
    }

    protected function _FA():void {
        this.w_ = (((this._Ml) != 0) ? this._Ml : (this.text_.width + 12));
        this.text_.x = (this.w_ / 2);
        _1WM._0Kr(this.path_);
        _1WM._0lo(0, 0, this.w_, (this.text_.height + (_vQ * 2)), 4, [1, 1, 1, 1], this.path_);
    }

    protected function makeText():_06T {
        return (new _06T());
    }


}
}//package com.company.assembleegameclient.ui

