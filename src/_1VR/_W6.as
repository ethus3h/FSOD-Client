// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1VR._W6

package _1VR {
import _0Mr._1M;
import _0Mr._5R;

import _0y9._06T;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.MoreColorUtil;
import com.company.util._1V;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;

public class _W6 extends Sprite {

    protected static const _0kl:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));

    public function _W6(_arg1:BitmapData, _arg2:uint, _arg3:String, _arg4:Boolean = false) {
        this._0QK = _arg1;
        this._11f = TextureRedrawer.redraw(_arg1, this._0T5(), true, 0);
        this._0nd = new Bitmap(this._11f);
        this._0nd.filters = [new DropShadowFilter(0, 0, 0)];
        this._0nd.x = -12;
        this._0nd.y = -12;
        addChild(this._0nd);
        this.text_ = new _06T().setSize(18).setColor(_arg2);
        this.text_.setBold(true);
        this.text_.setStringBuilder(new _5R().setParams(_arg3));
        if (_arg4) {
            this.text_.setStringBuilder(new _1M(_arg3));
        }
        ;
        this.text_.filters = [new DropShadowFilter(0, 0, 0)];
        this.text_.x = 20;
        this.text_.y = -6;
        addChild(this.text_);
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.MOUSE_OUT, this.onMouseOut);
    }
    protected var _0QK:BitmapData;
    protected var _11f:BitmapData;
    protected var _0nd:Bitmap;
    protected var text_:_06T;
    protected var _Cr:ColorTransform = null;

    public function _1Pk(_arg1:ColorTransform):void {
        var _local2:BitmapData;
        if (_arg1 == this._Cr) {
            return;
        }
        ;
        this._Cr = _arg1;
        if (this._Cr == null) {
            this._0nd.bitmapData = this._11f;
            this.text_.transform.colorTransform = MoreColorUtil.identity;
        } else {
            _local2 = _1V._EJ(this._0QK, this._Cr);
            _local2 = TextureRedrawer.redraw(_local2, this._0T5(), true, 0);
            this._0nd.bitmapData = _local2;
            this.text_.transform.colorTransform = this._Cr;
        }
        ;
    }

    protected function _0T5():int {
        return ((40 / (this._0QK.width / 8)));
    }

    protected function onMouseOver(_arg1:MouseEvent):void {
        this._1Pk(_0kl);
    }

    protected function onMouseOut(_arg1:MouseEvent):void {
        this._1Pk(null);
    }


}
}//package _1VR

