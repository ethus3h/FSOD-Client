﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ga._0Qi

package _0ga {
import _4p.*;

import com.company.assembleegameclient.parameters.Parameters;

public class _0Qi implements _1ae {

    private const _1jv:String = "rotmgtesting.appspot.com";
    private const _C8:String = ("http://" + _1jv);
    private const _1YT:String = ("https://" + _1jv);
    private const _BP:String = "UA-99999999-1";
    private const _0y:String = "<font color='#FFEE00'>TESTING APP ENGINE, PRIVATE SERVER</font> #{VERSION}";


    public function _kx(_arg1:Boolean = false):String {
        return (((_arg1) ? this._C8 : this._1YT));
    }

    public function _RF():String {
        return (this._BP);
    }

    public function _0aV():String {
        var _local1:String = ((Parameters._1Q2 + ".") + Parameters._0te);
        return (this._0y.replace("{VERSION}", _local1));
    }

    public function _0j8():Boolean {
        return (true);
    }

    public function _yP():Boolean {
        return (true);
    }

    public function _1PZ():Boolean {
        return (true);
    }

    public function _0Hb():Boolean {
        return (false);
    }

    public function _2q():Boolean {
        return (false);
    }

    public function _0X5():Boolean {
        return (true);
    }

    public function _Oo():Boolean {
        return (true);
    }


}
}//package _0ga
