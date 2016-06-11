// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0PF._0Xd

package _0PF {
import _0ld.CaretakerQueryDialog;

import _1L3._IG;

import __Nj._0ay;

import _r7._17v;

import com.company.assembleegameclient.objects.ObjectLibrary;

import flash.display.BitmapData;

public class _0Xd extends _17v {

    [Inject]
    public var view:CaretakerQueryDialog;
    [Inject]
    public var model:_IG;
    [Inject]
    public var closeDialogs:_0ay;


    override public function initialize():void {
        this.view.closed.addOnce(this._0zc);
        this.view._0nD(this._1F1());
    }

    override public function destroy():void {
        this.view.closed.removeAll();
    }

    private function _1F1():BitmapData {
        var _local1:int = this.model._Er();
        return (ObjectLibrary.getRedrawnTextureFromType(_local1, 80, true));
    }

    private function _0zc():void {
        this.closeDialogs.dispatch();
    }


}
}//package _0PF

