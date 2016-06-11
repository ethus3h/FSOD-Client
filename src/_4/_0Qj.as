// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-._0Qj

package _4 {
import _1E1.Size;

import _n._kV;

import flash.display.DisplayObject;
import flash.display.Sprite;

public class _0Qj extends Sprite {

    public static const _1U6:int = 5;
    public static const WIDTH:int = 442;
    public static const HEIGHT:int = 400;

    private const list:_kV = _0YP();

    private var _0k7:Vector.<DisplayObject>;

    public function setItems(_arg1:Vector.<DisplayObject>):void {
        this._0k7 = _arg1;
        this.list.setItems(_arg1);
        this._pV(this.list._1AD());
    }

    public function _4P():Number {
        return (this.list._4P());
    }

    private function _0YP():_kV {
        var _local1:_kV = new _kV();
        _local1.setSize(new Size(WIDTH, HEIGHT));
        _local1._DJ.add(this._pV);
        _local1._0qu(_1U6);
        addChild(_local1);
        return (_local1);
    }

    private function _pV(_arg1:Boolean):void {
        var _local3:CharacterSkinListItem;
        var _local2:int = CharacterSkinListItem.WIDTH;
        if (!_arg1) {
            _local2 = (_local2 + _kV._0Cu);
        }
        ;
        for each (_local3 in this._0k7) {
            _local3.setWidth(_local2);
        }
        ;
    }


}
}//package _4-

