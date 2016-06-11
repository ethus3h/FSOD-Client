// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc._Qg

package _0Mc {
import _0Nb._0ML;
import _0Nb._0nz;

import _1E1.Layout;

import _1T3._hh;

import _vW._1VE;

import com.company.assembleegameclient.util.offer.Offer;
import com.company.assembleegameclient.util.offer.Offers;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.MouseEvent;

public class _Qg extends Sprite {

    public function _Qg(_arg1:Offers, _arg2:_hh) {
        this._0eR = _arg1;
        this.config = _arg2;
        this._6s();
        this._j1();
        this._03U();
    }
    private var _0eR:Offers;
    private var config:_hh;
    private var _Uc:Vector.<_Eo>;
    private var group:_0ML;

    public function _Y6():_Eo {
        return ((this.group._0ZN() as _Eo));
    }

    public function _kU(_arg1:Boolean):void {
        var _local2:int = this._Uc.length;
        while (_local2--) {
            this._Uc[_local2].showBonus(_arg1);
        }
        ;
    }

    private function _6s():void {
        var _local1:int = this._0eR.offerList.length;
        this._Uc = new Vector.<_Eo>(_local1, true);
        var _local2:int;
        while (_local2 < _local1) {
            this._Uc[_local2] = this._1qv(this._0eR.offerList[_local2]);
            _local2++;
        }
        ;
    }

    private function _1qv(_arg1:Offer):_Eo {
        var _local2:_Eo = new _Eo(_arg1, this.config);
        _local2.addEventListener(MouseEvent.CLICK, this._0a);
        addChild(_local2);
        return (_local2);
    }

    private function _j1():void {
        var _local1:Vector.<DisplayObject> = this._0Zd();
        var _local2:Layout = new _1VE();
        _local2._0qu(5);
        _local2.layout(_local1);
    }

    private function _0Zd():Vector.<DisplayObject> {
        var _local1:int = this._Uc.length;
        var _local2:Vector.<DisplayObject> = new <DisplayObject>[];
        var _local3:int;
        while (_local3 < _local1) {
            _local2[_local3] = this._Uc[_local3];
            _local3++;
        }
        ;
        return (_local2);
    }

    private function _03U():void {
        var _local1:Vector.<_0nz> = this._1lD();
        this.group = new _0ML(_local1);
        this.group.setSelected(this._Uc[0].getValue());
    }

    private function _1lD():Vector.<_0nz> {
        var _local1:int = this._Uc.length;
        var _local2:Vector.<_0nz> = new <_0nz>[];
        var _local3:int;
        while (_local3 < _local1) {
            _local2[_local3] = this._Uc[_local3];
            _local3++;
        }
        ;
        return (_local2);
    }

    private function _0a(_arg1:MouseEvent):void {
        var _local2:_0nz = (_arg1.currentTarget as _0nz);
        this.group.setSelected(_local2.getValue());
    }


}
}//package _0Mc

