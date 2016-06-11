// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._0ng

package _0Mc {
import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.game._0p2;

import flash.events.MouseEvent;

public class _0ng extends Frame {

    public const cancel:_sy = new _sy();
    public const choose:_sy = new _sy(String);

    public function _0ng(_arg1:_0p2, _arg2:Boolean) {
        super(_TG._0Ok, _TG._Vy, _TG._1hy, "/chooseName");
        this._1P = _arg1;
        this._jc = _arg2;
        this._1ZQ = new _eR(_TG._1aJ, false);
        this._1ZQ.inputText_.restrict = "A-Za-z";
        var _local3:int = 10;
        this._1ZQ.inputText_.maxChars = _local3;
        _0qq(this._1ZQ);
        _1ll(_TG._181, {maxChars: _local3});
        _1ll(_TG._1Qa);
        _1ll(_TG._0A);
        _4j.addEventListener(MouseEvent.CLICK, this.onCancel);
        _01h.addEventListener(MouseEvent.CLICK, this._19A);
    }
    public var _1P:_0p2;
    public var _jc:Boolean;
    private var _1ZQ:_eR;

    public function _044(_arg1:String):void {
        this._1ZQ._044(_arg1);
    }

    private function onCancel(_arg1:MouseEvent):void {
        this.cancel.dispatch();
    }

    private function _19A(_arg1:MouseEvent):void {
        this.choose.dispatch(this._1ZQ.text());
        disable();
    }


}
}//package _0Mc

