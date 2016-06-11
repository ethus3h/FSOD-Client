// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1VR._1IS

package _1VR {
import _1Sm._sy;

import com.company.assembleegameclient.map._1Px;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.ui._wA;
import com.company.assembleegameclient.ui._yz;

import flash.events.Event;
import flash.events.MouseEvent;

public class _1IS extends Menu {

    public function _1IS(_arg1:_1Px, _arg2:Vector.<Player>) {
        this._e8 = new Vector.<_wA>();
        this._1Hk = new _sy();
        super(0x363636, 0xFFFFFF);
        this.map_ = _arg1;
        this._0Ih = _arg2.concat();
        this._0j0();
        this._1qr();
    }
    public var map_:_1Px;
    public var _0Ih:Vector.<Player>;
    public var _19F:_W6;
    public var _0z1:_yz;
    public var _1Hk:_sy;
    private var _e8:Vector.<_wA>;
    private var _1dr:uint = 4;

    private function _1qr():void {
        var _local1:Player;
        var _local2:_wA;
        for each (_local1 in this._0Ih) {
            _local2 = new _wA(0xB3B3B3, true, _local1);
            _local2.x = 0;
            _local2.y = this._1dr;
            addChild(_local2);
            this._e8.push(_local2);
            this._1dr = (this._1dr + 32);
        }
        ;
    }

    private function _0j0():void {
        if (this.map_._1D4()) {
            this._19F = new TeleportMenuOption(this.map_.player_);
            this._19F.x = 8;
            this._19F.y = 8;
            this._19F.addEventListener(MouseEvent.CLICK, this._0mD);
            addChild(this._19F);
            this._0z1 = new _yz(150, 0x1C1C1C);
            this._0z1.x = 6;
            this._0z1.y = 40;
            addChild(this._0z1);
            this._1dr = 52;
        }
        ;
    }

    private function _0mD(_arg1:Event):void {
        var _local4:Player;
        var _local2:Player = this.map_.player_;
        var _local3:Player;
        for each (_local4 in this._0Ih) {
            if (_local2._Ym(_local4)) {
                _local3 = _local4;
                break;
            }
            ;
        }
        ;
        if (_local3 != null) {
            _local2._0vG(_local3);
        } else {
            this._1Hk.dispatch();
        }
        ;
        remove();
    }


}
}//package _1VR

