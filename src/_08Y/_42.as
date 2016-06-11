// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_08Y._42

package _08Y {
import _1L3._tM;

import flash.utils.Dictionary;

public class _42 {

    private static const _1gM:Dictionary = _1qJ();
    private static const _0hy:Dictionary = _1Mt();

    public static function _1ZP(_arg1:_tM):int {
        return (((_0hy[_arg1]) ? _0hy[_arg1].gold : 0));
    }

    public static function _0Xn(_arg1:_tM):int {
        return (((_0hy[_arg1]) ? _0hy[_arg1].fame : 0));
    }

    public static function _4Y(_arg1:_tM):int {
        return (_1gM[_arg1].gold);
    }

    public static function _1Pz(_arg1:_tM):int {
        return (_1gM[_arg1].fame);
    }

    private static function _1Mt():Dictionary {
        var _local1:Dictionary = new Dictionary();
        _local1[_tM._0gy] = {
            gold: 100,
            fame: 300
        };
        _local1[_tM._0hZ] = {
            gold: 240,
            fame: 1000
        };
        _local1[_tM._jm] = {
            gold: 600,
            fame: 4000
        };
        _local1[_tM._0r] = {
            gold: 1800,
            fame: 15000
        };
        return (_local1);
    }

    private static function _1qJ():Dictionary {
        var _local1:Dictionary = new Dictionary();
        _local1[_tM._0gy] = {
            gold: 5,
            fame: 10
        };
        _local1[_tM._0hZ] = {
            gold: 12,
            fame: 30
        };
        _local1[_tM._jm] = {
            gold: 30,
            fame: 100
        };
        _local1[_tM._0r] = {
            gold: 60,
            fame: 350
        };
        _local1[_tM._1dK] = {
            gold: 150,
            fame: 1000
        };
        return (_local1);
    }


}
}//package _08Y

