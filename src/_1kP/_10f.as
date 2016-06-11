// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kP._10f

package _1kP {
import _14._1Id;

import _1d9._1gY;

import _70._1Ax;

import _r7._17v;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;

import flash.utils.Dictionary;

public class _10f extends _17v {

    [Inject]
    public var view:GameSprite;
    [Inject]
    public var _vM:_1Ax;
    [Inject]
    public var _P7:_1gY;


    override public function initialize():void {
        this._vM.add(this._0sI);
    }

    override public function destroy():void {
        this._vM.remove(this._0sI);
    }

    private function _0sI(_arg1:_1Id):void {
        this._19();
        this._09o(_arg1);
        this._P7.dispatch(false);
    }

    private function _19():void {
        var _local1:Player = this.view.map.player_;
        ((_local1) && (this.view.map.removeObj(_local1.objectId_)));
        this.view.map.player_ = null;
    }

    private function _09o(_arg1:_1Id):void {
        var _local2:Dictionary = this.view.map.goDict_;
        ((_local2) && (this.view.setFocus(_local2[_arg1._qW])));
    }


}
}//package _1kP

