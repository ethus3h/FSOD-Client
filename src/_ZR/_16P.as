// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZR._16P

package _ZR {
import _1VR.Menu;
import _1VR._1IS;

import _Z0._0o5;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;

import flash.events.MouseEvent;

public class _16P extends _0Lx {

    public function _16P() {
        super(0xFFFFFF, 4179794, false);
    }

    protected function _B7():Menu {
        var _local1:Player = (go_ as Player);
        if ((((_local1 == null)) || ((_local1.map_ == null)))) {
            return (null);
        }
        ;
        var _local2:Player = _local1.map_.player_;
        if (_local2 == null) {
            return (null);
        }
        ;
        return (new _1IS(_local1.map_, this._kz()));
    }

    private function _kz():Vector.<Player> {
        var _local2:GameObject;
        var _local1:Vector.<Player> = new <Player>[(go_ as Player)];
        for each (_local2 in _05L) {
            _local1.push((_local2 as Player));
        }
        ;
        return (_local1);
    }

    override protected function onMouseOver(_arg1:MouseEvent):void {
        super.onMouseOver(_arg1);
        _1jT(new _0o5(this._kz(), false));
    }

    override protected function onMouseOut(_arg1:MouseEvent):void {
        super.onMouseOut(_arg1);
        _1jT(null);
    }

    override protected function onMouseDown(_arg1:MouseEvent):void {
        super.onMouseDown(_arg1);
        _i2();
        _yx(this._B7());
    }


}
}//package _ZR

