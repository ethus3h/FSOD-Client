// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_08f._0Lr

package _08f {
public class _0Lr {

    public function _0Lr(_arg1, _arg2:Boolean = false, _arg3:Boolean = false, _arg4:Boolean = false, _arg5:Boolean = false) {
        this._key = String(_arg1).toUpperCase();
        if ((_arg1 is uint)) {
            this._11W = true;
        } else {
            if (((!(_arg1)) || (!((this._key.length == 1))))) {
                throw (new Error((("KeyBind: character (first char) must be a single character. You gave [" + _arg1) + "]")));
            }
            ;
        }
        ;
        if (this._11W) {
            this._key = ("keycode:" + this._key);
        }
        ;
        if (_arg2) {
            this._key = (this._key + "+shift");
        }
        ;
        if (_arg3) {
            this._key = (this._key + "+ctrl");
        }
        ;
        if (_arg4) {
            this._key = (this._key + "+alt");
        }
        ;
        if (_arg5) {
            this._key = (this._key + "+up");
        }
        ;
    }
    private var _11W:Boolean;

    private var _key:String;

    public function get key():String {
        return (this._key);
    }

    public function get _3R():Boolean {
        return (this._11W);
    }


}
}//package _08f

