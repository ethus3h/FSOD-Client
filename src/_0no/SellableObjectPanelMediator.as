// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no.SellableObjectPanelMediator

package _0no {
import _04g._GE;

import _1PE.Account;

import __Nj._M4;

import _r7._17v;

import com.company.assembleegameclient.objects.SellableObject;
import com.company.assembleegameclient.util.Currency;

public class SellableObjectPanelMediator extends _17v {

    public static const TEXT:String = "SellableObjectPanelMediator.text";

    [Inject]
    public var account:Account;
    [Inject]
    public var view:SellableObjectPanel;
    [Inject]
    public var _nU:_M4;


    override public function initialize():void {
        this.view._0SS.add(this._1uy);
    }

    override public function destroy():void {
        this.view._0SS.remove(this._1uy);
    }

    private function _1uy(_arg1:SellableObject):void {
        if (this.account._vD()) {
            this.view.gs_.gsc_.buy(_arg1.objectId_);
        } else {
            this._nU.dispatch(this._nw(_arg1));
        }
        ;
    }

    private function _nw(_arg1:SellableObject):_GE {
        return (new _GE(TEXT, {type: Currency._1sg(_arg1.currency_)}));
    }


}
}//package _0no

