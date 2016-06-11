// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0AI._0oM

package _0AI {
import _7T._0CZ;
import _7T._18u;

import _R2._fo;

import _r7._17v;

public class _0oM extends _17v {

    [Inject]
    public var view:_1BY;
    [Inject]
    public var update:_fo;
    [Inject]
    public var model:_18u;


    override public function initialize():void {
        this.view.update(this.model.news);
        this.update.add(this._0IJ);
    }

    override public function destroy():void {
        this.update.remove(this._0IJ);
    }

    private function _0IJ(_arg1:Vector.<_0CZ>):void {
        this.view.update(_arg1);
    }


}
}//package _0AI

