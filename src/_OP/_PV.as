// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_OP._PV

package _OP {
import _03u._0MI;

import _0EN._0u4;

import _0tf._0yo;

import _175._0CN;

import _1N.MysteryBoxInfo;

import _1OQ._yi;

import _1PE.Account;

import _1PM._1YQ;

import _QC._0Ew;

import __Nj._M4;

import com.company.assembleegameclient.util._07S;

import flash.utils.getTimer;

public class _PV extends _0MI {

    private static const _1PO:int = 600;

    private static var version:String = "0";

    [Inject]
    public var client:_0yo;
    [Inject]
    public var _zP:_of;
    [Inject]
    public var _1nz:_0Ew;
    [Inject]
    public var account:Account;
    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var _0GF:_0CN;
    [Inject]
    public var _1ia:_M4;
    public var _27:uint = 0;


    override protected function startTask():void {
        var _local1:Number;
        var _local2:Object;
        if (_yi._16X("MysteryBoxRefresh")) {
            _local1 = _yi._0Ft("MysteryBoxRefresh");
        } else {
            _local1 = _1PO;
        }
        ;
        if ((((this._27 == 0)) || (((this._27 + _local1) < (getTimer() / 1000))))) {
            this._27 = (getTimer() / 1000);
            _Ug(true);
            _local2 = this.account._1iT();
            _local2.language = this._0GF._1Es();
            _local2.version = version;
            this.client.sendRequest("/mysterybox/getBoxes", _local2);
            this.client.complete.addOnce(this.onComplete);
        } else {
            _Ug(true);
            reset();
        }
        ;
    }

    public function _1OU():void {
        this._27 = 0;
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        reset();
        if (_arg1) {
            this._1lE(_arg2);
        } else {
            this._1TT._1Sh("GetPackageTask.onComplete: Request failed.");
            _Ug(false);
        }
        ;
    }

    private function _1lE(_arg1):void {
        var _local2:XMLList;
        var _local3:XMLList;
        if (this._an(_arg1)) {
            if (this._zP._0C()) {
                return;
            }
            ;
            this._zP._cH(false);
        } else {
            version = XML(_arg1).attribute("version").toString();
            _local2 = XML(_arg1).child("MysteryBox");
            this.parse(_local2);
            _local3 = XML(_arg1).child("FortuneGame");
            if (_local3.length() > 0) {
                this._Ke(_local3);
            }
            ;
        }
        ;
        _Ug(true);
    }

    private function _an(_arg1):Boolean {
        var _local2:XMLList = XML(_arg1).children();
        var _local3 = (_local2.length() == 0);
        return (_local3);
    }

    private function _Ke(_arg1:XMLList):void {
        var _local2:_0u4 = new _0u4();
        _local2.id = _arg1.attribute("id").toString();
        _local2.title = _arg1.attribute("title").toString();
        _local2.weight = _arg1.attribute("weight").toString();
        _local2.description = _arg1.Description.toString();
        _local2._1io = _arg1.Contents.toString();
        _local2._0rt = _arg1.Price.attribute("firstInGold").toString();
        _local2._xe = _arg1.Price.attribute("firstInToken").toString();
        _local2._0ot = _arg1.Price.attribute("secondInGold").toString();
        _local2._04N = _arg1.Icon.toString();
        _local2._0b = _arg1.Image.toString();
        _local2.startTime = _07S._1Fu(_arg1.StartTime.toString());
        _local2.endTime = _07S._1Fu(_arg1.EndTime.toString());
        _local2._1yc();
        this._1nz._1UN(_local2);
    }

    private function parse(_arg1:XMLList):void {
        var _local4:XML;
        var _local5:MysteryBoxInfo;
        var _local2:Array = [];
        var _local3:Boolean;
        for each (_local4 in _arg1) {
            _local5 = new MysteryBoxInfo();
            _local5.id = _local4.attribute("id").toString();
            _local5.title = _local4.attribute("title").toString();
            _local5.weight = _local4.attribute("weight").toString();
            _local5.description = _local4.Description.toString();
            _local5._1io = _local4.Contents.toString();
            _local5._GU = _local4.Price.attribute("amount").toString();
            _local5._03c = _local4.Price.attribute("currency").toString();
            if (_local4.hasOwnProperty("Sale")) {
                _local5._0OD = _local4.Sale.attribute("price").toString();
                _local5._0BJ = _local4.Sale.attribute("currency").toString();
                _local5._12H = _07S._1Fu(_local4.Sale.End.toString());
            }
            ;
            _local5._04N = _local4.Icon.toString();
            _local5._0b = _local4.Image.toString();
            _local5.startTime = _07S._1Fu(_local4.StartTime.toString());
            _local5._1yc();
            if (((!(_local3)) && (((_local5.isNew()) || (_local5._17I()))))) {
                _local3 = true;
            }
            ;
            _local2.push(_local5);
        }
        ;
        this._zP._1mq(_local2);
        this._zP.isNew = _local3;
    }


}
}//package _OP

