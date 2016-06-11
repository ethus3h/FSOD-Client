// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Jc.IconButton

package _1Jc {
import _0Mr._5R;

import _1i0._1PV;
import _1i0._GV;

import _1s5.*;

import _6u._TG;

import _Z0._0BS;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.MoreColorUtil;
import com.company.util._1N;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.geom.ColorTransform;

public class IconButton extends Sprite implements _1q5 {

    protected static const _0kl:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));

    public function IconButton(_arg1:BitmapData, _arg2:String, _arg3:String) {
        this._8c = new _1Ud();
        super();
        this._0QK = _arg1;
        this._11f = TextureRedrawer.redraw(this._0QK, (320 / this._0QK.width), true, 0);
        this._0nd = new Bitmap(this._11f);
        this._0nd.x = -12;
        this._0nd.y = -12;
        addChild(this._0nd);
        this._1CG = _arg3;
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
        this._0Mw(_arg2);
        this._8c._0qm(this);
        this._8c.tooltip = this.toolTip_;
    }
    public var _8c:_1Ud;
    protected var _0QK:BitmapData;
    protected var _11f:BitmapData;
    protected var _0nd:Bitmap;
    protected var _1CG:String;
    protected var _Cr:ColorTransform = null;
    private var toolTip_:_0BS = null;

    public function _1Pk(_arg1:ColorTransform):void {
        if (_arg1 == this._Cr) {
            return;
        }
        ;
        this._Cr = _arg1;
        if (this._Cr == null) {
            transform.colorTransform = MoreColorUtil.identity;
        } else {
            transform.colorTransform = this._Cr;
        }
        ;
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

    private function _0Mw(_arg1:String):void {
        if (_arg1 != "") {
            this.toolTip_ = new _0BS(0x363636, 0x9B9B9B, _arg1, "", 200);
        }
        ;
    }

    protected function onMouseOver(_arg1:MouseEvent):void {
        var _local2:String;
        this._1Pk(_0kl);
        if (this.toolTip_ != null) {
            _local2 = _1N._Dq[Parameters.data_[this._1CG]];
            this.toolTip_._1Nq(new _5R().setParams(_TG._0fi, {hotkey: _local2}));
        }
        ;
    }

    protected function onMouseOut(_arg1:MouseEvent):void {
        this._1Pk(null);
    }


}
}//package _1Jc

