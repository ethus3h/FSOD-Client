// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._cg

package _1CB {
import _0Mr._1M;
import _0Mr._5R;

import _0Ql._ZQ;

import _0y9._06T;

import _Z0._0BS;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _cg extends Sprite {

    public function _cg(_arg1:String, _arg2:String, _arg3:String, _arg4:Boolean) {
        this.toolTip_ = new _0BS(0x363636, 0x9B9B9B, "", "", 200);
        super();
        this._217 = _arg2;
        this.description_ = _arg3;
        this.nameText_ = new _06T().setSize(13).setColor(0xB3B3B3);
        this.nameText_.setStringBuilder(new _5R().setParams(_arg1));
        this._BK(this.nameText_);
        this._1Uf = new _06T().setSize(13).setColor(this._JZ).setBold(true);
        this._1Uf.setStringBuilder(new _1M("-"));
        this._BK(this._1Uf);
        this._nV = _arg4;
        this._1Gq = new _ZQ(this, MouseEvent.MOUSE_OVER, MouseEvent);
        this._0Kn = new _ZQ(this, MouseEvent.MOUSE_OUT, MouseEvent);
    }
    public var _217:String;
    public var description_:String;
    public var nameText_:_06T;
    public var _1Uf:_06T;
    public var _nV:Boolean;
    public var val_:int = -1;
    public var boost_:int = -1;
    public var _JZ:uint = 0xB3B3B3;
    public var toolTip_:_0BS;
    public var _1Gq:_ZQ;
    public var _0Kn:_ZQ;

    public function _BK(_arg1:_06T):void {
        _arg1.setAutoSize(TextFieldAutoSize.LEFT);
        _arg1.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(_arg1);
    }

    public function _1zN():void {
        this.toolTip_.setTitle(new _5R().setParams(this._217));
        this.toolTip_._1Nq(new _5R().setParams(this.description_));
        if (!stage.contains(this.toolTip_)) {
            stage.addChild(this.toolTip_);
        }
        ;
    }

    public function _WJ():void {
        if (this.toolTip_.parent != null) {
            this.toolTip_.parent.removeChild(this.toolTip_);
        }
        ;
    }

    public function draw(_arg1:int, _arg2:int, _arg3:int):void {
        var _local4:uint;
        if ((((_arg1 == this.val_)) && ((_arg2 == this.boost_)))) {
            return;
        }
        ;
        this.val_ = _arg1;
        this.boost_ = _arg2;
        if ((_arg1 - _arg2) >= _arg3) {
            _local4 = 0xFCDF00;
        } else {
            if (((((this._nV) && ((this.val_ <= 0)))) || ((this.boost_ < 0)))) {
                _local4 = 16726072;
            } else {
                if (this.boost_ > 0) {
                    _local4 = 6206769;
                } else {
                    _local4 = 0xB3B3B3;
                }
                ;
            }
            ;
        }
        ;
        if (this._JZ != _local4) {
            this._JZ = _local4;
            this._1Uf.setColor(this._JZ);
        }
        ;
        var _local5:String = this.val_.toString();
        if (this.boost_ != 0) {
            _local5 = (_local5 + (((" (" + (((this.boost_ > 0)) ? "+" : "")) + this.boost_.toString()) + ")"));
        }
        ;
        this._1Uf.setStringBuilder(new _1M(_local5));
        this._1Uf.x = this.nameText_.getBounds(this).right;
    }


}
}//package _1CB

