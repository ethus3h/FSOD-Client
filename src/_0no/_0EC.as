// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no._0EC

package _0no {
import _0hi._DG;

import _10a._FU;

import _r7._17v;

public class _0EC extends _17v {

    [Inject]
    public var view:_fY;
    [Inject]
    public var model:_FU;
    [Inject]
    public var _ky:_DG;


    override public function initialize():void {
        this.model._0kc.add(this._Np);
        this.model._1Xl.add(this._1m5);
        this.model._Hy.add(this._1Gk);
        this.view._1VP.add(this._Zh);
    }

    override public function destroy():void {
        this.model._0kc.remove(this._Np);
        this.model._1Xl.remove(this._1m5);
        this.view._1VP.remove(this._Zh);
    }

    private function _Np(_arg1:int):void {
        this.view.draw(_arg1, this.model._00f());
    }

    private function _1m5(_arg1:int):void {
        this.view.draw(this.model._1fB(), _arg1);
    }

    private function _1Gk(_arg1:int):void {
        this.view.draw(this.model._1fB(), this.model._00f(), _arg1);
    }

    private function _Zh():void {
        this._ky.dispatch();
    }


}
}//package _0no

