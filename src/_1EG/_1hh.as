// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._1hh

package _1EG {
import _1E1.Size;

import _1ik._2X;

import _n._kV;

import flash.display.DisplayObject;
import flash.display.Sprite;

public class _1hh extends Sprite {

    private const _uq:int = 20;

    public function _1hh() {
        this._05n = new Vector.<DisplayObject>(this._uq);
        this._0rV = new _kV();
        super();
        var _local1:int;
        while (_local1 < this._uq) {
            this._05n[_local1] = new ArenaLeaderboardListItem();
            _local1++;
        }
        ;
        this._0rV.setSize(new Size(786, 400));
        addChild(this._0rV);
    }
    private var _05n:Vector.<DisplayObject>;
    private var _0rV:_kV;

    public function setItems(_arg1:Vector.<_2X>, _arg2:Boolean):void {
        var _local4:_2X;
        var _local5:ArenaLeaderboardListItem;
        var _local3:int;
        while (_local3 < this._05n.length) {
            _local4 = (((_local3 < _arg1.length)) ? _arg1[_local3] : null);
            _local5 = (this._05n[_local3] as ArenaLeaderboardListItem);
            _local5.apply(_local4, _arg2);
            _local3++;
        }
        ;
        this._0rV.setItems(this._05n);
    }


}
}//package _1EG

