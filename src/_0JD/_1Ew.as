// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0JD._1Ew

package _0JD {
import _1pR._7G;

import _r7._17v;

public class _1Ew extends _17v {

    [Inject]
    public var view:ReskinPanel;
    [Inject]
    public var _0bk:_7G;


    override public function initialize():void {
        this.view.reskin.add(this._Sy);
    }

    override public function destroy():void {
        this.view.reskin.remove(this._Sy);
    }

    private function _Sy():void {
        this._0bk.dispatch();
    }


}
}//package _0JD

