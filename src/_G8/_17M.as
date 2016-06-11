// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_G8._17M

package _G8 {
import com.company.assembleegameclient.parameters.Parameters;
import com.company.util.MoreColorUtil;

import flash.events.Event;

public class _17M extends _1of {

    public function _17M(_arg1:String, _arg2:String, _arg3:String, _arg4:Boolean = false) {
        super(_arg1, _arg2, _arg3);
        this._0vF = new KeyCodeBox(Parameters.data_[_07j]);
        this._0vF.addEventListener(Event.CHANGE, this._1PA);
        addChild(this._0vF);
        this._0KW(_arg4);
    }
    private var _0vF:KeyCodeBox;
    private var _1Xy:Boolean;

    override public function refresh():void {
        this._0vF._JQ(Parameters.data_[_07j]);
    }

    public function _0KW(_arg1:Boolean):void {
        this._1Xy = _arg1;
        transform.colorTransform = ((this._1Xy) ? MoreColorUtil._KM : MoreColorUtil.identity);
        mouseEnabled = !(this._1Xy);
        mouseChildren = !(this._1Xy);
    }

    private function _1PA(_arg1:Event):void {
        Parameters.setKey(_07j, this._0vF.value());
        Parameters.save();
    }


}
}//package _G8

