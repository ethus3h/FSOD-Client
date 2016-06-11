// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-._1z6

package _4 {
import _20I._1Z;
import _20I._E0;

import _r7._17v;

import flash.display.DisplayObject;

public class _1z6 extends _17v {

    [Inject]
    public var view:_0Qj;
    [Inject]
    public var model:_1Z;
    [Inject]
    public var factory:_1C;


    override public function initialize():void {
        this.model.selected.add(this._05u);
        this._05u(this.model._0ZN());
    }

    override public function destroy():void {
        this.model.selected.remove(this._05u);
    }

    private function _05u(_arg1:_E0):void {
        var _local2:Vector.<DisplayObject> = this.factory.make(_arg1._0fJ);
        this.view.setItems(_local2);
    }


}
}//package _4-

