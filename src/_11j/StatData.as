// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_11j.StatData

package _11j {
import _6u._TG;

import flash.utils.IDataInput;
import flash.utils.IDataOutput;

public class StatData {

    public static const _Qw:int = 0;
    public static const _W2:int = 1;
    public static const _yy:int = 2;
    public static const _gS:int = 3;
    public static const _0mv:int = 4;
    public static const _067:int = 5;
    public static const _1m:int = 6;
    public static const _0Bm:int = 7;
    public static const _p6:int = 20;
    public static const _1Dc:int = 21;
    public static const _0Oh:int = 22;
    public static const INVENTORY_0_STAT:int = 8;
    public static const INVENTORY_1_STAT:int = 9;
    public static const INVENTORY_2_STAT:int = 10;
    public static const INVENTORY_3_STAT:int = 11;
    public static const INVENTORY_4_STAT:int = 12;
    public static const INVENTORY_5_STAT:int = 13;
    public static const INVENTORY_6_STAT:int = 14;
    public static const INVENTORY_7_STAT:int = 15;
    public static const INVENTORY_8_STAT:int = 16;
    public static const INVENTORY_9_STAT:int = 17;
    public static const INVENTORY_10_STAT:int = 18;
    public static const INVENTORY_11_STAT:int = 19;
    public static const _05:int = 26;
    public static const _1ss:int = 27;
    public static const _1q3:int = 28;
    public static const _oR:int = 29;
    public static const _EU:int = 30;
    public static const _00P:int = 31;
    public static const TEX1_STAT:int = 32;
    public static const TEX2_STAT:int = 33;
    public static const _WO:int = 34;
    public static const _VH:int = 35;
    public static const _5n:int = 36;
    public static const _0LJ:int = 37;
    public static const _xU:int = 38;
    public static const _d9:int = 39;
    public static const _Hd:int = 40;
    public static const _1xA:int = 41;
    public static const _1KX:int = 42;
    public static const _RR:int = 43;
    public static const _04s:int = 44;
    public static const _1gZ:int = 45;
    public static const _tS:int = 46;
    public static const _02Q:int = 47;
    public static const _1l:int = 48;
    public static const _YN:int = 49;
    public static const _09Q:int = 50;
    public static const _0Rg:int = 51;
    public static const _7:int = 52;
    public static const _0of:int = 53;
    public static const _zS:int = 54;
    public static const _0RW:int = 55;
    public static const _1MM:int = 56;
    public static const _sz:int = 57;
    public static const _wh:int = 58;
    public static const _Lm:int = 59;
    public static const _0Up:int = 60;
    public static const _xM:int = 61;
    public static const _gf:int = 62;
    public static const _eT:int = 63;
    public static const _1GE:int = 64;
    public static const _v4:int = 65;
    public static const _49:int = 66;
    public static const _90:int = 67;
    public static const _gY:int = 68;
    public static const _m9:int = 69;
    public static const _TC:int = 70;
    public static const BACKPACK_0_STAT:int = 71;
    public static const BACKPACK_1_STAT:int = 72;
    public static const BACKPACK_2_STAT:int = 73;
    public static const BACKPACK_3_STAT:int = 74;
    public static const BACKPACK_4_STAT:int = 75;
    public static const BACKPACK_5_STAT:int = 76;
    public static const BACKPACK_6_STAT:int = 77;
    public static const BACKPACK_7_STAT:int = 78;
    public static const _15L:int = 79;
    public static const _0JB:int = 80;
    public static const _1fb:int = 81;
    public static const _0MA:int = 82;
    public static const _bf:int = 83;
    public static const _18s:int = 84;
    public static const _1F:int = 85;
    public static const _16A:int = 86;
    public static const _0up:int = 87;
    public static const _0Yf:int = 88;
    public static const _1C0:int = 89;
    public static const _jJ:int = 90;
    public static const _02A:int = 91;
    public static const _0xt:int = 92;
    public static const _1ZW:int = 93;
    public static const _09k:int = 94;
    public static const _0HE:int = 95;
    public static const _Jb:int = 96;
    public static const _0cs:int = 97;

    public static function _for(_arg1:int):String {
        switch (_arg1) {
            case _Qw:
                return (_TG._0L5);
            case _W2:
                return (_TG._1iZ);
            case _yy:
                return (_TG._rc);
            case _gS:
                return (_TG._1cj);
            case _0mv:
                return (_TG._jS);
            case _1m:
                return (_TG._1wY);
            case _0Bm:
                return (_TG._1yZ);
            case _p6:
                return (_TG._0p9);
            case _1Dc:
                return (_TG._96);
            case _0Oh:
                return (_TG._IV);
            case _05:
                return (_TG._0sO);
            case _1ss:
                return (_TG._2V);
            case _1q3:
                return (_TG._1Ya);
        }
        ;
        return (_TG._0qr);
    }
    public var _1Jh:uint = 0;
    public var _mt:int;
    public var _P9:String;

    public function _xS():Boolean {
        switch (this._1Jh) {
            case _00P:
            case _gf:
            case _0MA:
            case _xU:
            case _zS:
                return (true);
        }
        ;
        return (false);
    }

    public function parseFromInput(_arg1:IDataInput):void {
        this._1Jh = _arg1.readUnsignedByte();
        if (!this._xS()) {
            this._mt = _arg1.readInt();
        } else {
            this._P9 = _arg1.readUTF();
        }
        ;
    }

    public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeByte(this._1Jh);
        if (!this._xS()) {
            _arg1.writeInt(this._mt);
        } else {
            _arg1.writeUTF(this._P9);
        }
        ;
    }

    public function toString():String {
        if (!this._xS()) {
            return ((((("[" + this._1Jh) + ": ") + this._mt) + "]"));
        }
        ;
        return ((((("[" + this._1Jh) + ': "') + this._P9) + '"]'));
    }


}
}//package _11j

