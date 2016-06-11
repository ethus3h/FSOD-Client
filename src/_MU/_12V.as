// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_MU._12V

package _MU {
import _0Mr.AppendingLineBuilder;

import _0Sj._0mW;

import _1L3._0tx;
import _1L3._1FO;

import _1Sm._sy;

import _6u._TG;

import com.company.util.MoreColorUtil;

import flash.events.MouseEvent;
import flash.filters.ColorMatrixFilter;
import flash.geom.ColorTransform;

public class _12V extends _1kK {

    public const _1S3:_sy = new _sy();

    public function _12V() {
        this._BY = new _0mW();
        this._0Nj = new ColorMatrixFilter(MoreColorUtil._1Bu);
        super();
        addEventListener(MouseEvent.CLICK, this._0xI);
        this.updateTitle();
    }
    public var _zc:Boolean = false;
    public var _hL:Boolean = false;
    private var _BY:_0mW;
    private var _0Nj:ColorMatrixFilter;

    public function updateTitle():void {
        if (((!(_1Wh)) || (contains(_1Wh)))) {
            setTitle(_TG._FY, {});
        }
        ;
    }

    public function _UX(_arg1:_1FO):void {
        var _local2:AppendingLineBuilder;
        if (_arg1) {
            this._Nv(_arg1);
            setTitle(_TG._1Je, {data: _arg1.getName()});
            _local2 = new AppendingLineBuilder();
            _local2.pushParams(_arg1._07I());
            ((this._zc) && (_local2.pushParams(_0tx._0Nk(_arg1._N6()))));
            _1lj(_TG._1Je, {data: _local2});
        }
        ;
    }

    public function _0Ca(_arg1:Boolean):void {
        var _local2:ColorTransform;
        if (this._hL != _arg1) {
            this._hL = _arg1;
            _1Wh.filters = ((_arg1) ? [this._0Nj] : []);
            _local2 = ((_arg1) ? MoreColorUtil._KM : new ColorTransform());
            _1Wh.transform.colorTransform = _local2;
        }
        ;
    }

    private function _Nv(_arg1:_1FO):void {
        ((_1Wh) && (removeChild(_1Wh)));
        _1Wh = this._BY.create(_arg1, 48);
        addChild(_1Wh);
        _10o();
    }

    private function _0xI(_arg1:MouseEvent):void {
        if (!this._hL) {
            this._1S3.dispatch();
        }
        ;
    }


}
}//package _MU

