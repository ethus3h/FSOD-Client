// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_14-._0n5

package _14 {
import _0cA._0bz;

import _1L3._1FO;
import _1L3._IG;

import _1TC._0zf;

import _vp._yU;

public class _0n5 {

    [Inject]
    public var _sk:_0bz;
    private var _1nC:_0zf;
    private var message:_0lz;
    private var _0QX:_1FO;
    private var _zz:_1FO;


    public function _0CY(_arg1:_0lz):void {
        this.message = _arg1;
        this._1nC = new _0zf();
        this._A1();
        this._0CA(_arg1);
        this._QI();
    }

    private function _A1():void {
        var _local1:_IG = this._sk.getInstance(_IG);
        this._0QX = _local1._1a8(this.message._is);
        this._0QX._0J7(this.message._1tG);
        this._1nC._0QX = this._0QX;
    }

    private function _0CA(_arg1:_0lz):void {
        this._zz = _1FO.clone(this._0QX);
        this._zz._0J7(_arg1._0aw);
        this._1nC._zz = this._zz;
    }

    private function _QI():void {
        var _local1:_yU = this._sk.getInstance(_yU);
        _local1.dispatch(this._1nC);
    }


}
}//package _14-

