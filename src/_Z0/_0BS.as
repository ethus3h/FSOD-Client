// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0._0BS

package _Z0 {
import _0Mr._1vN;
import _0Mr._5R;

import _0y9._06T;

import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class _0BS extends ToolTip {

    public function _0BS(_arg1:uint, _arg2:uint, _arg3:String, _arg4:String, _arg5:int, _arg6:Object = null) {
        super(_arg1, 1, _arg2, 1);
        if (_arg3 != null) {
            this._zj = new _06T().setSize(20).setColor(0xFFFFFF);
            this._super(this._zj, _arg5, _arg3);
        }
        ;
        if (_arg4 != null) {
            this.tipText_ = new _06T().setSize(14).setColor(0xB3B3B3);
            this._super(this.tipText_, _arg5, _arg4, _arg6);
        }
        ;
    }
    public var _zj:_06T;
    public var tipText_:_06T;

    override protected function alignUI():void {
        this.tipText_.y = ((this._zj) ? (this._zj.height + 8) : 0);
    }

    public function _super(_arg1:_06T, _arg2:int, _arg3:String, _arg4:Object = null):void {
        _arg1.setAutoSize(TextFieldAutoSize.LEFT);
        _arg1.setWordWrap(true).setTextWidth(_arg2);
        _arg1.setStringBuilder(new _5R().setParams(_arg3, _arg4));
        _arg1.filters = [new DropShadowFilter(0, 0, 0)];
        _qH.push(_arg1.textChanged);
        addChild(_arg1);
    }

    public function setTitle(_arg1:_1vN):void {
        this._zj.setStringBuilder(_arg1);
        draw();
    }

    public function _1Nq(_arg1:_1vN):void {
        this.tipText_.setStringBuilder(_arg1);
        draw();
    }


}
}//package _Z0

