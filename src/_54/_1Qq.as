// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_54._1Qq

package _54 {
import _03u._0MI;

import _085._LQ;

import _0tf._0yo;

import _1PE.Account;

import _Ny.*;

import com.company.assembleegameclient.util.GUID;

import flash.net.SharedObject;

public class _1Qq extends _0MI implements _1nF {

    [Inject]
    public var account:Account;
    [Inject]
    public var client:_0yo;
    private var data:_LQ;


    override protected function startTask():void {
        this._055();
        if (this.data.username) {
            this._0I0();
        } else {
            this._1pB();
        }
        ;
    }

    private function _055():void {
        var rotmg:SharedObject;
        this.data = new _LQ();
        try {
            rotmg = SharedObject.getLocal("RotMG", "/");
            ((rotmg.data["GUID"]) && ((this.data.username = rotmg.data["GUID"])));
            ((rotmg.data["Password"]) && ((this.data.password = rotmg.data["Password"])));
        } catch (error:Error) {
            data.username = null;
            data.password = null;
        }
        ;
    }

    private function _0I0():void {
        this.account._05b(this.data.username, this.data.password);
        this.account.verify(false);
        _Ug(true);
    }

    private function _1pB():void {
        this.account._05b(GUID.create(), null);
        _Ug(true);
    }


}
}//package _54

