// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_05j._1Zw

package _05j {
import _4p._1ae;

import _Kt._0NT;
import _Kt._1SB;
import _Kt._1Wa;

import _md._0AH;
import _md._1ty;

import _r7._17v;

import com.company.assembleegameclient.parameters.Parameters;

public class _1Zw extends _17v {

    [Inject]
    public var view:_06k;
    [Inject]
    public var model:_0AH;
    [Inject]
    public var _1JV:_1Wa;
    [Inject]
    public var _0rV:_1SB;
    [Inject]
    public var _1L9:_0NT;
    [Inject]
    public var _0oz:_0kF;
    [Inject]
    public var setup:_1ae;


    override public function initialize():void {
        var _local1:_1ty;
        this.view.setup(this.model);
        for each (_local1 in this.model._06N) {
            this.view._yZ(this._0oz.make(_local1, true));
        }
        ;
        this.view._01();
        this._1JV.add(this._0yX);
        this._0rV.add(this._0ds);
        this._1L9.add(this._0M6);
        this._0M6(_1ty.make(Parameters._11L, this._H6()));
    }

    override public function destroy():void {
        this._1JV.remove(this._0yX);
        this._0rV.remove(this._0ds);
        this._1L9.remove(this._0M6);
    }

    private function _0yX(_arg1:Boolean, _arg2:String):void {
        this.view.y = (this.model._5m.height - ((_arg1) ? this.model._1M4 : 0));
    }

    private function _0ds(_arg1:int):void {
        if (_arg1 > 0) {
            this.view._20X();
        } else {
            if (_arg1 < 0) {
                this.view._mY();
            }
            ;
        }
        ;
    }

    private function _0M6(_arg1:_1ty):void {
        this.view._yZ(this._0oz.make(_arg1));
    }

    private function _H6():String {
        var _local1:String = this.setup._0aV();
        _local1 = _local1.replace(/<font .+>(.+)<\/font>/g, "$1");
        return (_local1);
    }


}
}//package _05j

