// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Vj._0eI

package _Vj {
import _Gf._GC;

import _r7._17v;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.GameObject;

import flash.utils.Dictionary;

public class _0eI extends _17v {

    [Inject]
    public var _0QU:_GC;
    [Inject]
    public var view:GameSprite;


    override public function initialize():void {
        this._0QU.add(this._n0);
    }

    override public function destroy():void {
        this._0QU.remove(this._n0);
    }

    private function _n0(_arg1:String = ""):void {
        this.view.setFocus(this._4i(_arg1));
    }

    private function _4i(_arg1:String):GameObject {
        var _local3:GameObject;
        if (_arg1 == "") {
            return (this.view.map.player_);
        }
        ;
        var _local2:Dictionary = this.view.map.goDict_;
        for each (_local3 in _local2) {
            if (_local3.name_ == _arg1) {
                return (_local3);
            }
            ;
        }
        ;
        return (this.view.map.player_);
    }


}
}//package _Vj

