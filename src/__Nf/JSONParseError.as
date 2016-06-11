// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Nf.JSONParseError

package __Nf {
public class JSONParseError extends Error {

    public function JSONParseError(_arg1:String = "", _arg2:int = 0, _arg3:String = "") {
        super(_arg1);
        name = "JSONParseError";
        this._location = _arg2;
        this._text = _arg3;
    }

    private var _location:int;

    public function get location():int {
        return (this._location);
    }

    private var _text:String;

    public function get text():String {
        return (this._text);
    }


}
}//package _Nf

