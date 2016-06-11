// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1fY._Ca

package _1fY {
public class _Ca extends BaseDescription {

    public static function toString(_arg1:_088):String {
        return (new (_Ca)()._vE(_arg1).toString());
    }

    public function _Ca() {
        clear();
    }
    private var _1kE:String;

    override protected function append(_arg1:Object):void {
        _1kE = (_1kE + String(_arg1));
    }

    override public function toString():String {
        return (_1kE);
    }

    public function clear():void {
        _1kE = "";
    }


}
}//package _1fY

