// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._8a

package _0Sj {
import _0PF._0ru;
import _0PF._15v;

import __Nj._0uG;
import __Nj._M4;

import _r7._17v;

import flash.events.MouseEvent;

public class _8a extends _17v {

    [Inject]
    public var view:_0tN;
    [Inject]
    public var _0AQ:_0uG;
    [Inject]
    public var _nU:_M4;


    override public function initialize():void {
        this.view.init();
        this.view._20a.addEventListener(MouseEvent.CLICK, this._127);
        this.view._uD.addEventListener(MouseEvent.CLICK, this._11M);
    }

    override public function destroy():void {
        super.destroy();
    }

    protected function _11M(_arg1:MouseEvent):void {
        this._nU.dispatch(new _0ru());
    }

    protected function _127(_arg1:MouseEvent):void {
        this._0AQ.dispatch(new _15v());
    }


}
}//package _0Sj

