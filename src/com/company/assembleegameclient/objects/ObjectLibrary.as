// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ObjectLibrary

package com.company.assembleegameclient.objects {
import _0pG._Qq;

import _11j.StatData;

import _Jm._0R9;

import _gl._0An;
import _gl._1bu;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;
import com.company.util.ConversionUtil;

import flash.display.BitmapData;
import flash.utils.Dictionary;
import flash.utils.getDefinitionByName;

public class ObjectLibrary {

    public static const _0v0:String = "lofiObj3";
    public static const _WV:int = 0xFF;
    public static const _x9:Dictionary = new Dictionary();
    public static const _18H:Dictionary = new Dictionary();
    public static const _qb:Dictionary = new Dictionary();
    public static const _1w3:Dictionary = new Dictionary();
    public static const _mQ:Dictionary = new Dictionary();
    public static const _13a:Dictionary = new Dictionary();
    public static const _118:Dictionary = new Dictionary();
    public static const _1Qn:Dictionary = new Dictionary();
    public static const _052:Dictionary = new Dictionary();
    public static const _0pF:ObjectProperties = new ObjectProperties(null);
    public static const _0td:Object = {
        ArenaGuard: ArenaGuard,
        ArenaPortal: ArenaPortal,
        CaveWall: CaveWall,
        Character: Character,
        CharacterChanger: CharacterChanger,
        ClosedGiftChest: ClosedGiftChest,
        ClosedVaultChest: ClosedVaultChest,
        ConnectedWall: ConnectedWall,
        Container: Container,
        DoubleWall: DoubleWall,
        FortuneGround: FortuneGround,
        FortuneTeller: FortuneTeller,
        GameObject: GameObject,
        GuildBoard: GuildBoard,
        GuildChronicle: GuildChronicle,
        GuildHallPortal: GuildHallPortal,
        GuildMerchant: GuildMerchant,
        GuildRegister: GuildRegister,
        Merchant: Merchant,
        MoneyChanger: MoneyChanger,
        MysteryBoxGround: MysteryBoxGround,
        NameChanger: NameChanger,
        ReskinVendor: ReskinVendor,
        OneWayContainer: OneWayContainer,
        Player: Player,
        Portal: Portal,
        Projectile: Projectile,
        QuestRewards: QuestRewards,
        Sign: Sign,
        SpiderWeb: SpiderWeb,
        Stalagmite: Stalagmite,
        Wall: Wall,
        Pet: Pet,
        PetUpgrader: PetUpgrader,
        YardUpgrader: YardUpgrader
    };

    public static var _6i:_0ej = new _0ej();
    public static var _0ZM:Vector.<XML> = new Vector.<XML>();
    public static var _8t:Vector.<XML> = new Vector.<XML>();
    public static var _gQ:Dictionary = new Dictionary();


    public static function _0vQ(_arg1:XML):void {
        var _local2:XML;
        var _local3:String;
        var _local4:String;
        var _local5:int;
        var _local6:Boolean;
        var _local7:int;
        for each (_local2 in _arg1.Object) {
            _local3 = String(_local2.@id);
            _local4 = _local3;
            if (_local2.hasOwnProperty("DisplayId")) {
                _local4 = _local2.DisplayId;
            }
            ;
            if (_local2.hasOwnProperty("Group")) {
                if (_local2.Group == "Hexable") {
                    _8t.push(_local2);
                }
                ;
            }
            ;
            _local5 = int(_local2.@type);
            if (((_local2.hasOwnProperty("PetBehavior")) || (_local2.hasOwnProperty("PetAbility")))) {
                _1Qn[_local5] = _local2;
            } else {
                _x9[_local5] = new ObjectProperties(_local2);
                _18H[_local5] = _local2;
                _qb[_local3] = _local5;
                _1w3[_local5] = _local4;
                if (String(_local2.Class) == "Player") {
                    _gQ[_local5] = String(_local2.@id).substr(0, 2);
                    _local6 = false;
                    _local7 = 0;
                    while (_local7 < _0ZM.length) {
                        if (int(_0ZM[_local7].@type) == _local5) {
                            _0ZM[_local7] = _local2;
                            _local6 = true;
                        }
                        ;
                        _local7++;
                    }
                    ;
                    if (!_local6) {
                        _0ZM.push(_local2);
                    }
                    ;
                }
                ;
                _mQ[_local5] = _6i.create(_local2);
                if (_local2.hasOwnProperty("Top")) {
                    _13a[_local5] = _6i.create(XML(_local2.Top));
                }
                ;
                if (_local2.hasOwnProperty("Animation")) {
                    _118[_local5] = new _Qq(_local2);
                }
                ;
            }
            ;
        }
        ;
    }

    public static function _4C(_arg1:int):String {
        var _local2:XML = _18H[_arg1];
        if (_local2 == null) {
            return (null);
        }
        ;
        return (String(_local2.@id));
    }

    public static function _04P(_arg1:String):ObjectProperties {
        var _local2:int = _qb[_arg1];
        return (_x9[_local2]);
    }

    public static function _22(_arg1:String):XML {
        var _local2:int = _qb[_arg1];
        return (_18H[_local2]);
    }

    public static function _XL(_arg1:int):GameObject {
        var _local2:XML = _18H[_arg1];
        var _local3:String = _local2.Class;
        var _local4:Class = ((_0td[_local3]) || (_1A5(_local3)));
        return (new _local4(_local2));
    }

    public static function getTextureFromType(_arg1:int):BitmapData {
        var _local2:_1kQ = _mQ[_arg1];
        if (_local2 == null) {
            return (null);
        }
        ;
        return (_local2.getTexture());
    }

    public static function getBitmapData(_arg1:int):BitmapData {
        var _local2:_1kQ = _mQ[_arg1];
        var _local3:BitmapData = ((_local2) ? _local2.getTexture() : null);
        if (_local3) {
            return (_local3);
        }
        ;
        return (AssetLibrary._Rb(_0v0, _WV));
    }

    public static function getRedrawnTextureFromType(_arg1:int, _arg2:int, _arg3:Boolean, _arg4:Boolean = true, _arg5:Number = 5):BitmapData {
        var _local6:BitmapData = getBitmapData(_arg1);
        var _local7:_1kQ = _mQ[_arg1];
        var _local8:BitmapData = ((_local7) ? _local7.mask_ : null);
        if (_local8 == null) {
            return (TextureRedrawer.redraw(_local6, _arg2, _arg3, 0, _arg4, _arg5));
        }
        ;
        var _local9:XML = _18H[_arg1];
        var _local10:int = ((_local9.hasOwnProperty("Tex1")) ? int(_local9.Tex1) : 0);
        var _local11:int = ((_local9.hasOwnProperty("Tex2")) ? int(_local9.Tex2) : 0);
        _local6 = TextureRedrawer.resize(_local6, _local8, _arg2, _arg3, _local10, _local11, _arg5);
        _local6 = _0R9._ud(_local6, 0);
        return (_local6);
    }

    public static function _qa(_arg1:int):int {
        var _local2:XML = _18H[_arg1];
        if (!_local2.hasOwnProperty("Size")) {
            return (100);
        }
        ;
        return (int(_local2.Size));
    }

    public static function _bE(_arg1:int):int {
        var _local2:XML = _18H[_arg1];
        if (!_local2.hasOwnProperty("SlotType")) {
            return (-1);
        }
        ;
        return (int(_local2.SlotType));
    }

    public static function _hd(_arg1:int, _arg2:Player):Boolean {
        if (_arg1 == _0An._5v) {
            return (false);
        }
        ;
        var _local3:XML = _18H[_arg1];
        var _local4:int = int(_local3.SlotType.toString());
        var _local5:uint;
        while (_local5 < _1bu._0RT) {
            if (_arg2._0ac[_local5] == _local4) {
                return (true);
            }
            ;
            _local5++;
        }
        ;
        return (false);
    }

    public static function _1Dt(_arg1:int, _arg2:Player):int {
        var _local3:XML;
        var _local4:int;
        var _local5:uint;
        if (_arg1 != _0An._5v) {
            _local3 = _18H[_arg1];
            _local4 = int(_local3.SlotType);
            _local5 = 0;
            while (_local5 < _1bu._0RT) {
                if (_arg2._0ac[_local5] == _local4) {
                    return (_local5);
                }
                ;
                _local5++;
            }
            ;
        }
        ;
        return (-1);
    }

    public static function _0KZ(_arg1:int, _arg2:Player):Boolean {
        if (_arg2 == null) {
            return (true);
        }
        ;
        var _local3:XML = _18H[_arg1];
        if ((((_local3 == null)) || (!(_local3.hasOwnProperty("SlotType"))))) {
            return (false);
        }
        ;
        var _local4:int = _local3.SlotType;
        if ((((_local4 == _0An._2s)) || ((_local4 == _0An._1fa)))) {
            return (true);
        }
        ;
        var _local5:int;
        while (_local5 < _arg2._0ac.length) {
            if (_arg2._0ac[_local5] == _local4) {
                return (true);
            }
            ;
            _local5++;
        }
        ;
        return (false);
    }

    public static function _i(_arg1:int):Boolean {
        var _local2:XML = _18H[_arg1];
        return (((!((_local2 == null))) && (_local2.hasOwnProperty("Soulbound"))));
    }

    public static function usableBy(_arg1:int):Vector.<String> {
        var _local5:XML;
        var _local6:Vector.<int>;
        var _local7:int;
        var _local2:XML = _18H[_arg1];
        if ((((_local2 == null)) || (!(_local2.hasOwnProperty("SlotType"))))) {
            return (null);
        }
        ;
        var _local3:int = _local2.SlotType;
        if ((((((_local3 == _0An._2s)) || ((_local3 == _0An._0tY)))) || ((_local3 == _0An._1fa)))) {
            return (null);
        }
        ;
        var _local4:Vector.<String> = new Vector.<String>();
        for each (_local5 in _0ZM) {
            _local6 = ConversionUtil._0mJ(_local5.SlotTypes);
            _local7 = 0;
            while (_local7 < _local6.length) {
                if (_local6[_local7] == _local3) {
                    _local4.push(_1w3[int(_local5.@type)]);
                    break;
                }
                ;
                _local7++;
            }
            ;
        }
        ;
        return (_local4);
    }

    public static function _1MZ(_arg1:int, _arg2:Player):Boolean {
        var _local4:XML;
        if (_arg2 == null) {
            return (true);
        }
        ;
        var _local3:XML = _18H[_arg1];
        for each (_local4 in _local3.EquipRequirement) {
            if (!_16T(_local4, _arg2)) {
                return (false);
            }
            ;
        }
        ;
        return (true);
    }

    public static function _16T(_arg1:XML, _arg2:Player):Boolean {
        var _local3:int;
        if (_arg1.toString() == "Stat") {
            _local3 = int(_arg1.@value);
            switch (int(_arg1.@stat)) {
                case StatData._Qw:
                    return ((_arg2._022 >= _local3));
                case StatData._gS:
                    return ((_arg2._0sE >= _local3));
                case StatData._0Bm:
                    return ((_arg2._ew >= _local3));
                case StatData._p6:
                    return ((_arg2._0jT >= _local3));
                case StatData._1Dc:
                    return ((_arg2._05c >= _local3));
                case StatData._0Oh:
                    return ((_arg2.speed_ >= _local3));
                case StatData._05:
                    return ((_arg2._oP >= _local3));
                case StatData._1ss:
                    return ((_arg2._1EO >= _local3));
                case StatData._1q3:
                    return ((_arg2._1IQ >= _local3));
            }
            ;
        }
        ;
        return (false);
    }

    public static function _0SR(_arg1:int):XML {
        return (_1Qn[_arg1]);
    }

    private static function _1A5(_arg1:String):Class {
        var _local2:String = ("com.company.assembleegameclient.objects." + _arg1);
        return ((getDefinitionByName(_local2) as Class));
    }


}
}//package com.company.assembleegameclient.objects

