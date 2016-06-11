// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mk._1Sw

package _0Mk {
import _03u._0MI;

import _0tf._0yo;

import _175._0CN;
import _175._dS;

import _Vb.ErrorDialog;

import __Nj._M4;

public class _1Sw extends _0MI {

    private static const LANGUAGE:String = "LANGUAGE";

    [Inject]
    public var model:_0CN;
    [Inject]
    public var _iS:_dS;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var client:_0yo;
    private var language:String;


    override protected function startTask():void {
        this.language = this.model._0nw();
        this.client.complete.addOnce(this.onComplete);
        this.client._1Vb(3);
        this.client.sendRequest("/app/getLanguageStrings", {languageType: this.language});
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._WK(_arg2);
        } else {
            this._1M();
        }
        ;
        _Ug(_arg1, _arg2);
    }

    private function _WK(_arg1:String):void {
        var _local3:Array;
        this._iS.clear();
        var _local2:Object = JSON.parse(_arg1);
        for each (_local3 in _local2) {
            this._iS.setValue(_local3[0], _local3[1], _local3[2]);
        }
        ;
    }

    private function _1M():void {
        this._iS.setValue("ok", "ok", this.model._0nw());
        var _local1:ErrorDialog = new ErrorDialog((("Unable to load language [" + this.language) + "]"));
        this._nU.dispatch(_local1);
        _Ug(false);
    }


}
}//package _0Mk

