// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Rk._0Vz

package _0Rk {
import _1Sm._sy;

import com.company.assembleegameclient.util._07S;

public class _0Vz {

    public static const _1lb:int = -1;

    public function _0Vz() {
        this._19D = new _sy();
        this._1d = new _sy(int);
        this._Jh = new _sy(Date);
        this._0VB = new _sy(int);
        this._LY = new _sy(String);
        this._0Qz = new _sy(int);
        this._0CJ = new _sy(int);
        this._1tj = new _sy(int);
        this._1J9 = new _sy(String);
        super();
    }
    public var _19D:_sy;
    public var _1d:_sy;
    public var _Jh:_sy;
    public var _0VB:_sy;
    public var _LY:_sy;
    public var _0Qz:_sy;
    public var _0CJ:_sy;
    public var _1tj:_sy;
    public var _1J9:_sy;
    private var _1qA:Boolean = false;
    private var _1wc:int;
    private var _9d:Date;
    private var _1tt:int;
    private var _1sV:String;
    private var _02k:int;
    private var _0RB:int;

    private var _name:String;

    public function get name():String {
        return (this._name);
    }

    public function set name(_arg1:String):void {
        this._name = _arg1;
        this._LY.dispatch(_arg1);
    }

    private var _quantity:int;

    public function get quantity():int {
        return (this._quantity);
    }

    public function set quantity(_arg1:int):void {
        this._quantity = _arg1;
        this._0Qz.dispatch(_arg1);
    }

    private var _price:int;

    public function get price():int {
        return (this._price);
    }

    public function set price(_arg1:int):void {
        this._price = _arg1;
        this._1tj.dispatch(_arg1);
    }

    public function get priority():int {
        return (this._02k);
    }

    public function set priority(_arg1:int):void {
        this._02k = _arg1;
    }

    public function get packageID():int {
        return (this._1wc);
    }

    public function set packageID(_arg1:int):void {
        this._1wc = _arg1;
        this._1d.dispatch(_arg1);
    }

    public function get _0Gs():Date {
        return (this._9d);
    }

    public function set _0Gs(_arg1:Date):void {
        this._9d = _arg1;
        this._Jh.dispatch(_arg1);
        this._0VB.dispatch(this._Yj());
    }

    public function get max():int {
        return (this._1tt);
    }

    public function set max(_arg1:int):void {
        this._1tt = _arg1;
        this._0CJ.dispatch(_arg1);
    }

    public function get _1qg():String {
        return (this._1sV);
    }

    public function get numPurchased():int {
        return (this._0RB);
    }

    public function set numPurchased(_arg1:int):void {
        this._0RB = _arg1;
    }

    public function _f(_arg1:int, _arg2:Date, _arg3:String, _arg4:int, _arg5:int, _arg6:int, _arg7:int, _arg8:String, _arg9:int):void {
        this._1wc = _arg1;
        this._9d = _arg2;
        this._name = _arg3;
        this._quantity = _arg4;
        this._1tt = _arg5;
        this._02k = _arg6;
        this._price = _arg7;
        this._1sV = _arg8;
        this._0RB = _arg9;
        this._1qA = true;
        this._19D.dispatch();
    }

    public function _Yj():int {
        var _local1:Date = new Date();
        return ((this._9d.time - _local1.time));
    }

    public function _0DH():Number {
        return (Math.ceil(_07S._D6((this._Yj() / 1000))));
    }

    public function _d0():Boolean {
        return ((this._0RB > 0));
    }

    public function _1q6():Boolean {
        if (this.max == _1lb) {
            return (true);
        }
        ;
        return ((this._0RB < this._1tt));
    }

    public function toString():String {
        return ((((("[Package name=" + this._name) + ", packageId=") + this._1wc) + "]"));
    }


}
}//package _0Rk

