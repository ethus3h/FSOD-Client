// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_8x._0Df

package _8x {
import _1RN._0Qv;
import _1RN._RX;
import _1RN._b3;
import _1RN._bw;

import _r7._17v;

public class _0Df extends _17v {

    [Inject]
    public var view:_1RV;
    [Inject]
    public var _11l:_RX;
    [Inject]
    public var show:_b3;
    [Inject]
    public var hide:_bw;
    [Inject]
    public var remove:_0Qv;


    override public function initialize():void {
        this.remove.add(this._0G9);
        this._11l.add(this._ZV);
        this.show.add(this._jr);
        this.hide.add(this._11X);
        this.view.visible = false;
    }

    override public function destroy():void {
        this.remove.remove(this._0G9);
        this._11l.remove(this._ZV);
        this.show.remove(this._jr);
        this.hide.remove(this._11X);
    }

    private function _0G9():void {
        this.view.parent.removeChild(this.view);
    }

    private function _ZV():void {
        this.view.visible = !(this.view.visible);
    }

    private function _jr():void {
        this.view.visible = true;
    }

    private function _11X():void {
        this.view.visible = false;
    }


}
}//package _8x

