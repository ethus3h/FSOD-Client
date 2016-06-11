// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_6u._00t

package _6u {
import flash.text.Font;
import flash.text.TextField;
import flash.text.TextFormat;

public class _00t {

    public static const MyriadPro:Class = _0zs;
    public static const MyriadPro_Bold:Class = _iT;

    public function _00t() {
        Font.registerFont(MyriadPro);
        Font.registerFont(MyriadPro_Bold);
        var _local1:Font = new MyriadPro();
        this._wR = new _03W();
        this._wR.setName(_local1.fontName);
    }
    private var _wR:_03W;

    public function _0OE():_03W {
        return (this._wR);
    }

    public function apply(_arg1:TextField, _arg2:int, _arg3:uint, _arg4:Boolean, _arg5:Boolean = false):TextFormat {
        var _local6:TextFormat = _arg1.defaultTextFormat;
        _local6.size = _arg2;
        _local6.color = _arg3;
        _local6.font = this._0OE().getName();
        _local6.bold = _arg4;
        if (_arg5) {
            _local6.align = "center";
        }
        ;
        _arg1.defaultTextFormat = _local6;
        _arg1.setTextFormat(_local6);
        return (_local6);
    }

    public function _h(_arg1:TextField, _arg2:int, _arg3:uint, _arg4:Boolean):TextFormat {
        var _local5:TextFormat = _arg1.defaultTextFormat;
        _local5.size = _arg2;
        _local5.color = _arg3;
        _local5.font = this._0OE().getName();
        _local5.bold = _arg4;
        return (_local5);
    }


}
}//package _6u

