// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_G8._066

package _G8 {
import _0Mr._1vN;

import com.company.assembleegameclient.parameters.Parameters;

import flash.events.Event;

public class _066 extends _1of {

    public function _066(_arg1:String, _arg2:Vector.<_1vN>, _arg3:Array, _arg4:String, _arg5:String, _arg6:Function, _arg7:Number = 0xFFFFFF) {
        super(_arg1, _arg4, _arg5);
        _1ZU.setColor(_arg7);
        _Ly.tipText_.setColor(_arg7);
        this.callback_ = _arg6;
        this._17u = new _Bv(_arg2, _arg3, Parameters.data_[_07j], _arg7);
        this._17u.addEventListener(Event.CHANGE, this._1PA);
        addChild(this._17u);
    }
    private var callback_:Function;
    private var _17u:_Bv;

    override public function refresh():void {
        this._17u.setValue(Parameters.data_[_07j]);
    }

    public function _Zk():void {
        this._17u.setValue(Parameters.data_[_07j], false);
    }

    private function _1PA(_arg1:Event):void {
        Parameters.data_[_07j] = this._17u.value();
        if (this.callback_ != null) {
            this.callback_();
        }
        ;
        Parameters.save();
    }


}
}//package _G8

