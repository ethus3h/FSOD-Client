// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_20I._0Hi

package _20I {
public class _0Hi {

    public static const OWNED:_0Hi = new _0Hi(false, "OWNED", false);
    public static const UNLISTED:_0Hi = new _0Hi(true, "UNLISTED", false);
    public static const PURCHASABLE:_0Hi = new _0Hi(false, "PURCHASABLE", true);
    public static const PURCHASING:_0Hi = new _0Hi(true, "PURCHASING", true);
    public static const LOCKED:_0Hi = new _0Hi(true, "LOCKED", true);
    public static const NULL:_0Hi = new _0Hi(true, "NULL", true);

    public function _0Hi(_arg1:Boolean, _arg2:String, _arg3:Boolean) {
        this._15x = _arg1;
        this._0em = _arg3;
        this.name = _arg2;
    }
    private var _15x:Boolean;
    private var _0em:Boolean;
    private var name:String;

    public function _0XI():Boolean {
        return (this._15x);
    }

    public function _KQ():Boolean {
        return (this._0em);
    }

    public function toString():String {
        return ("[CharacterSkinState {NAME}]".replace("{NAME}", this.name));
    }


}
}//package _20I

