// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1OQ._yi

package _1OQ {
public class _yi {

    private static var _0lv:XML;


    public static function get xml():XML {
        return (_0lv);
    }

    public static function set xml(_arg1:XML):void {
        _0lv = _arg1;
    }

    public static function _16X(_arg1:String):Boolean {
        return (((!((_0lv == null))) && (_0lv.hasOwnProperty(_arg1))));
    }

    public static function _0Ft(_arg1:String):Number {
        return (Number(_0lv.child(_arg1).toString()));
    }


}
}//package _1OQ

