// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ga._0UA

package _0ga {
import _4p.*;

import com.company.assembleegameclient.parameters.Parameters;

public class _0UA implements _1ae {

    private const _1jv:String = "127.0.0.1";
    private const _C8:String = ("http://" + _1jv);
    private const _1YT:String = ("http://" + _1jv);
    private const _BP:String = "UA-11236645-4";
    private const _0y:String = "<font color='#00CCFF'>Fabiano Swagger of Doom</font> #{VERSION}.{MINORVERSION}";


    public function _kx(_arg1:Boolean = false):String {
        return (((_arg1) ? this._C8 : this._1YT));
    }

    public function _RF():String {
        return (this._BP);
    }

    public function _0aV():String {
        return (this._0y.replace("{VERSION}", Parameters._1Q2).replace("{MINORVERSION}", Parameters._0te));
    }

    public function _0j8():Boolean {
        return (false);
    }

    public function _yP():Boolean {
        return (false);
    }

    public function _1PZ():Boolean {
        return (false);
    }

    public function _0Hb():Boolean {
        return (true);
    }

    public function _2q():Boolean {
        return (false);
    }

    public function _0X5():Boolean {
        return (false);
    }

    public function _Oo():Boolean {
        return (false);
    }


}
}//package _0ga

