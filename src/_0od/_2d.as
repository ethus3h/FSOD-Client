// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._2-d

package _0od {
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import com.company.ui._V2;

import flash.filters.DropShadowFilter;

public class _2d extends _HH {

    public function _2d(_arg1:String, _arg2:Boolean, _arg3:uint = 238, _arg4:uint = 30) {
        this.nameText_ = new _06T().setSize(18).setColor(_0Qo);
        this.nameText_.setBold(true);
        this.nameText_.setStringBuilder(new _5R().setParams(_arg1));
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.nameText_);
        this.inputText_ = new _V2(20, _0Qo, true, _arg3, _arg4);
        this.inputText_.y = 30;
        this.inputText_.x = 6;
        this.inputText_.border = false;
        this.inputText_.displayAsPassword = _arg2;
        this.inputText_._1B5();
        addChild(this.inputText_);
        this._WB(false);
    }
    public var nameText_:_06T;
    public var inputText_:_V2;
    public var _3T:Boolean;

    override public function getHeight():Number {
        return (68);
    }

    public function text():String {
        return (this.inputText_.text);
    }

    public function textChanged():_sy {
        return (this.nameText_.textChanged);
    }

    public function _WB(_arg1:Boolean):void {
        this._3T = _arg1;
        _pe(this.inputText_, 0, 0, _arg1);
    }


}
}//package _0od

