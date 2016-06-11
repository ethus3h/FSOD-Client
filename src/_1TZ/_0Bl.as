// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TZ._0Bl

package _1TZ {
import _03u._0MI;

import _0SK._Qo;

import _0cy._0Ij;

import _Ny.*;

import __Nj._0ay;
import __Nj._M4;

import flash.display.DisplayObject;
import flash.display.LoaderInfo;
import flash.system.Security;

public class _0Bl extends _0MI implements _1Th {

    [Inject]
    public var info:LoaderInfo;
    [Inject]
    public var _C:_Qo;
    [Inject]
    public var local:_eB;
    [Inject]
    public var _p7:_0Ij;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;


    override protected function startTask():void {
        var _local1:String = this.info.parameters.kongregate_api_path;
        Security.allowDomain(_local1);
        this._p7._C.addChild((this._C as DisplayObject));
        this._C._kI.addOnce(this._1M6);
        this._C.load(_local1);
    }

    private function _1M6():void {
        _Ug(true);
    }


}
}//package _1TZ

