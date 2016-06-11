// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Nf.JSON

package __Nf {
public class JSON {


    public static function encode(_arg1:Object):String {
        var _local2:_1zp = new _1zp(_arg1);
        return (_local2.getString());
    }

    public static function decode(_arg1:String) {
        var _local2:_04 = new _04(_arg1);
        return (_local2.getValue());
    }


}
}//package _Nf

