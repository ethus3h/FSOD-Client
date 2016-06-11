// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._0xZ

package _0od {
import _0Mc.Frame;
import _0Mc._eR;

import _0Ql._0q;

import _1Sm._sy;

import _6u._TG;

import flash.events.MouseEvent;

public class _0xZ extends Frame {

    public function _0xZ() {
        super(_TG._11n, "", _TG._9B, "/changePassword");
        this.password_ = new _eR(_TG._0S8, true);
        _0qq(this.password_);
        this._0sa = new _eR(_TG._nz, true);
        _0qq(this._0sa);
        this._0zL = new _eR(_TG._s0, true);
        _0qq(this._0zL);
        this.change = new _0q(_01h, MouseEvent.CLICK);
    }
    public var cancel:_sy;
    public var change:_sy;
    public var password_:_eR;
    public var _0sa:_eR;
    public var _0zL:_eR;

    public function _044(_arg1:String):void {
        this.password_._044(_arg1);
    }

    public function _1p9():void {
        this.password_._1p9();
        this._0zL._1p9();
        this._0sa._1p9();
    }

    private function _xN():Boolean {
        var _local1 = (this.password_.text().length >= 5);
        if (!_local1) {
            this.password_._044(_TG._0MJ);
        }
        ;
        return (_local1);
    }

    private function _1M5():Boolean {
        var _local2:String;
        var _local3:int;
        var _local1 = (this._0sa.text().length >= 10);
        if (!_local1) {
            this._0sa._044(_TG._0zj);
        } else {
            _local2 = this._0sa.text();
            _local3 = 0;
            while (_local3 < (_local2.length - 2)) {
                if ((((_local2.charAt(_local3) == _local2.charAt((_local3 + 1)))) && ((_local2.charAt((_local3 + 1)) == _local2.charAt((_local3 + 2)))))) {
                    this._0sa._044(_TG._0zj);
                    _local1 = false;
                }
                ;
                _local3++;
            }
            ;
        }
        ;
        return (_local1);
    }

    private function _15V():Boolean {
        var _local1 = (this._0sa.text() == this._0zL.text());
        if (!_local1) {
            this._0zL._044(_TG._1QV);
        }
        ;
        return (_local1);
    }


}
}//package _0od

