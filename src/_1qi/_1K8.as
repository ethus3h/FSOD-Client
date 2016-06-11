// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1qi._1K8

package _1qi {
import _0yE._1yW;
import _0yE._2P;

import _1Ea._1V1;

import _1Sm._sy;

import _1f4.Panel;

import _6u._TG;

import _Z0.EquipmentToolTip;
import _Z0._0BS;
import _Z0.ToolTip;

import _gl._0An;

import com.company.assembleegameclient.objects.Container;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;

import flash.events.MouseEvent;

public class _1K8 extends Panel {

    private static const _1Ze:Array = [0, 0, 0, 0];
    private static const _0xE:Object = {
        1: [[1, 0, 0, 1], _1Ze, _1Ze, [0, 1, 1, 0]],
        2: [[1, 0, 0, 0], _1Ze, _1Ze, [0, 1, 0, 0], [0, 0, 0, 1], _1Ze, _1Ze, [0, 0, 1, 0]],
        3: [[1, 0, 0, 1], _1Ze, _1Ze, [0, 1, 1, 0], [1, 0, 0, 0], _1Ze, _1Ze, [0, 1, 0, 0], [0, 0, 0, 1], _1Ze, _1Ze, [0, 0, 1, 0]]
    };

    private const padding:uint = 4;
    private const _1C2:uint = 4;
    public const _HF:_sy = new _sy(ToolTip);

    public function _1K8(_arg1:GameObject, _arg2:Player, _arg3:int) {
        super(null);
        this.owner = _arg1;
        this.curPlayer = _arg2;
        this._1sN = _arg3;
        var _local4:Container = (_arg1 as Container);
        if ((((_arg1 == _arg2)) || (_local4))) {
            this._1Ug = true;
        }
        ;
    }
    public var owner:GameObject;
    public var curPlayer:Player;
    public var _1Ug:Boolean;
    protected var _1sN:int;
    private var tooltip:ToolTip;
    private var _1xe:_2P;

    override public function draw():void {
        this.setItems(this.owner._0Z, this._1sN);
    }

    public function hideTooltip():void {
        if (this.tooltip) {
            this.tooltip._0Qe();
            this.tooltip = null;
            this._1xe = null;
        }
        ;
    }

    public function _0Mp():void {
        if (((((!(stage)) || (!(this.tooltip)))) || (!(this.tooltip.stage)))) {
            return;
        }
        ;
        if (this._1xe) {
            this.tooltip._0Qe();
            this.tooltip = null;
            this._0lV(this._1xe);
        }
        ;
    }

    public function setItems(_arg1:Vector.<int>, _arg2:int = 0):void {
    }

    public function _03h(_arg1:Boolean):void {
        mouseEnabled = _arg1;
    }

    protected function _1AS(_arg1:_2P, _arg2:uint, _arg3:uint):void {
        _arg1._QO(_0xE[_arg2][_arg3]);
        _arg1.addEventListener(MouseEvent.ROLL_OVER, this._0p);
        _arg1.x = (int((_arg3 % this._1C2)) * (_2P.WIDTH + this.padding));
        _arg1.y = (int((_arg3 / this._1C2)) * (_2P.HEIGHT + this.padding));
        addChild(_arg1);
    }

    private function _0lV(_arg1:_2P):void {
        var _local2:String;
        if (_arg1._Vc.itemId > 0) {
            this.tooltip = new EquipmentToolTip(_arg1._Vc.itemId, this.curPlayer, ((this.owner) ? this.owner.objectType_ : -1), this._0pw());
        } else {
            if ((_arg1 is _1yW)) {
                _local2 = _0An._17O((_arg1 as _1yW).itemType);
            } else {
                _local2 = _TG._1tP;
            }
            ;
            this.tooltip = new _0BS(0x363636, 0x9B9B9B, null, _TG._gx, 200, {itemType: _TG._1hr(_local2)});
        }
        ;
        this.tooltip._0jH(_arg1);
        this._HF.dispatch(this.tooltip);
    }

    private function _0pw():String {
        if (this.owner == this.curPlayer) {
            return (_1V1.CURRENT_PLAYER);
        }
        ;
        if ((this.owner is Player)) {
            return (_1V1.OTHER_PLAYER);
        }
        ;
        return (_1V1.NPC);
    }

    private function _0p(_arg1:MouseEvent):void {
        if (!stage) {
            return;
        }
        ;
        var _local2:_2P = (_arg1.currentTarget as _2P);
        this._0lV(_local2);
        this._1xe = _local2;
    }


}
}//package _1qi

