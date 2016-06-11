// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0.EquipmentToolTip

package _Z0 {
import _0Mr.AppendingLineBuilder;
import _0Mr._1M;
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import _11j.StatData;

import _1Ea._1V1;

import _6u._TG;

import _gl._1X;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui._yz;
import com.company.util.BitmapUtil;
import com.company.util._1N;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.filters.DropShadowFilter;

public class EquipmentToolTip extends ToolTip {

    private static const _MT:int = 230;

    public function EquipmentToolTip(_arg1:int, _arg2:Player, _arg3:int, _arg4:String) {
        this._0bJ = new Vector.<Effect>();
        this.objectType = _arg1;
        this.player = _arg2;
        this._7i = _arg3;
        this._5 = _arg4;
        this._pb = ((_arg2) ? _arg2._pb() : false);
        this._Ht = ((_arg2) ? ObjectLibrary._0KZ(_arg1, _arg2) : false);
        var _local5:int = ((_arg2) ? ObjectLibrary._1Dt(_arg1, _arg2) : -1);
        var _local6:uint = ((((this._Ht) || ((this.player == null)))) ? 0x363636 : 6036765);
        var _local7:uint = ((((this._Ht) || ((_arg2 == null)))) ? 0x9B9B9B : 10965039);
        super(_local6, 1, _local7, 1, true);
        this._0dd = new _OF();
        this._1Lx = ObjectLibrary._18H[_arg1];
        this._0oj = !((_local5 == -1));
        this._4T = new Vector.<Effect>();
        this._0XO = int(this._1Lx.SlotType);
        if (this.player == null) {
            this.curItemXML = this._1Lx;
        } else {
            if (this._0oj) {
                if (this.player._0Z[_local5] != -1) {
                    this.curItemXML = ObjectLibrary._18H[this.player._0Z[_local5]];
                }
                ;
            }
            ;
        }
        ;
        this._L7();
        this._0Uo();
        this._0bc();
        this._0wk();
        this._lu();
        this._0OY();
        this._1aD();
        this._26();
        this._0jx();
        this._1ki();
        this._0UU();
        this._08t();
        this._1cb();
        this._Wg();
        this._0C7();
        this._0B();
        this._1p();
        this._vi();
        this._1v0();
    }
    public var _17E:_06T;
    private var icon:Bitmap;
    private var _0aG:_06T;
    private var _0ih:_06T;
    private var line1:_yz;
    private var _1pU:_06T;
    private var line2:_yz;
    private var _1tN:_06T;
    private var player:Player;
    private var _0oj:Boolean = false;
    private var objectType:int;
    private var curItemXML:XML = null;
    private var _1Lx:XML = null;
    private var _0dd:_OF;
    private var _0wP:Vector.<Restriction>;
    private var _4T:Vector.<Effect>;
    private var _0bJ:Vector.<Effect>;
    private var _0XO:int;
    private var _7i:int;
    private var _0Sr:uint;
    private var _5:String;
    private var _pb:Boolean;
    private var _Ht:Boolean;
    private var _1AR:_04e;
    private var _0cH:_06T;

    override protected function alignUI():void {
        this._17E.x = (this.icon.width + 4);
        this._17E.y = ((this.icon.height / 2) - (this._17E.height / 2));
        if (this._0aG) {
            this._0aG.y = ((this.icon.height / 2) - (this._0aG.height / 2));
            this._0aG.x = (_MT - 30);
        }
        ;
        this._0ih.x = 4;
        this._0ih.y = (this.icon.height + 2);
        if (contains(this.line1)) {
            this.line1.x = 8;
            this.line1.y = ((this._0ih.y + this._0ih.height) + 8);
            this._1pU.x = 4;
            this._1pU.y = (this.line1.y + 8);
        } else {
            this.line1.y = (this._0ih.y + this._0ih.height);
            this._1pU.y = this.line1.y;
        }
        ;
        this.line2.x = 8;
        this.line2.y = ((this._1pU.y + this._1pU.height) + 8);
        var _local1:uint = (this.line2.y + 8);
        if (this._1tN) {
            this._1tN.x = 4;
            this._1tN.y = _local1;
            _local1 = (_local1 + this._1tN.height);
        }
        ;
        if (this._0cH) {
            if (contains(this._0cH)) {
                this._0cH.x = 4;
                this._0cH.y = _local1;
            }
            ;
        }
        ;
    }

    private function _1v0():void {
        var _local1:int;
        if (this._1Lx.hasOwnProperty("feedPower")) {
            _local1 = ((((this._Ht) || ((this.player == null)))) ? 0xFFFFFF : 16549442);
            this._0cH = new _06T().setSize(12).setColor(_local1).setBold(true).setTextWidth((((_MT - this.icon.width) - 4) - 30)).setWordWrap(true);
            this._0cH.setStringBuilder(new _1M().setString(("Feed Power: " + this._1Lx.feedPower)));
            this._0cH.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            _qH.push(this._0cH.textChanged);
            addChild(this._0cH);
        }
        ;
    }

    private function _1aD():void {
        var _local1:XMLList;
        var _local2:XML;
        var _local3:String;
        var _local4:String;
        var _local5:String;
        var _local6:AppendingLineBuilder;
        if (this._1Lx.hasOwnProperty("ExtraTooltipData")) {
            _local1 = this._1Lx.ExtraTooltipData.EffectInfo;
            for each (_local2 in _local1) {
                _local3 = _local2.attribute("name");
                _local4 = _local2.attribute("description");
                _local5 = ((((_local3) && (_local4))) ? ": " : "\n");
                _local6 = new AppendingLineBuilder();
                if (_local3) {
                    _local6.pushParams(_local3);
                }
                ;
                if (_local4) {
                    _local6.pushParams(_local4, {}, _ix._yk(16777103), _ix._0yJ());
                }
                ;
                _local6.setDelimiter(_local5);
                this._0bJ.push(new Effect(_TG._1Je, {data: _local6}));
            }
            ;
        }
        ;
    }

    private function _1y6():Boolean {
        return (((this._0oj) && ((this.curItemXML == null))));
    }

    private function _L7():void {
        var _local1:XML = ObjectLibrary._18H[this.objectType];
        var _local2:int = 5;
        if ((((this.objectType == 4874)) || ((this.objectType == 4618)))) {
            _local2 = 8;
        }
        ;
        if (_local1.hasOwnProperty("ScaleValue")) {
            _local2 = _local1.ScaleValue;
        }
        ;
        var _local3:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.objectType, 60, true, true, _local2);
        _local3 = BitmapUtil._6L(_local3, 4, 4, (_local3.width - 8), (_local3.height - 8));
        this.icon = new Bitmap(_local3);
        addChild(this.icon);
    }

    private function _0bc():void {
        var _local1 = (this._Qf() == false);
        var _local2 = (this._1Lx.hasOwnProperty("Consumable") == false);
        var _local3 = (this._1Lx.hasOwnProperty("Treasure") == false);
        var _local4:Boolean = this._1Lx.hasOwnProperty("Tier");
        if (((((_local1) && (_local2))) && (_local3))) {
            this._0aG = new _06T().setSize(16).setColor(0xFFFFFF).setTextWidth(30).setBold(true);
            if (_local4) {
                this._0aG.setStringBuilder(new _5R().setParams(_TG._Y, {tier: this._1Lx.Tier}));
            } else {
                if (this._1Lx.hasOwnProperty("@setType")) {
                    this._0aG.setColor(0xFF9900);
                    this._0aG.setStringBuilder(new _1M("ST"));
                } else {
                    this._0aG.setColor(9055202);
                    this._0aG.setStringBuilder(new _5R().setParams(_TG._1Ww));
                }
                ;
            }
            ;
            addChild(this._0aG);
        }
        ;
    }

    private function _Qf():Boolean {
        var activateTags:XMLList;
        activateTags = this._1Lx.Activate.(text() == "PermaPet");
        return ((activateTags.length() >= 1));
    }

    private function _0Uo():void {
        var _local1:int = ((((this._Ht) || ((this.player == null)))) ? 0xFFFFFF : 16549442);
        this._17E = new _06T().setSize(16).setColor(_local1).setBold(true).setTextWidth((((_MT - this.icon.width) - 4) - 30)).setWordWrap(true);
        this._17E.setStringBuilder(new _5R().setParams(ObjectLibrary._1w3[this.objectType]));
        this._17E.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        _qH.push(this._17E.textChanged);
        addChild(this._17E);
    }

    private function _0jK():String {
        var _local1:XMLList;
        var _local2:Vector.<Effect>;
        var _local3:XML;
        if (this._1Lx.hasOwnProperty("ExtraTooltipData")) {
            _local1 = this._1Lx.ExtraTooltipData.EffectInfo;
            _local2 = new Vector.<Effect>();
            for each (_local3 in _local1) {
                _local2.push(new Effect(_local3.attribute("name"), _local3.attribute("description")));
            }
            ;
        }
        ;
        return ("");
    }

    private function _0C7():void {
        var _local1:AppendingLineBuilder;
        if (((((!((this._4T.length == 0))) || (!((this._1AR._13X == null))))) || (this._1Lx.hasOwnProperty("ExtraTooltipData")))) {
            this.line1 = new _yz((_MT - 12), 0);
            this._1pU = new _06T().setSize(14).setColor(0xB3B3B3).setTextWidth(_MT).setWordWrap(true).setHTML(true);
            _local1 = this._0W8();
            this._1pU.setStringBuilder(_local1);
            this._1pU.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            if (_local1._Uq()) {
                addChild(this.line1);
                addChild(this._1pU);
            }
            ;
        }
        ;
    }

    private function _0W8():AppendingLineBuilder {
        var _local1:AppendingLineBuilder = new AppendingLineBuilder();
        this._019(this._0bJ, _local1);
        if (this._1AR._13X._Uq()) {
            _local1.pushParams(_TG._1Je, {data: this._1AR._13X});
        }
        ;
        this._019(this._4T, _local1);
        return (_local1);
    }

    private function _019(_arg1:Vector.<Effect>, _arg2:AppendingLineBuilder):void {
        var _local3:Effect;
        var _local4:String;
        var _local5:String;
        for each (_local3 in _arg1) {
            _local4 = "";
            _local5 = "";
            if (_local3.color_) {
                _local4 = (('<font color="#' + _local3.color_.toString(16)) + '">');
                _local5 = "</font>";
            }
            ;
            _arg2.pushParams(_local3.name_, _local3.getValueReplacementsWithColor(), _local4, _local5);
        }
        ;
    }

    private function _26():void {
        if (((this._1Lx.hasOwnProperty("NumProjectiles")) && (!((this._1AR._14.hasOwnProperty(this._1Lx.NumProjectiles.toXMLString()) == true))))) {
            this._4T.push(new Effect(_TG._0PR, {numShots: this._1Lx.NumProjectiles}));
        }
        ;
    }

    private function _Wg():void {
        var _local1:int;
        var _local2:uint;
        var _local3:int;
        if (this._1Lx.hasOwnProperty("FameBonus")) {
            _local1 = int(this._1Lx.FameBonus);
            _local2 = ((this._Ht) ? _ix._17Q : _ix._05D);
            if (((!((this.curItemXML == null))) && (this.curItemXML.hasOwnProperty("FameBonus")))) {
                _local3 = int(this.curItemXML.FameBonus.text());
                _local2 = _ix._BZ((_local1 - _local3));
            }
            ;
            this._4T.push(new Effect(_TG._1em, {percent: (this._1Lx.FameBonus + "%")}).setReplacementsColor(_local2));
        }
        ;
    }

    private function _1cb():void {
        if (this._1Lx.hasOwnProperty("MpEndCost")) {
            if (!this._1AR._14[this._1Lx.MpEndCost[0].toXMLString()]) {
                this._4T.push(new Effect(_TG._lU, {cost: this._1Lx.MpEndCost}));
            }
            ;
        } else {
            if (((this._1Lx.hasOwnProperty("MpCost")) && (!(this._1AR._14[this._1Lx.MpCost[0].toXMLString()])))) {
                if (!this._1AR._14[this._1Lx.MpCost[0].toXMLString()]) {
                    this._4T.push(new Effect(_TG._lU, {cost: this._1Lx.MpCost}));
                }
                ;
            }
            ;
        }
        ;
    }

    private function _08t():void {
        if (this._1Lx.hasOwnProperty("Doses")) {
            this._4T.push(new Effect(_TG._0Lu, {dose: this._1Lx.Doses}));
        }
        ;
    }

    private function _0jx():void {
        var _local1:XML;
        var _local2:int;
        var _local3:int;
        var _local4:Number;
        var _local5:XML;
        if (((this._1Lx.hasOwnProperty("Projectile")) && (!(this._1AR._14.hasOwnProperty(this._1Lx.Projectile.toXMLString()))))) {
            _local1 = XML(this._1Lx.Projectile);
            _local2 = int(_local1.MinDamage);
            _local3 = int(_local1.MaxDamage);
            this._4T.push(new Effect(_TG.DAMAGE, {damage: (((_local2 == _local3)) ? _local2 : ((_local2 + " - ") + _local3)).toString()}));
            _local4 = ((Number(_local1.Speed) * Number(_local1.LifetimeMS)) / 10000);
            this._4T.push(new Effect(_TG._1h4, {range: _ix._N8(_local4)}));
            if (this._1Lx.Projectile.hasOwnProperty("MultiHit")) {
                this._4T.push(new Effect(_TG._1Hl, {}).setColor(_ix._05D));
            }
            ;
            if (this._1Lx.Projectile.hasOwnProperty("PassesCover")) {
                this._4T.push(new Effect(_TG._1Xr, {}).setColor(_ix._05D));
            }
            ;
            if (this._1Lx.Projectile.hasOwnProperty("ArmorPiercing")) {
                this._4T.push(new Effect(_TG._nr, {}).setColor(_ix._05D));
            }
            ;
            for each (_local5 in _local1.ConditionEffect) {
                if (this._1AR._14[_local5.toXMLString()] != null) {
                } else {
                    this._4T.push(new Effect(_TG._0hd, {effect: ""}));
                    this._4T.push(new Effect(_TG._QZ, {
                        effect: this._1Lx.Projectile.ConditionEffect,
                        duration: this._1Lx.Projectile.ConditionEffect.@duration
                    }).setColor(_ix._05D));
                }
                ;
            }
            ;
        }
        ;
    }

    private function _1ki():void {
        var _local1:XML;
        var _local2:String;
        var _local3:int;
        var _local4:int;
        var _local5:String;
        var _local6:String;
        var _local7:Object;
        var _local8:String;
        var _local9:uint;
        var _local10:XML;
        var _local11:Object;
        var _local12:String;
        var _local13:uint;
        var _local14:XML;
        var _local15:String;
        var _local16:Object;
        var _local17:String;
        var _local18:Object;
        var _local19:Number;
        var _local20:Number;
        var _local21:Number;
        var _local22:Number;
        var _local23:Number;
        var _local24:Number;
        var _local25:Number;
        var _local26:Number;
        var _local27:Number;
        var _local28:Number;
        var _local29:Number;
        var _local30:Number;
        var _local31:AppendingLineBuilder;
        for each (_local1 in this._1Lx.Activate) {
            _local5 = this._1AR._14[_local1.toXMLString()];
            if (this._1AR._14[_local1.toXMLString()] != true) {
                _local6 = _local1.toString();
                switch (_local6) {
                    case _1X._Bw:
                        this._4T.push(new Effect(_TG._1Rr, {effect: new AppendingLineBuilder().pushParams(_TG._1iS, {range: _local1.@range}, _ix._yk(_ix._05D), _ix._0yJ())}));
                        this._4T.push(new Effect(_TG._QZ, {
                            effect: _local1.@effect,
                            duration: _local1.@duration
                        }).setColor(_ix._05D));
                        break;
                    case _1X._ps:
                        this._4T.push(new Effect(_TG._1LN, {effect: ""}));
                        this._4T.push(new Effect(_TG._QZ, {
                            effect: _local1.@effect,
                            duration: _local1.@duration
                        }));
                        break;
                    case _1X._Eh:
                        this._4T.push(new Effect(_TG._1sC, {
                            statAmount: (("+" + _local1.@amount) + " "),
                            statName: new _5R().setParams(_TG._1iZ)
                        }));
                        break;
                    case _1X._h2:
                        this._4T.push(new Effect(_TG._0dt, {
                            effect: new AppendingLineBuilder().pushParams(_TG._1o4, {
                                amount: _local1.@amount,
                                range: _local1.@range
                            }, _ix._yk(_ix._05D), _ix._0yJ())
                        }));
                        break;
                    case _1X._1iq:
                        this._4T.push(new Effect(_TG._1sC, {
                            statAmount: (("+" + _local1.@amount) + " "),
                            statName: new _5R().setParams(_TG._jS)
                        }));
                        break;
                    case _1X._QA:
                        this._4T.push(new Effect(_TG._0bE, (((_local1.@amount + " MP at ") + _local1.@range) + " sqrs")));
                        break;
                    case _1X.TELEPORT:
                        this._4T.push(new Effect(_TG._1Je, {data: new _5R().setParams(_TG._1bn)}));
                        break;
                    case _1X._MC:
                        this._4T.push(new Effect(_TG._0Pw, {
                            effect: new AppendingLineBuilder().pushParams(_TG._1o4, {
                                amount: _local1.@totalDamage,
                                range: _local1.@radius
                            }, _ix._yk(_ix._05D), _ix._0yJ())
                        }));
                        break;
                    case _1X._pA:
                        _local7 = ((_local1.hasOwnProperty("@condEffect")) ? _local1.@condEffect : new _5R().setParams(_TG._1vQ));
                        _local8 = ((_local1.hasOwnProperty("@condDuration")) ? _local1.@condDuration : "5");
                        this._4T.push(new Effect(_TG._pA, {
                            data: new AppendingLineBuilder().pushParams(_TG._1o4, {
                                amount: _local1.@totalDamage,
                                range: _local1.@radius
                            }, _ix._yk(_ix._05D), _ix._0yJ()).pushParams(_TG._QZ, {
                                effect: _local7,
                                duration: _local8
                            }, _ix._yk(_ix._05D), _ix._0yJ())
                        }));
                        break;
                    case _1X._0JI:
                        this._4T.push(new Effect(_TG._1d4, {stasis: new AppendingLineBuilder().pushParams(_TG._0AU, {duration: _local1.@duration}, _ix._yk(_ix._05D), _ix._0yJ())}));
                        break;
                    case _1X._mi:
                        this._4T.push(new Effect(_TG._mi, {data: new AppendingLineBuilder().pushParams(_TG._0AU, {duration: _local1.@duration}, _ix._yk(_ix._05D), _ix._0yJ())}));
                        break;
                    case _1X._pi:
                        this._4T.push(new Effect(_TG._pi, {
                            data: new AppendingLineBuilder().pushParams(_TG._19Z, {
                                damage: _local1.@totalDamage,
                                targets: _local1.@maxTargets
                            }, _ix._yk(_ix._05D), _ix._0yJ())
                        }));
                        break;
                    case _1X._174:
                        this._4T.push(new Effect(_TG._174, {data: ""}));
                        this._4T.push(new Effect(_TG._vv, {
                            damage: _local1.@totalDamage,
                            duration: _local1.@duration,
                            radius: _local1.@radius
                        }).setColor(_ix._05D));
                        break;
                    case _1X._1Vj:
                        this._4T.push(new Effect(_TG._1c, {}).setColor(_ix._05D));
                        break;
                    case _1X._AX:
                        this._4T.push(new Effect(_TG._1c, {}).setColor(_ix._05D));
                        break;
                    case _1X._18M:
                        _local9 = 16777103;
                        if (this.curItemXML != null) {
                            _local10 = this._TO(this.curItemXML, _local1.@effect);
                            if (_local10 != null) {
                                _local19 = Number(_local1.@range);
                                _local20 = Number(_local10.@range);
                                _local21 = Number(_local1.@duration);
                                _local22 = Number(_local10.@duration);
                                _local23 = ((_local19 - _local20) + (_local21 - _local22));
                                if (_local23 > 0) {
                                    _local9 = 0xFF00;
                                } else {
                                    if (_local23 < 0) {
                                        _local9 = 0xFF0000;
                                    }
                                    ;
                                }
                                ;
                            }
                            ;
                        }
                        ;
                        _local11 = {
                            range: _local1.@range,
                            effect: _local1.@effect,
                            duration: _local1.@duration
                        };
                        _local12 = "Within {range} sqrs {effect} for {duration} seconds";
                        if (_local1.@target != "enemy") {
                            this._4T.push(new Effect(_TG._1Rr, {effect: _5R._1bj(_local12, _local11)}).setReplacementsColor(_local9));
                        } else {
                            this._4T.push(new Effect(_TG._1s4, {effect: _5R._1bj(_local12, _local11)}).setReplacementsColor(_local9));
                        }
                        ;
                        break;
                    case _1X._1lf:
                        _local13 = 16777103;
                        if (this.curItemXML != null) {
                            _local14 = this._1XB(this.curItemXML, _local1.@stat);
                            if (_local14 != null) {
                                _local24 = Number(_local1.@range);
                                _local25 = Number(_local14.@range);
                                _local26 = Number(_local1.@duration);
                                _local27 = Number(_local14.@duration);
                                _local28 = Number(_local1.@amount);
                                _local29 = Number(_local14.@amount);
                                _local30 = (((_local24 - _local25) + (_local26 - _local27)) + (_local28 - _local29));
                                if (_local30 > 0) {
                                    _local13 = 0xFF00;
                                } else {
                                    if (_local30 < 0) {
                                        _local13 = 0xFF0000;
                                    }
                                    ;
                                }
                                ;
                            }
                            ;
                        }
                        ;
                        _local3 = int(_local1.@stat);
                        _local15 = _5R._1VK(StatData._for(_local3));
                        _local16 = {
                            range: _local1.@range,
                            stat: _local15,
                            amount: _local1.@amount,
                            duration: _local1.@duration
                        };
                        _local17 = "Within {range} sqrs increase {stat} by {amount} for {duration} seconds";
                        this._4T.push(new Effect(_TG._1Rr, {effect: _5R._1bj(_local17, _local16)}).setReplacementsColor(_local13));
                        break;
                    case _1X._1sC:
                        _local3 = int(_local1.@stat);
                        _local4 = int(_local1.@amount);
                        _local18 = {};
                        if (((!((_local3 == StatData._W2))) && (!((_local3 == StatData._0mv))))) {
                            _local2 = _TG._zH;
                            _local18["statName"] = new _5R().setParams(StatData._for(_local3));
                            this._4T.push(new Effect(_local2, _local18).setColor(16777103));
                            break;
                        }
                        ;
                        _local2 = _TG._1Je;
                        _local31 = new AppendingLineBuilder().setDelimiter(" ");
                        _local31.pushParams(_TG._1Je, {data: new _1M(("+" + _local4))});
                        _local31.pushParams(StatData._for(_local3));
                        _local18["data"] = _local31;
                        this._4T.push(new Effect(_local2, _local18));
                        break;
                }
                ;
            }
            ;
        }
        ;
    }

    private function _TO(_arg1:XML, _arg2:String):XML {
        var matches:XMLList;
        var tag:XML;
        var xml:XML = _arg1;
        var effectValue:String = _arg2;
        matches = xml.Activate.(text() == _1X._18M);
        for each (tag in matches) {
            if (tag.@effect == effectValue) {
                return (tag);
            }
            ;
        }
        ;
        return (null);
    }

    private function _1XB(_arg1:XML, _arg2:String):XML {
        var matches:XMLList;
        var tag:XML;
        var xml:XML = _arg1;
        var statValue:String = _arg2;
        matches = xml.Activate.(text() == _1X._1lf);
        for each (tag in matches) {
            if (tag.@stat == statValue) {
                return (tag);
            }
            ;
        }
        ;
        return (null);
    }

    private function _0UU():void {
        var _local1:XML;
        var _local2:Boolean = true;
        for each (_local1 in this._1Lx.ActivateOnEquip) {
            if (_local2) {
                this._4T.push(new Effect(_TG._0bL, ""));
                _local2 = false;
            }
            ;
            if (_local1.toString() == "IncrementStat") {
                this._4T.push(new Effect(_TG._1sC, this._ZP(_local1)).setReplacementsColor(this._1wP(_local1)));
            }
            ;
        }
        ;
    }

    private function _ZP(_arg1:XML):Object {
        var _local2:int = int(_arg1.@stat);
        var _local3:int = int(_arg1.@amount);
        var _local4:String = (((_local3) > -1) ? "+" : "");
        return ({
            statAmount: ((_local4 + String(_local3)) + " "),
            statName: new _5R().setParams(StatData._for(_local2))
        });
    }

    private function _1wP(_arg1:XML):uint {
        var match:XML;
        var otherAmount:int;
        var activateXML:XML = _arg1;
        var stat:int = int(activateXML.@stat);
        var amount:int = int(activateXML.@amount);
        var textColor:uint = ((this._Ht) ? _ix._17Q : _ix._05D);
        var otherMatches:XMLList;
        if (this.curItemXML != null) {
            otherMatches = this.curItemXML.ActivateOnEquip.(@stat == stat);
        }
        ;
        if (((!((otherMatches == null))) && ((otherMatches.length() == 1)))) {
            match = XML(otherMatches[0]);
            otherAmount = int(match.@amount);
            textColor = _ix._BZ((amount - otherAmount));
        }
        ;
        if (amount < 0) {
            textColor = 0xFF0000;
        }
        ;
        return (textColor);
    }

    private function _05w():void {
        if (this._1Lx.hasOwnProperty("Treasure") == false) {
            this._0wP.push(new Restriction(_TG._XF, 0xB3B3B3, false));
            if (((this._pb) || ((this._5 == _1V1.CURRENT_PLAYER)))) {
                this._0wP.push(new Restriction(_TG._q5, 0xB3B3B3, false));
            } else {
                this._0wP.push(new Restriction(_TG._1De, 0xB3B3B3, false));
            }
            ;
        }
        ;
    }

    private function _0U():void {
        this._0wP.push(new Restriction(_TG._77, 0xFFFFFF, false));
    }

    private function _1mp():void {
        this._0wP.push(new Restriction(_TG._0Qp, 0xB3B3B3, false));
        if (((this._pb) || ((this._5 == _1V1.CURRENT_PLAYER)))) {
            this._0wP.push(new Restriction(_TG._KV, 0xFFFFFF, false));
        } else {
            this._0wP.push(new Restriction(_TG._8m, 0xFFFFFF, false));
        }
        ;
    }

    private function _08x():void {
        this._0wP.push(new Restriction(_TG._0ZL, 0xB3B3B3, false));
        this._0wP.push(new Restriction(_TG._KV, 0xFFFFFF, false));
    }

    private function _1p():void {
        var _local2:XML;
        var _local3:Boolean;
        var _local4:int;
        var _local5:int;
        this._0wP = new Vector.<Restriction>();
        if (((((this._1Lx.hasOwnProperty("VaultItem")) && (!((this._7i == -1))))) && (!((this._7i == ObjectLibrary._qb["Vault Chest"]))))) {
            this._0wP.push(new Restriction(_TG._dY, 16549442, true));
        }
        ;
        if (this._1Lx.hasOwnProperty("Soulbound")) {
            this._0wP.push(new Restriction(_TG._1vU, 0xB3B3B3, false));
        }
        ;
        if (this._1Lx.hasOwnProperty("@setType")) {
            this._0wP.push(new Restriction(("This item is a part of " + this._1Lx.attribute("setName")), 0xFF9900, false));
        }
        ;
        if (this._Ht) {
            if (this._1Lx.hasOwnProperty("Usable")) {
                this._0U();
                this._05w();
            } else {
                if (this._1Lx.hasOwnProperty("Consumable")) {
                    this._1mp();
                } else {
                    if (this._1Lx.hasOwnProperty("InvUse")) {
                        this._08x();
                    } else {
                        this._05w();
                    }
                    ;
                }
                ;
            }
            ;
        } else {
            if (this.player != null) {
                this._0wP.push(new Restriction(_TG._14Z, 16549442, true));
            }
            ;
        }
        ;
        var _local1:Vector.<String> = ObjectLibrary.usableBy(this.objectType);
        if (_local1 != null) {
            this._0wP.push(new Restriction(_TG._0zD, 0xB3B3B3, false));
        }
        ;
        for each (_local2 in this._1Lx.EquipRequirement) {
            _local3 = ObjectLibrary._16T(_local2, this.player);
            if (_local2.toString() == "Stat") {
                _local4 = int(_local2.@stat);
                _local5 = int(_local2.@value);
                this._0wP.push(new Restriction(((("Requires " + StatData._for(_local4)) + " of ") + _local5), ((_local3) ? 0xB3B3B3 : 16549442), ((_local3) ? false : true)));
            }
            ;
        }
        ;
    }

    private function _0B():void {
        this.line2 = new _yz((_MT - 12), 0);
        addChild(this.line2);
    }

    private function _vi():void {
        if (this._0wP.length != 0) {
            this._1tN = new _06T().setSize(14).setColor(0xB3B3B3).setTextWidth((_MT - 4)).setIndent(-10).setLeftMargin(10).setWordWrap(true).setHTML(true);
            this._1tN.setStringBuilder(this._19S());
            this._1tN.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
            _qH.push(this._1tN.textChanged);
            addChild(this._1tN);
        }
        ;
    }

    private function _19S():_1vN {
        var _local2:Restriction;
        var _local3:String;
        var _local4:String;
        var _local5:String;
        var _local1:AppendingLineBuilder = new AppendingLineBuilder();
        for each (_local2 in this._0wP) {
            _local3 = ((_local2.bold_) ? "<b>" : "");
            _local3 = _local3.concat((('<font color="#' + _local2.color_.toString(16)) + '">'));
            _local4 = "</font>";
            _local4 = _local4.concat(((_local2.bold_) ? "</b>" : ""));
            _local5 = ((this.player) ? ObjectLibrary._1w3[this.player.objectType_] : "");
            _local1.pushParams(_local2.text_, {
                unUsableClass: _local5,
                usableClasses: this._0FG(),
                keyCode: _1N._Dq[Parameters.data_.useSpecial]
            }, _local3, _local4);
        }
        ;
        return (_local1);
    }

    private function _0FG():_1vN {
        var _local3:String;
        var _local1:Vector.<String> = ObjectLibrary.usableBy(this.objectType);
        var _local2:AppendingLineBuilder = new AppendingLineBuilder();
        _local2.setDelimiter(", ");
        for each (_local3 in _local1) {
            _local2.pushParams(_local3);
        }
        ;
        return (_local2);
    }

    private function _0wk():void {
        this._0ih = new _06T().setSize(14).setColor(0xB3B3B3).setTextWidth(_MT).setWordWrap(true);
        this._0ih.setStringBuilder(new _5R().setParams(String(this._1Lx.Description)));
        this._0ih.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        _qH.push(this._0ih.textChanged);
        addChild(this._0ih);
    }

    private function _0OY():void {
        if (this.curItemXML != null) {
            this._1AR = this._0dd._1qE(this._1Lx, this.curItemXML);
        } else {
            this._1AR = new _04e();
        }
        ;
    }

    private function _lu():void {
        var _local3:XML;
        var _local4:XML;
        var _local5:String;
        var _local6:String;
        if (this.player == null) {
            return;
        }
        ;
        var _local1:Number = (this.player._1EO + this.player._1jk);
        if (_local1 < 30) {
            return;
        }
        ;
        var _local2:Vector.<XML> = new Vector.<XML>();
        if (this.curItemXML != null) {
            this.curItemXML = this.curItemXML.copy();
            _local2.push(this.curItemXML);
        }
        ;
        if (this._1Lx != null) {
            this._1Lx = this._1Lx.copy();
            _local2.push(this._1Lx);
        }
        ;
        for each (_local4 in _local2) {
            for each (_local3 in _local4.Activate) {
                _local5 = _local3.toString();
                if (_local3.@effect != "Stasis") {
                    _local6 = _local3.@useWisMod;
                    if (!(((((((_local6 == "")) || ((_local6 == "false")))) || ((_local6 == "0")))) || ((_local3.@effect == "Stasis")))) {
                        switch (_local5) {
                            case _1X._h2:
                                _local3.@amount = this._1kG(_local3.@amount, 0);
                                _local3.@range = this._1kG(_local3.@range);
                                break;
                            case _1X._Bw:
                                _local3.@duration = this._1kG(_local3.@duration);
                                _local3.@range = this._1kG(_local3.@range);
                                break;
                            case _1X._ps:
                                _local3.@duration = this._1kG(_local3.@duration);
                                break;
                            case _1X._1lf:
                                _local3.@amount = this._1kG(_local3.@amount, 0);
                                _local3.@duration = this._1kG(_local3.@duration);
                                _local3.@range = this._1kG(_local3.@range);
                                break;
                            case _1X._18M:
                                _local3.@duration = this._1kG(_local3.@duration);
                                _local3.@range = this._1kG(_local3.@range);
                                break;
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
    }

    private function _1kG(_arg1:String, _arg2:Number = 1):String {
        var _local5:Number;
        var _local6:int;
        var _local7:Number;
        var _local3 = "-1";
        var _local4:Number = (this.player._1EO + this.player._1jk);
        if (_local4 < 30) {
            _local3 = _arg1;
        } else {
            _local5 = Number(_arg1);
            _local6 = (((_local5) < 0) ? -1 : 1);
            _local7 = (((_local5 * _local4) / 150) + (_local5 * _local6));
            _local7 = (Math.floor((_local7 * Math.pow(10, _arg2))) / Math.pow(10, _arg2));
            if ((_local7 - (int(_local7) * _local6)) >= ((1 / Math.pow(10, _arg2)) * _local6)) {
                _local3 = _local7.toFixed(1);
            } else {
                _local3 = _local7.toFixed(0);
            }
            ;
        }
        ;
        return (_local3);
    }


}
}//package _Z0

import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

class Effect {

    public var name_:String;
    public var valueReplacements_:Object;
    public var replacementColor_:uint = 16777103;
    public var color_:uint = 0xB3B3B3;

    public function Effect(_arg1:String, _arg2:Object) {
        this.name_ = _arg1;
        this.valueReplacements_ = _arg2;
    }

    public function setColor(_arg1:uint):Effect {
        this.color_ = _arg1;
        return (this);
    }

    public function setReplacementsColor(_arg1:uint):Effect {
        this.replacementColor_ = _arg1;
        return (this);
    }

    public function getValueReplacementsWithColor():Object {
        var _local4:String;
        var _local5:_5R;
        var _local1:Object = {};
        var _local2 = "";
        var _local3 = "";
        if (this.replacementColor_) {
            _local2 = (('</font><font color="#' + this.replacementColor_.toString(16)) + '">');
            _local3 = (('</font><font color="#' + this.color_.toString(16)) + '">');
        }
        ;
        for (_local4 in this.valueReplacements_) {
            if ((this.valueReplacements_[_local4] is AppendingLineBuilder)) {
                _local1[_local4] = this.valueReplacements_[_local4];
            } else {
                if ((this.valueReplacements_[_local4] is _5R)) {
                    _local5 = (this.valueReplacements_[_local4] as _5R);
                    _local5.setPrefix(_local2).setPostfix(_local3);
                    _local1[_local4] = _local5;
                } else {
                    _local1[_local4] = ((_local2 + this.valueReplacements_[_local4]) + _local3);
                }
                ;
            }
            ;
        }
        ;
        return (_local1);
    }


}
class Restriction {

    public var text_:String;
    public var color_:uint;
    public var bold_:Boolean;

    public function Restriction(_arg1:String, _arg2:uint, _arg3:Boolean) {
        this.text_ = _arg1;
        this.color_ = _arg2;
        this.bold_ = _arg3;
    }

}

