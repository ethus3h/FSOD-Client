// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-._1sR

package _4 {
import _1q1._1st;
import _1q1._JI;

import _20I._1GP;
import _20I._1Z;

import _r7._17v;

public class _1sR extends _17v {

    [Inject]
    public var view:CharacterSkinListItem;
    [Inject]
    public var model:_1Z;
    [Inject]
    public var _W3:_1st;
    [Inject]
    public var _03K:_JI;


    override public function initialize():void {
        this.view.buy.add(this._uP);
        this.view._NV.add(this._2q);
        this.view.out.add(this._1sK);
        this.view.selected.add(this._0a);
    }

    override public function destroy():void {
        this.view.buy.remove(this._uP);
        this.view._NV.remove(this._2q);
        this.view.out.remove(this._1sK);
        this.view.selected.remove(this._0a);
        this.view._1h8(null);
    }

    private function _2q():void {
        this._03K.dispatch(this.view._iF());
    }

    private function _1sK():void {
        this._03K.dispatch(null);
    }

    private function _uP():void {
        var _local1:_1GP = this.view._iF();
        this._W3.dispatch(_local1);
    }

    private function _0a(_arg1:Boolean):void {
        this.view._iF()._1dU(_arg1);
    }


}
}//package _4-

