// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_6u._03W

package _6u {
import flash.display.BitmapData;
import flash.geom.Rectangle;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;

public class _03W {

    private static const _0os:Number = 200;
    private static const _Jl:Number = 2;

    protected var name:String;
    private var textColor:uint = 0;
    private var _1Ca:Number;
    private var _5a:Number;


    public function setName(_arg1:String):void {
        this.name = _arg1;
        this._027();
    }

    public function getName():String {
        return (this.name);
    }

    public function _0Vs(_arg1:Number):Number {
        return ((this._1Ca * _arg1));
    }

    public function _Dn(_arg1:Number):Number {
        return ((this._5a * _arg1));
    }

    private function _027():void {
        var _local1:TextField = this._1rJ();
        var _local2:BitmapData = new _0Iy(_local1.width, _local1.height);
        _local2.draw(_local1);
        var _local3:uint = 0xFFFFFF;
        var _local4:Rectangle = _local2.getColorBoundsRect(_local3, this.textColor, true);
        this._1Ca = this._0W0(_local4.height);
        this._5a = this._0W0(((_local1.height - _local4.bottom) - _Jl));
    }

    private function _1rJ():TextField {
        var _local1:TextField = new TextField();
        _local1.autoSize = TextFieldAutoSize.LEFT;
        _local1.text = "x";
        _local1.textColor = this.textColor;
        _local1.setTextFormat(new TextFormat(this.name, _0os));
        return (_local1);
    }

    private function _0W0(_arg1:Number):Number {
        return ((_arg1 / _0os));
    }


}
}//package _6u

