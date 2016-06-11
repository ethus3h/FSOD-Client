// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc.NewChooseNameFrame

package _0Mc {
import _1Sm._sy;

import _6u._TG;

import flash.events.MouseEvent;

public class NewChooseNameFrame extends Frame {

    public const choose:_sy = new _sy();
    public const cancel:_sy = new _sy();

    public function NewChooseNameFrame() {
        super(_TG._0Ok, _TG._Vy, _TG._1hy, "/newChooseName");
        this.name_ = new _eR(_TG._1Ls, false);
        this.name_.inputText_.restrict = "A-Za-z";
        var _local1:int = 10;
        this.name_.inputText_.maxChars = _local1;
        _0qq(this.name_);
        _1ll(_TG._181, {maxChars: _local1});
        _1ll(_TG._1Qa);
        _1ll(_TG._0A);
        _4j.addEventListener(MouseEvent.CLICK, this.onCancel);
        _01h.addEventListener(MouseEvent.CLICK, this._19A);
    }
    private var name_:_eR;

    public function _044(_arg1:String):void {
        this.name_._044(_arg1);
    }

    private function _19A(_arg1:MouseEvent):void {
        this.choose.dispatch(this.name_.text());
    }

    private function onCancel(_arg1:MouseEvent):void {
        this.cancel.dispatch();
    }


}
}//package _0Mc

