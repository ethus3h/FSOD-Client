// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_rB._0en

package _rB {
import _03u._0MI;

import _0Rk._0Vz;

import _0tf._0yo;

import _175._0CN;

import _1PE.Account;

import _1PM._1YQ;

import flash.events.TimerEvent;
import flash.utils.Timer;

public class _0en extends _0MI {

    private static const _rx:int = ((1000 * 60) * 60);//3600000

    public function _0en() {
        this.timer = new Timer(_rx);
        super();
    }
    public var timer:Timer;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var _1m4:_1P7;
    [Inject]
    public var account:Account;
    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var _0GF:_0CN;

    override protected function startTask():void {
        var _local1:Object = this.account._1iT();
        _local1.language = this._0GF._1Es();
        this.client.sendRequest("/package/getPackages", _local1);
        this.client.complete.addOnce(this.onComplete);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._1lE(_arg2);
        } else {
            this._1TT._1Sh("GetPackageTask.onComplete: Request failed.");
            _Ug(false);
        }
        ;
    }

    private function _1lE(_arg1):void {
        var _local2:XML;
        if (this._0vS(_arg1)) {
            this._1TT.info("GetPackageTask.onComplete: No package available, retrying in 1 hour.");
            this.timer.addEventListener(TimerEvent.TIMER, this._1XU);
            this.timer.start();
            this._1m4._14S([]);
        } else {
            _local2 = XML(_arg1);
            this.parse(_local2);
        }
        ;
        _Ug(true);
    }

    private function _0vS(_arg1):Boolean {
        var _local2:XMLList = XML(_arg1).Packages;
        var _local3 = (_local2.length() == 0);
        return (_local3);
    }

    private function parse(_arg1:XML):void {
        var _local3:XML;
        var _local4:int;
        var _local5:String;
        var _local6:int;
        var _local7:int;
        var _local8:int;
        var _local9:int;
        var _local10:Date;
        var _local11:String;
        var _local12:int;
        var _local13:_0Vz;
        var _local2:Array = [];
        for each (_local3 in _arg1.Packages.Package) {
            _local4 = int(_local3.@id);
            _local5 = String(_local3.Name);
            _local6 = int(_local3.Price);
            _local7 = int(_local3.Quantity);
            _local8 = int(_local3.MaxPurchase);
            _local9 = int(_local3.Weight);
            _local10 = new Date(String(_local3.EndDate));
            _local11 = String(_local3.BgURL);
            _local12 = this._jW(_arg1, _local4);
            _local13 = new _0Vz();
            _local13._f(_local4, _local10, _local5, _local7, _local8, _local9, _local6, _local11, _local12);
            _local2.push(_local13);
        }
        ;
        this._1m4._14S(_local2);
    }

    private function _jW(_arg1:XML, _arg2:int):int {
        var packageHistory:XMLList;
        var packagesXML:XML = _arg1;
        var packageID:int = _arg2;
        var numPurchased:int;
        var history:XMLList = packagesXML.History;
        if (history) {
            packageHistory = history.Package.(@id == packageID);
            if (packageHistory) {
                numPurchased = int(packageHistory.Count);
            }
            ;
        }
        ;
        return (numPurchased);
    }

    private function _1XU(_arg1:TimerEvent):void {
        this.timer.removeEventListener(TimerEvent.TIMER, this._1XU);
        this.timer.stop();
        this.startTask();
    }


}
}//package _rB

