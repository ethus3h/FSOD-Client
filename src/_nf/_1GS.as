// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_nF._1GS

package _nf {
import _03u._0MI;

import _0tf._0yo;

import _175._0CN;

import _7T._0CZ;
import _7T._0l;
import _7T._18u;

import _Vb.ErrorDialog;

import __Nj._M4;

import flash.utils.getTimer;

public class _1GS extends _0MI implements _1bG {

    private static const _1PO:int = 600;

    [Inject]
    public var client:_0yo;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var model:_18u;
    [Inject]
    public var _0GF:_0CN;
    private var _27:int = -1;
    private var _1R6:int = 0;
    private var _1Wp:int = 600;


    override protected function startTask():void {
        this._1R6++;
        if ((((this._27 == -1)) || (((this._27 + this._1Wp) < (getTimer() / 1000))))) {
            this._27 = (getTimer() / 1000);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/app/globalNews", {language: this._0GF._1Es()});
        } else {
            _Ug(true);
            reset();
        }
        ;
        if (((((!(("production".toLowerCase() == "dev"))) && (!((this._1Wp == 0))))) && ((this._1R6 >= 2)))) {
            this._1Wp = 0;
        }
        ;
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._0n6(_arg2);
        } else {
            this._0L(_arg2);
        }
        ;
        _Ug(_arg1, _arg2);
        reset();
    }

    private function _0n6(_arg1:String):void {
        var _local4:Object;
        var _local2:Vector.<_0CZ> = new Vector.<_0CZ>();
        var _local3:Object = JSON.parse(_arg1);
        for each (_local4 in _local3) {
            _local2.push(this._1na(_local4));
        }
        ;
        this.model._1xu(_local2);
    }

    private function _1na(_arg1:Object):_0CZ {
        var _local2:_0CZ = new _0CZ();
        _local2._Qn = _arg1.title;
        _local2._1qg = _arg1.image;
        _local2.linkDetail = _arg1.linkDetail;
        _local2._1ph = Number(_arg1.startTime);
        _local2._0Gs = Number(_arg1.endTime);
        _local2.linkType = _0l.parse(_arg1.linkType);
        _local2._0 = String(_arg1.platform).split(",");
        _local2.priority = uint(_arg1.priority);
        _local2.slot = uint(_arg1.slot);
        return (_local2);
    }

    private function _0L(_arg1:String):void {
        this._nU.dispatch(new ErrorDialog("Unable to get news data."));
    }


}
}//package _nF

