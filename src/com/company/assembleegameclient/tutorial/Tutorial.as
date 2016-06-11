// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.tutorial.Tutorial

package com.company.assembleegameclient.tutorial {
import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.util.PointUtil;

import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.filters.BlurFilter;
import flash.utils.getTimer;

import kabam.rotmg.assets._1tT;

public class Tutorial extends Sprite {

    public static const _16V:String = "Next";
    public static const _06P:String = "MoveForward";
    public static const _1Bk:String = "MoveBackward";
    public static const _0RV:String = "RotateLeft";
    public static const _Ty:String = "RotateRight";
    public static const _1K4:String = "MoveLeft";
    public static const _0dm:String = "MoveRight";
    public static const _FL:String = "Update";
    public static const _0pQ:String = "Attack";
    public static const _169:String = "Damage";
    public static const _1cT:String = "Kill";
    public static const _06O:String = "ShowLoot";
    public static const _1HS:String = "Text";
    public static const _0LU:String = "ShowPortal";
    public static const _15S:String = "EnterPortal";
    public static const _1ar:String = "Near";
    public static const _ny:String = "Equip";

    public function Tutorial(_arg1:GameSprite) {
        var _local2:XML;
        var _local3:Graphics;
        this._0do = new Vector.<Step>();
        this._1cm = new Sprite();
        this._lY = new Shape();
        this._1kf = new Shape();
        super();
        this.gs_ = _arg1;
        for each (_local2 in _1tT._0xO.Step) {
            this._0do.push(new Step(_local2));
        }
        ;
        addChild(this._lY);
        addChild(this._1kf);
        _local3 = this._1cm.graphics;
        _local3.clear();
        _local3.beginFill(0, 0.1);
        _local3.drawRect(0, 0, 800, 600);
        _local3.endFill();
        Parameters.data_.needsTutorial = false;
        Parameters.save();
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    public var gs_:GameSprite;
    public var _0do:Vector.<Step>;
    public var _0pR:int = 0;
    private var _1cm:Sprite;
    private var _lY:Shape;
    private var _1kf:Shape;
    private var _0NF:_1DV = null;

    function doneAction(_arg1:String):void {
        var _local3:Requirement;
        var _local4:Player;
        var _local5:Boolean;
        var _local6:GameObject;
        var _local7:Number;
        if (this._0pR >= this._0do.length) {
            return;
        }
        ;
        var _local2:Step = this._0do[this._0pR];
        if (_arg1 != _local2.action_) {
            return;
        }
        ;
        for each (_local3 in _local2._0a) {
            _local4 = this.gs_.map.player_;
            switch (_local3.type_) {
                case _1ar:
                    _local5 = false;
                    for each (_local6 in this.gs_.map.goDict_) {
                        if (_local6.objectType_ != _local3.objectType_) {
                        } else {
                            _local7 = PointUtil._1Ar(_local6.x_, _local6.y_, _local4.x_, _local4.y_);
                            if (_local7 <= _local3.radius_) {
                                _local5 = true;
                                break;
                            }
                            ;
                        }
                        ;
                    }
                    ;
                    if (!_local5) {
                        return;
                    }
                    ;
                    break;
                case _ny:
                    if (_local4._0Z[_local3._1Dp] != _local3.objectType_) {
                        return;
                    }
                    ;
                    break;
            }
            ;
        }
        ;
        this._0pR++;
        this.draw();
    }

    private function draw():void {
        var _local3:UIDrawBox;
    }

    private function onAddedToStage(_arg1:Event):void {
        addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
        this.draw();
    }

    private function onRemovedFromStage(_arg1:Event):void {
        removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
    }

    private function onEnterFrame(_arg1:Event):void {
        var _local4:Step;
        var _local5:Boolean;
        var _local6:Requirement;
        var _local7:int;
        var _local8:UIDrawBox;
        var _local9:UIDrawArrow;
        var _local10:Player;
        var _local11:Boolean;
        var _local12:GameObject;
        var _local13:Number;
        var _local2:Number = Math.abs(Math.sin((getTimer() / 300)));
        this._lY.filters = [new BlurFilter((5 + (_local2 * 5)), (5 + (_local2 * 5)))];
        this._1kf.graphics.clear();
        this._lY.graphics.clear();
        var _local3:int;
        while (_local3 < this._0do.length) {
            _local4 = this._0do[_local3];
            _local5 = true;
            for each (_local6 in _local4._0a) {
                _local10 = this.gs_.map.player_;
                switch (_local6.type_) {
                    case _1ar:
                        _local11 = false;
                        for each (_local12 in this.gs_.map.goDict_) {
                            if (((!((_local12.objectType_ == _local6.objectType_))) || (((!((_local6._0dR == ""))) && (!((_local12.name_ == _local6._0dR))))))) {
                            } else {
                                _local13 = PointUtil._1Ar(_local12.x_, _local12.y_, _local10.x_, _local10.y_);
                                if (_local13 <= _local6.radius_) {
                                    _local11 = true;
                                    break;
                                }
                                ;
                            }
                            ;
                        }
                        ;
                        if (!_local11) {
                            _local5 = false;
                        }
                        ;
                        break;
                }
                ;
            }
            ;
            if (!_local5) {
                _local4._On = 0;
            } else {
                if (_local4._On == 0) {
                    _local4._On = getTimer();
                }
                ;
                _local7 = (getTimer() - _local4._On);
                for each (_local8 in _local4._2O) {
                    _local8.draw((5 * _local2), this._1kf.graphics, _local7);
                    _local8.draw((6 * _local2), this._lY.graphics, _local7);
                }
                ;
                for each (_local9 in _local4._20p) {
                    _local9.draw((5 * _local2), this._1kf.graphics, _local7);
                    _local9.draw((6 * _local2), this._lY.graphics, _local7);
                }
                ;
            }
            ;
            _local3++;
        }
        ;
    }


}
}//package com.company.assembleegameclient.tutorial

