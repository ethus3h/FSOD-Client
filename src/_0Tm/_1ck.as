// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Tm._1ck

package _0Tm {
public class _1ck {

    static const _iS:Array = new Array([1803850500, 1338077322, 130584833, 1573671550, 1004388286, 937195147, -113082819, -1642972377, 1142705124, -1785420158, 795790437, -545807371, 1702974839, -2001847317, -685583621, 1300950923, 149217659, -1486488011, -877371658, 804364431, -398951212, -694526147, 2018204590, 768379540, -1796056246, 599890944, -796572508, -331431227], [937712125, 1746571701, 1450997917, -2039787741, -1493090704, 393603444, 1163230804, 486694079, -697856976, 1640914124, -2113661618, -1405235805, -1937431392, 1863403257, -1924916924, 1988788386, 1101810995, -2041664576, -590136626, 911715808, -1230014281, 441361245, 24761594, -2081198893]);
    static const _jF:Array = new Array([-1022959477, 1253088067, -1177430475, -1260447656], [1272674068, 1843735196, -402183057, -472085322]);


    public static function _0ZP(_arg1:int, _arg2:int):String {
        var _local3:String;
        var _local4:int;
        var _local5:int;
        var _local6:int;
        var _local7:int;
        var _local8:*;
        var _local9:*;
        _local3 = "";
        _local4 = 0;
        _local5 = _iS[((_arg1 - 5) ^ -442)].length;
        while (_local4 < _local5) {
            _local6 = int(_iS[((_arg1 - 5) ^ -442)][_local4]);
            _local4++;
            _local7 = int(_iS[((_arg1 - 5) ^ -442)][_local4]);
            _local8 = 2654435769;
            _local9 = 84941944608;
            while (_local9 != 0) {
                _local7 = (_local7 - ((((_local6 << 4) ^ (_local6 >>> 5)) + _local6) ^ (_local9 + int(_jF[((_arg2 + 3) ^ 627)][((_local9 >>> 11) & 3)]))));
                _local9 = (_local9 - _local8);
                _local6 = (_local6 - ((((_local7 << 4) ^ (_local7 >>> 5)) + _local7) ^ (_local9 + int(_jF[((_arg2 + 3) ^ 627)][(_local9 & 3)]))));
            }
            ;
            _local3 = (_local3 + (String.fromCharCode(_local6) + String.fromCharCode(_local7)));
            _local4++;
        }
        ;
        if (_local3.charCodeAt((_local3.length - 1)) == 0) {
            _local3 = _local3.substring(0, (_local3.length - 1));
        }
        ;
        return (_local3);
    }


}
}//package _0Tm

