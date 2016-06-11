// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_175._05x

package _175 {
import flash.net.SharedObject;
import flash.utils.Dictionary;

public class _05x implements _0CN {

    public static const _5V:String = "en";

    public function _05x() {
        this._0W4 = this._Yx();
        super();
        try {
            this._0E = SharedObject.getLocal("RotMG", "/");
        } catch (error:Error) {
        }
        ;
    }
    private var _0E:SharedObject;
    private var language:String;
    private var _0W4:Dictionary;

    public function _1Es():String {
        return ((this.language = ((this.language) || (this._01O()))));
    }

    public function _0U8(_arg1:String):void {
        this.language = _arg1;
        try {
            this._0E.data.locale = _arg1;
            this._0E.flush();
        } catch (error:Error) {
        }
        ;
    }

    public function _0nw():String {
        return (this._1Es().substr(0, 2).toLowerCase());
    }

    public function _0PA():Vector.<String> {
        var _local2:String;
        var _local1:Vector.<String> = new Vector.<String>();
        for (_local2 in this._0W4) {
            _local1.push(_local2);
        }
        ;
        return (_local1);
    }

    public function _0Th(_arg1:String):String {
        return (this._0W4[_arg1]);
    }

    public function _0SL(_arg1:String):String {
        var _local2:String;
        var _local3:String;
        for (_local3 in this._0W4) {
            if (this._0W4[_local3] == _arg1) {
                _local2 = _local3;
            }
            ;
        }
        ;
        return (_local2);
    }

    private function _01O():String {
        return (((this._0E.data.locale) || (_5V)));
    }

    private function _Yx():Dictionary {
        var _local1:Dictionary = new Dictionary();
        _local1["Languages.English"] = "en";
        _local1["Languages.French"] = "fr";
        _local1["Languages.Spanish"] = "es";
        _local1["Languages.Italian"] = "it";
        _local1["Languages.German"] = "de";
        _local1["Languages.Turkish"] = "tr";
        _local1["Languages.Russian"] = "ru";
        return (_local1);
    }


}
}//package _175

