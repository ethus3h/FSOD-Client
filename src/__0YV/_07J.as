// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0YV._07J

package __0YV {
import _2B._Pk;

public final class _07J {

    public static const _Hq:String = "localhost";
    public static const _cS:String = "private";
    public static const _nd:String = "dev";
    public static const _1Nh:String = "testing";
    public static const TESTING2:String = "testing2";
    public static const _X0:String = "prodtest";
    public static const _0IS:String = "production";
    private static const _0U:RegExp = /[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/;


    public function _1NV(_arg1:String):_Pk {
        return (((this._wf(_arg1)) ? _Pk._gu : this._0au(_arg1)));
    }

    private function _wf(_arg1:String):Boolean {
        return (!((_arg1.match(_0U) == null)));
    }

    private function _0au(_arg1:String):_Pk {
        switch (_arg1) {
            case _Hq:
                return (_Pk._Hq);
            case _cS:
                return (_Pk._cS);
            case _nd:
                return (_Pk._nd);
            case _1Nh:
                return (_Pk._1Nh);
            case TESTING2:
                return (_Pk.TESTING2);
            case _X0:
                return (_Pk._X0);
            case _0IS:
                return (_Pk._0IS);
        }
        ;
        return (null);
    }


}
}//package _0YV

