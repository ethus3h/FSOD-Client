// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._0wy

package _0Mc {
import _0MO._0WQ;

import _0gF._Ww;

import _1i0._18D;

import __1Ye._0nK;

import __Nj._0ay;

import _r7._17v;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.parameters.Parameters;

public class _0wy extends _17v {

    [Inject]
    public var view:_0ng;
    [Inject]
    public var closeDialogs:_0ay;
    [Inject]
    public var trackEvent:_18D;
    [Inject]
    public var _LY:_0WQ;
    private var _1P:_0p2;
    private var name:String;


    override public function initialize():void {
        this._1P = this.view._1P;
        this.view.choose.add(this._19A);
        this.view.cancel.add(this.onCancel);
    }

    override public function destroy():void {
        this.view.choose.remove(this._19A);
        this.view.cancel.remove(this.onCancel);
    }

    private function _19A(_arg1:String):void {
        this.name = _arg1;
        this._1P.addEventListener(_Ww.NAMERESULTEVENT, this._1Tr);
        this._1P.gsc_.chooseName(_arg1);
        this.view.disable();
    }

    private function _us():void {
        if (this.view._jc) {
            this._eQ();
        }
        ;
        this._1P.model.setName(this.name);
        this._1P.map.player_.name_ = this.name;
        this.closeDialogs.dispatch();
        this._LY.dispatch(this.name);
    }

    private function _eQ():void {
        var _local1:_0nK = new _0nK();
        _local1.category = "credits";
        _local1._0HR = ((this._1P.model.getConverted()) ? "buyConverted" : "buy");
        _local1.label = "Name Change";
        _local1.value = Parameters._2B;
        this.trackEvent.dispatch(_local1);
    }

    private function _0R(_arg1:String):void {
        this.view._044(_arg1);
        this.view._bx();
    }

    private function onCancel():void {
        this.closeDialogs.dispatch();
    }

    public function _1Tr(_arg1:_Ww):void {
        this._1P.removeEventListener(_Ww.NAMERESULTEVENT, this._1Tr);
        var _local2:Boolean = _arg1._1Xe.success_;
        if (_local2) {
            this._us();
        } else {
            this._0R(_arg1._1Xe.errorText_);
        }
        ;
    }


}
}//package _0Mc

