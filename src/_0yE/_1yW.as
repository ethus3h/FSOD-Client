// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0yE._1yW

package _0yE {
import _1qi._1K8;

import _gl._0An;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Player;
import com.company.util.AssetLibrary;
import com.company.util.MoreColorUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.filters.ColorMatrixFilter;

public class _1yW extends _J6 {

    private static const _1E0:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil._12s(0x363636));

    public function _1yW(_arg1:int, _arg2:_1K8, _arg3:Boolean) {
        super(_arg1, _arg2, _arg3);
    }
    public var _1kT:Bitmap;
    public var itemType:int;
    private var _158:int;

    override public function canHoldItem(_arg1:int):Boolean {
        return ((((_arg1 <= 0)) || ((this.itemType == ObjectLibrary._bE(_arg1)))));
    }

    override public function setItem(_arg1:int):Boolean {
        var _local2:Boolean = super.setItem(_arg1);
        if (_local2) {
            this._1kT.visible = (_Vc.itemId <= 0);
            this._0dx();
        }
        ;
        return (_local2);
    }

    override protected function beginDragCallback():void {
        this._1kT.visible = true;
    }

    override protected function endDragCallback():void {
        this._1kT.visible = (_Vc.itemId <= 0);
    }

    override protected function getBackgroundColor():int {
        return (0x454545);
    }

    public function setType(_arg1:int):void {
        var _local2:BitmapData;
        var _local3:int;
        var _local4:int;
        switch (_arg1) {
            case _0An._1Y:
                break;
            case _0An._1VX:
                _local2 = AssetLibrary._Rb("lofiObj5", 48);
                break;
            case _0An._16B:
                _local2 = AssetLibrary._Rb("lofiObj5", 96);
                break;
            case _0An._1h5:
                _local2 = AssetLibrary._Rb("lofiObj5", 80);
                break;
            case _0An._MK:
                _local2 = AssetLibrary._Rb("lofiObj6", 80);
                break;
            case _0An._06X:
                _local2 = AssetLibrary._Rb("lofiObj6", 112);
                break;
            case _0An._0Kk:
                _local2 = AssetLibrary._Rb("lofiObj5", 0);
                break;
            case _0An._Sv:
                _local2 = AssetLibrary._Rb("lofiObj5", 32);
                break;
            case _0An._06w:
                _local2 = AssetLibrary._Rb("lofiObj5", 64);
                break;
            case _0An._0tY:
                _local2 = AssetLibrary._Rb("lofiObj", 44);
                break;
            case _0An._W4:
                _local2 = AssetLibrary._Rb("lofiObj6", 64);
                break;
            case _0An._Hp:
                _local2 = AssetLibrary._Rb("lofiObj6", 160);
                break;
            case _0An._0sG:
                _local2 = AssetLibrary._Rb("lofiObj6", 32);
                break;
            case _0An._1yU:
                _local2 = AssetLibrary._Rb("lofiObj5", 16);
                break;
            case _0An._0c7:
                _local2 = AssetLibrary._Rb("lofiObj6", 48);
                break;
            case _0An._0Td:
                _local2 = AssetLibrary._Rb("lofiObj6", 96);
                break;
            case _0An._Qb:
                _local2 = AssetLibrary._Rb("lofiObj5", 112);
                break;
            case _0An._0GM:
                _local2 = AssetLibrary._Rb("lofiObj6", 128);
                break;
            case _0An._JN:
                _local2 = AssetLibrary._Rb("lofiObj6", 0);
                break;
            case _0An._0UC:
                _local2 = AssetLibrary._Rb("lofiObj6", 16);
                break;
            case _0An._0He:
                _local2 = AssetLibrary._Rb("lofiObj6", 144);
                break;
            case _0An._11v:
                _local2 = AssetLibrary._Rb("lofiObj6", 176);
                break;
            case _0An._sa:
                _local2 = AssetLibrary._Rb("lofiObj6", 192);
                break;
            case _0An._0Ck:
                _local2 = AssetLibrary._Rb("lofiObj3", 540);
                break;
            case _0An._Gv:
                _local2 = AssetLibrary._Rb("lofiObj3", 555);
                break;
        }
        ;
        if (_local2 != null) {
            this._1kT = new Bitmap(_local2);
            this._1kT.x = BORDER;
            this._1kT.y = BORDER;
            this._1kT.scaleX = 4;
            this._1kT.scaleY = 4;
            this._1kT.filters = [_1E0];
            addChildAt(this._1kT, 0);
        }
        ;
        this.itemType = _arg1;
    }

    public function updateDim(_arg1:Player):void {
        _Vc.setDim(((_arg1) && ((_arg1._0e < this._158))));
    }

    private function _0dx():void {
        var _local1:XML;
        this._158 = 0;
        if (_Vc.itemId > 0) {
            _local1 = ObjectLibrary._18H[_Vc.itemId];
            if (((_local1) && (_local1.hasOwnProperty("Usable")))) {
                if (_local1.hasOwnProperty("MultiPhase")) {
                    this._158 = _local1.MpEndCost;
                } else {
                    this._158 = _local1.MpCost;
                }
                ;
            }
            ;
        }
        ;
    }


}
}//package _0yE

