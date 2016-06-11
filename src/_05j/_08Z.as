// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j._08Z

package _05j {
import _0CT._8w;

import _1Fr._qf;

import com.company.assembleegameclient.objects.Player;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.geom.Rectangle;
import flash.utils.getTimer;

public class _08Z extends Sprite {

    private static const _0RI:uint = 20000;

    public function _08Z(_arg1:Vector.<DisplayObject>, _arg2:int, _arg3:int, _arg4:Boolean, _arg5:int, _arg6:String, _arg7:Boolean, _arg8:Boolean) {
        mouseEnabled = true;
        this._1y9 = _arg2;
        this._1Pm = _arg3;
        this.list = _arg1;
        this.count = _arg1.length;
        this._O6 = getTimer();
        this._RP = _arg4;
        this._0Ex = _arg5;
        this.playerName = _arg6;
        this._0sg = _arg7;
        this._1yr = _arg8;
        this._1Ii();
        this._0kk();
        addEventListener(MouseEvent.RIGHT_MOUSE_DOWN, this._03v);
    }
    public var _0Ex:int;
    public var playerName:String = "";
    public var _0sg:Boolean = false;
    public var _1yr:Boolean = false;
    private var _1y9:int;
    private var list:Vector.<DisplayObject>;
    private var count:uint;
    private var _1Pm:uint;
    private var _O6:uint;
    private var _RP:Boolean;

    public function _Ga():Boolean {
        return ((((getTimer() > (this._O6 + _0RI))) || (this._RP)));
    }

    private function _1Ii():void {
        var _local1:int;
        var _local3:DisplayObject;
        var _local4:Rectangle;
        var _local5:int;
        _local1 = 0;
        var _local2:int;
        while (_local2 < this.count) {
            _local3 = this.list[_local2];
            _local4 = _local3.getRect(_local3);
            _local3.x = _local1;
            _local3.y = (((this._1Pm - _local4.height) * 0.5) - this._1Pm);
            if ((_local1 + _local4.width) > this._1y9) {
                _local3.x = 0;
                _local1 = 0;
                _local5 = 0;
                while (_local5 < _local2) {
                    this.list[_local5].y = (this.list[_local5].y - this._1Pm);
                    _local5++;
                }
                ;
            }
            ;
            _local1 = (_local1 + _local4.width);
            _local2++;
        }
        ;
    }

    private function _0kk():void {
        var _local1:DisplayObject;
        for each (_local1 in this.list) {
            addChild(_local1);
        }
        ;
    }

    public function _03v(_arg1:MouseEvent):void {
        var hmod:_qf;
        var aPlayer:Player;
        var e:MouseEvent = _arg1;
        try {
            hmod = _8w._1Sz().getInstance(_qf);
            if (((((!((hmod._1P.map.goDict_[this._0Ex] == null))) && ((hmod._1P.map.goDict_[this._0Ex] is Player)))) && (!((hmod._1P.map.player_.objectId_ == this._0Ex))))) {
                aPlayer = (hmod._1P.map.goDict_[this._0Ex] as Player);
                hmod._1P._0mG(aPlayer, e.stageX, e.stageY);
            } else {
                if (((((((!(this._1yr)) && (!((this.playerName == null))))) && (!((this.playerName == ""))))) && (!((hmod._1P.map.player_.name_ == this.playerName))))) {
                    hmod._1P._0mG(null, e.stageX, e.stageY, this.playerName, this._0sg);
                } else {
                    if (((((((this._1yr) && (!((this.playerName == null))))) && (!((this.playerName == ""))))) && (!((hmod._1P.map.player_.name_ == this.playerName))))) {
                        hmod._1P._0mG(null, e.stageX, e.stageY, this.playerName, false, true);
                    }
                    ;
                }
                ;
            }
            ;
        } catch (e:Error) {
        }
        ;
    }


}
}//package _05j

