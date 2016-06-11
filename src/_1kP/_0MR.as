// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1kP._0MR

package _1kP {
import _14._1Id;

import _70._0i7;

import _GD._7t;

import __Nj._0ay;

import _r7._17v;

import flash.display.BitmapData;

public class _0MR extends _17v {

    [Inject]
    public var view:ZombifyDialog;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var _3U:_0i7;
    [Inject]
    public var death:_7t;


    override public function initialize():void {
        this.view.closed.addOnce(this._0zc);
    }

    private function _0zc():void {
        var _local1:_1Id;
        _local1 = this.death._1jw();
        var _local2:BitmapData = new _0Iy(this.view.stage.width, this.view.stage.height);
        _local2.draw(this.view.stage);
        _local1.background = _local2;
        this.closeDialogs.dispatch();
        this._3U.dispatch(_local1);
    }


}
}//package _1kP

