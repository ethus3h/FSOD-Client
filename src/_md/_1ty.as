// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_md._1ty

package _md {
public class _1ty {

    public static function make(_arg1:String, _arg2:String, _arg3:int = -1, _arg4:int = -1, _arg5:String = "", _arg6:Boolean = false, _arg7:Object = null, _arg8:Boolean = false):_1ty {
        var _local9:_1ty = new (_1ty)();
        _local9.name = _arg1;
        _local9.text = _arg2;
        _local9.objectId = _arg3;
        _local9.numStars = _arg4;
        _local9._1YE = _arg5;
        _local9._1et = _arg6;
        _local9._17h = _arg8;
        _local9.tokens = (((_arg7 == null)) ? {} : _arg7);
        return (_local9);
    }
    public var name:String;
    public var text:String;
    public var objectId:int = -1;
    public var numStars:int = -1;
    public var _1YE:String = "";
    public var _1et:Boolean;
    public var _17h:Boolean;
    public var tokens:Object;


}
}//package _md

