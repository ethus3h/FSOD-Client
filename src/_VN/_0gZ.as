// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_VN._0gZ

package _VN {
import _03u._0MI;

import _085._LQ;

import _0tf._0yo;

import _1PE.Account;

import _1PM._1YQ;

import _Ny.*;

import _nl._0Y9;

public class _0gZ extends _0MI implements _0Ut {

    [Inject]
    public var account:Account;
    [Inject]
    public var _C:_0Y9;
    [Inject]
    public var data:_LQ;
    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    private var client:_0yo;


    override protected function startTask():void {
        this._1TT.debug("startTask");
        this.client._1Vb(2);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("/steamworks/register", this._0q6());
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._0Hh(_arg2);
        } else {
            this._RM(_arg2);
        }
        ;
    }

    private function _0q6():Object {
        var _local1:Object = this._C._1Pn();
        _local1.newGUID = this.data.username;
        _local1.newPassword = this.data.password;
        _local1.entrytag = this.account._UV();
        return (_local1);
    }

    private function _0Hh(_arg1:String):void {
        var _local2:XML = new XML(_arg1);
        this._1TT.debug("done - {0}", [_local2.GUID]);
        this.account._05b(_local2.GUID, _local2.Secret);
        this.account._1EI(_local2.PlatformToken);
        _Ug(true);
    }

    private function _RM(_arg1:String):void {
        this._1TT.debug("error - {0}", [_arg1]);
        _Ug(false, _arg1);
    }


}
}//package _VN

