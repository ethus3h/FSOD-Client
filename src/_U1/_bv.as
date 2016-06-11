// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._bv

package _U1 {
import _1Sm._sy;

import com.company.ui._V2;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.net.URLRequest;
import flash.net.navigateToURL;

public class _bv extends Sprite {

    public static const WIDTH:int = 415;
    public static const HEIGHT:int = 52;
    public static const _0gj:uint = 0xB3B3B3;
    public static const _0pK:uint = 0xFFC800;

    public function _bv(_arg1:BitmapData, _arg2:String, _arg3:String, _arg4:String, _arg5:int, _arg6:String) {
        this._uI = new _sy(int);
        super();
        this.link = _arg4;
        this.accountId = _arg6;
        buttonMode = true;
        useHandCursor = true;
        tabEnabled = false;
        this._0nd = new Bitmap();
        this._0nd.bitmapData = _arg1;
        this._0nd.x = 12;
        this._0nd.y = (((HEIGHT / 2) - (_arg1.height / 2)) - 3);
        addChild(this._0nd);
        this._zj = new _V2(18, _0gj, false, 0, 0);
        this._zj.text = _arg2;
        this._zj._1B5();
        this._zj.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._zj.x = 73;
        addChild(this._zj);
        this.taglineText_ = new _V2(14, _0gj, false, 0, 0);
        this.taglineText_.text = _arg3;
        this.taglineText_._1B5();
        this.taglineText_.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this.taglineText_.x = 73;
        this.taglineText_.y = 24;
        addChild(this.taglineText_);
        this._Xi = new _V2(16, _0gj, false, 0, 0);
        this._Xi.text = this._c9(_arg5);
        this._Xi._1B5();
        this._Xi.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._Xi.x = (WIDTH - this._Xi.width);
        addChild(this._Xi);
        addEventListener(MouseEvent.MOUSE_OVER, this.onMouseOver);
        addEventListener(MouseEvent.ROLL_OUT, this.onRollOut);
        addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
    }
    public var _uI:_sy;
    public var _0nd:Bitmap;
    public var _zj:_V2;
    public var taglineText_:_V2;
    public var _Xi:_V2;
    public var link:String;
    public var accountId:String;

    private function _c9(_arg1:int):String {
        var _local2:Number = (new Date().getTime() / 1000);
        var _local3:int = (_local2 - _arg1);
        if (_local3 <= 0) {
            return ("now");
        }
        ;
        if (_local3 < 60) {
            return ((_local3 + " secs"));
        }
        ;
        if (_local3 < (60 * 60)) {
            return ((int((_local3 / 60)) + " mins"));
        }
        ;
        if (_local3 < ((60 * 60) * 24)) {
            return ((int((_local3 / (60 * 60))) + " hours"));
        }
        ;
        return ((int((_local3 / ((60 * 60) * 24))) + " days"));
    }

    protected function onMouseOver(_arg1:MouseEvent):void {
        this._zj.setColor(_0pK);
        this.taglineText_.setColor(_0pK);
        this._Xi.setColor(_0pK);
    }

    protected function onRollOut(_arg1:MouseEvent):void {
        this._zj.setColor(_0gj);
        this.taglineText_.setColor(_0gj);
        this._Xi.setColor(_0gj);
    }

    protected function onMouseDown(_arg1:MouseEvent):void {
        var _local2:Array = this.link.split(":", 2);
        switch (_local2[0]) {
            case "fame":
                this._uI.dispatch(int(_local2[1]));
                return;
            case "http":
            case "https":
            default:
                navigateToURL(new URLRequest(this.link), "_blank");
        }
        ;
    }


}
}//package _U1

