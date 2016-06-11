// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Js._0AL

package _1Js {
import flash.display.BitmapData;
import flash.utils.ByteArray;

public class _0AL {

    private static const _1I:int = 1229472850;
    private static const _0AP:int = 1229209940;
    private static const _T6:int = 1950701684;
    private static const _1T4:int = 1767135348;
    private static const _19M:int = 2052348020;
    private static const _0xp:int = 1229278788;

    private static var _1Wi:uint;
    private static var _3i:uint;
    private static var _QX:int;
    private static var _13s:int;
    private static var _0TT:int;
    private static var _78:int;
    private static var _1QH:int;
    private static var _0xX:ByteArray;
    private static var buffer:ByteArray;
    private static var _1lX:int;
    private static var _04C:int;


    public static function _0as(_arg1:ByteArray):BitmapData {
        var _local4:Boolean;
        var _local5:int;
        if (_arg1 == null) {
            return (null);
        }
        ;
        _0xX = _arg1;
        buffer = new ByteArray();
        _04C = 4;
        _0xX.position = 0;
        if (_0xX.readUnsignedInt() != 2303741511) {
            return (_18S());
        }
        ;
        if (_0xX.readUnsignedInt() != 218765834) {
            return (_18S());
        }
        ;
        var _local2:Array = _0cw();
        var _local3:int;
        _local5 = 0;
        while (_local5 < _local2.length) {
            _0xX.position = _local2[_local5].position;
            _local4 = true;
            if (_local2[_local5].type == _1I) {
                _local3++;
                if (_local5 == 0) {
                    _local4 = _aF(_local2[_local5].length);
                } else {
                    _local4 = false;
                }
                ;
            }
            ;
            if (_local2[_local5].type == _0AP) {
                buffer.writeBytes(_0xX, _0xX.position, _local2[_local5].length);
            }
            ;
            if (((!(_local4)) || ((_local3 > 1)))) {
                return (_18S());
            }
            ;
            _local5++;
        }
        ;
        var _local6:BitmapData = _Nd();
        _0xX = null;
        buffer = null;
        return (_local6);
    }

    public static function _1yo(_arg1:ByteArray):XML {
        var _local4:int;
        if (_arg1 == null) {
            return (null);
        }
        ;
        _0xX = _arg1;
        _0xX.position = 0;
        if (_0xX.readUnsignedInt() != 2303741511) {
            _0xX = null;
            return (null);
        }
        ;
        if (_0xX.readUnsignedInt() != 218765834) {
            _0xX = null;
            return (null);
        }
        ;
        var _local2:Array = _0cw();
        var _local3:XML = <information/>
                ;
        _local4 = 0;
        while (_local4 < _local2.length) {
            if (_local2[_local4].type == _T6) {
                _local3.appendChild(_iE(_local2[_local4].position, _local2[_local4].length));
            }
            ;
            if (_local2[_local4].type == _1T4) {
                _local3.appendChild(_g0(_local2[_local4].position, _local2[_local4].length));
            }
            ;
            if (_local2[_local4].type == _19M) {
                _local3.appendChild(_1xP(_local2[_local4].position, _local2[_local4].length));
            }
            ;
            _local4++;
        }
        ;
        _0xX = null;
        return (_local3);
    }

    private static function _iE(_arg1:int, _arg2:int):XML {
        var _local3:XML = <tEXt/>
                ;
        var _local4 = "";
        var _local5 = "";
        var _local6:int = -1;
        _0xX.position = _arg1;
        while (_0xX.position < (_arg1 + _arg2)) {
            _local6 = _0xX.readUnsignedByte();
            if (_local6 > 0) {
                _local4 = (_local4 + String.fromCharCode(_local6));
            } else {
                break;
            }
            ;
        }
        ;
        _local5 = _0xX.readUTFBytes(((_arg1 + _arg2) - _0xX.position));
        _local3.appendChild(new XML((("<keyword>" + _local4) + "</keyword>")));
        _local3.appendChild(new XML((("<text>" + _local5) + "</text>")));
        return (_local3);
    }

    private static function _1xP(_arg1:int, _arg2:int):XML {
        var _local8:ByteArray;
        var _local3:XML = <zTXt/>
                ;
        var _local4 = "";
        var _local5 = "";
        var _local6:int = -1;
        _0xX.position = _arg1;
        while (_0xX.position < (_arg1 + _arg2)) {
            _local6 = _0xX.readUnsignedByte();
            if (_local6 > 0) {
                _local4 = (_local4 + String.fromCharCode(_local6));
            } else {
                break;
            }
            ;
        }
        ;
        var _local7:int = _0xX.readUnsignedByte();
        if (_local7 == 0) {
            _local8 = new ByteArray();
            _local8.writeBytes(_0xX, _0xX.position, ((_arg1 + _arg2) - _0xX.position));
            _local8.uncompress();
            _local5 = _local8.readUTFBytes(_local8.length);
        }
        ;
        _local3.appendChild(new XML((("<keyword>" + _local4) + "</keyword>")));
        _local3.appendChild(new XML((("<text>" + _local5) + "</text>")));
        return (_local3);
    }

    private static function _g0(_arg1:int, _arg2:int):XML {
        var _local11:ByteArray;
        var _local3:XML = <iTXt/>
                ;
        var _local4 = "";
        var _local5 = "";
        var _local6 = "";
        var _local7 = "";
        var _local8:int = -1;
        _0xX.position = _arg1;
        while (_0xX.position < (_arg1 + _arg2)) {
            _local8 = _0xX.readUnsignedByte();
            if (_local8 > 0) {
                _local4 = (_local4 + String.fromCharCode(_local8));
            } else {
                break;
            }
            ;
        }
        ;
        var _local9 = (_0xX.readUnsignedByte() == 1);
        var _local10:int = _0xX.readUnsignedByte();
        while (_0xX.position < (_arg1 + _arg2)) {
            _local8 = _0xX.readUnsignedByte();
            if (_local8 > 0) {
                _local5 = (_local5 + String.fromCharCode(_local8));
            } else {
                break;
            }
            ;
        }
        ;
        while (_0xX.position < (_arg1 + _arg2)) {
            _local8 = _0xX.readUnsignedByte();
            if (_local8 > 0) {
                _local6 = (_local6 + String.fromCharCode(_local8));
            } else {
                break;
            }
            ;
        }
        ;
        if (_local9) {
            if (_local10 == 0) {
                _local11 = new ByteArray();
                _local11.writeBytes(_0xX, _0xX.position, ((_arg1 + _arg2) - _0xX.position));
                _local11.uncompress();
                _local7 = _local11.readUTFBytes(_local11.length);
            }
            ;
        } else {
            _local7 = _0xX.readUTFBytes(((_arg1 + _arg2) - _0xX.position));
        }
        ;
        _local3.appendChild(new XML((("<keyword>" + _local4) + "</keyword>")));
        _local3.appendChild(new XML((("<text>" + _local7) + "</text>")));
        _local3.appendChild(new XML((("<languageTag>" + _local5) + "</languageTag>")));
        _local3.appendChild(new XML((("<translatedKeyword>" + _local6) + "</translatedKeyword>")));
        return (_local3);
    }

    private static function _18S():BitmapData {
        _0xX = null;
        buffer = null;
        return (null);
    }

    private static function _0cw():Array {
        var _local2:uint;
        var _local3:int;
        var _local1:Array = [];
        do {
            _local2 = _0xX.readUnsignedInt();
            _local3 = _0xX.readInt();
            _local1.push({
                type: _local3,
                position: _0xX.position,
                length: _local2
            });
            _0xX.position = (_0xX.position + (_local2 + 4));
        } while (((!((_local3 == _0xp))) && ((_0xX.bytesAvailable > 0))));
        return (_local1);
    }

    private static function _aF(_arg1:int):Boolean {
        if (_arg1 != 13) {
            return (false);
        }
        ;
        _1Wi = _0xX.readUnsignedInt();
        _3i = _0xX.readUnsignedInt();
        _QX = _0xX.readUnsignedByte();
        _13s = _0xX.readUnsignedByte();
        _0TT = _0xX.readUnsignedByte();
        _78 = _0xX.readUnsignedByte();
        _1QH = _0xX.readUnsignedByte();
        if ((((_1Wi <= 0)) || ((_3i <= 0)))) {
            return (false);
        }
        ;
        switch (_QX) {
            case 1:
            case 2:
            case 4:
            case 8:
            case 16:
                break;
                return (false);
        }
        ;
        switch (_13s) {
            case 0:
                if (((((((((!((_QX == 1))) && (!((_QX == 2))))) && (!((_QX == 4))))) && (!((_QX == 8))))) && (!((_QX == 16))))) {
                    return (false);
                }
                ;
                break;
            case 2:
            case 4:
            case 6:
                if (((!((_QX == 8))) && (!((_QX == 16))))) {
                    return (false);
                }
                ;
                break;
            case 3:
                if (((((((!((_QX == 1))) && (!((_QX == 2))))) && (!((_QX == 4))))) && (!((_QX == 8))))) {
                    return (false);
                }
                ;
                break;
                return (false);
        }
        ;
        if (((!((_0TT == 0))) || (!((_78 == 0))))) {
            return (false);
        }
        ;
        if (((!((_1QH == 0))) && (!((_1QH == 1))))) {
            return (false);
        }
        ;
        return (true);
    }

    private static function _Nd():BitmapData {
        var bufferLen:uint;
        var filter:int;
        var i:int;
        var r:uint;
        var g:uint;
        var b:uint;
        var a:uint;
        var bd:BitmapData = new BitmapData(_1Wi, _3i);
        try {
            buffer.uncompress();
        } catch (err) {
            return (null);
        }
        ;
        _1lX = 0;
        bufferLen = buffer.length;
        while (buffer.position < bufferLen) {
            filter = buffer.readUnsignedByte();
            if (filter == 0) {
                i = 0;
                while (i < _1Wi) {
                    r = (_1vL() << 16);
                    g = (_1vL() << 8);
                    b = _1vL();
                    a = (_1vL() << 24);
                    bd.setPixel32(i, _1lX, (((a + r) + g) + b));
                    i = (i + 1);
                }
                ;
            } else {
                if (filter == 1) {
                    i = 0;
                    while (i < _1Wi) {
                        r = (_em() << 16);
                        g = (_em() << 8);
                        b = _em();
                        a = (_em() << 24);
                        bd.setPixel32(i, _1lX, (((a + r) + g) + b));
                        i = (i + 1);
                    }
                    ;
                } else {
                    if (filter == 2) {
                        i = 0;
                        while (i < _1Wi) {
                            r = (_2o() << 16);
                            g = (_2o() << 8);
                            b = _2o();
                            a = (_2o() << 24);
                            bd.setPixel32(i, _1lX, (((a + r) + g) + b));
                            i = (i + 1);
                        }
                        ;
                    } else {
                        if (filter == 3) {
                            i = 0;
                            while (i < _1Wi) {
                                r = (_0lc() << 16);
                                g = (_0lc() << 8);
                                b = _0lc();
                                a = (_0lc() << 24);
                                bd.setPixel32(i, _1lX, (((a + r) + g) + b));
                                i = (i + 1);
                            }
                            ;
                        } else {
                            if (filter == 4) {
                                i = 0;
                                while (i < _1Wi) {
                                    r = (_1KG() << 16);
                                    g = (_1KG() << 8);
                                    b = _1KG();
                                    a = (_1KG() << 24);
                                    bd.setPixel32(i, _1lX, (((a + r) + g) + b));
                                    i = (i + 1);
                                }
                                ;
                            } else {
                                buffer.position = (buffer.position + (_04C * _1Wi));
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
            _1lX++;
        }
        ;
        return (bd);
    }

    private static function _1vL():uint {
        return (buffer[buffer.position++]);
    }

    private static function _em():uint {
        var _local1:uint = (buffer[buffer.position] + _x1());
        _local1 = (_local1 & 0xFF);
        var _local2 = buffer.position++;
        buffer[_local2] = _local1;
        return (_local1);
    }

    private static function _2o():uint {
        var _local1:uint = (buffer[buffer.position] + _213());
        _local1 = (_local1 & 0xFF);
        var _local2 = buffer.position++;
        buffer[_local2] = _local1;
        return (_local1);
    }

    private static function _0lc():uint {
        var _local1:uint = (buffer[buffer.position] + Math.floor(((_x1() + _213()) / 2)));
        _local1 = (_local1 & 0xFF);
        var _local2 = buffer.position++;
        buffer[_local2] = _local1;
        return (_local1);
    }

    private static function _1KG():uint {
        var _local1:uint = (buffer[buffer.position] + _1dp());
        _local1 = (_local1 & 0xFF);
        var _local2 = buffer.position++;
        buffer[_local2] = _local1;
        return (_local1);
    }

    private static function _1dp():uint {
        var _local1:uint = _x1();
        var _local2:uint = _213();
        var _local3:uint = _0B();
        var _local4:int;
        var _local5:int;
        var _local6:int;
        var _local7:int;
        var _local8:int;
        _local4 = ((_local1 + _local2) - _local3);
        _local5 = Math.abs((_local4 - _local1));
        _local6 = Math.abs((_local4 - _local2));
        _local7 = Math.abs((_local4 - _local3));
        if ((((_local5 <= _local6)) && ((_local5 <= _local7)))) {
            _local8 = _local1;
        } else {
            if (_local6 <= _local7) {
                _local8 = _local2;
            } else {
                _local8 = _local3;
            }
            ;
        }
        ;
        return (_local8);
    }

    private static function _x1():uint {
        var _local1:int = (_1lX * ((_1Wi * _04C) + 1));
        var _local2:int = (buffer.position - _04C);
        if (_local2 <= _local1) {
            return (0);
        }
        ;
        return (buffer[_local2]);
    }

    private static function _213():uint {
        var _local1:int = (buffer.position - ((_1Wi * _04C) + 1));
        if (_local1 < 0) {
            return (0);
        }
        ;
        return (buffer[_local1]);
    }

    private static function _0B():uint {
        var _local1:int = (buffer.position - ((_1Wi * _04C) + 1));
        if (_local1 < 0) {
            return (0);
        }
        ;
        var _local2:int = ((_1lX - 1) * ((_1Wi * _04C) + 1));
        _local1 = (_local1 - _04C);
        if (_local1 <= _local2) {
            return (0);
        }
        ;
        return (buffer[_local1]);
    }


}
}//package _1Js

