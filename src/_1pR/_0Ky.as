// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1pR._0Ky

package _1pR {
import _0JD.ReskinCharacterView;

import _10a._FU;

import _1RN._bw;

import _20I._13Z;
import _20I._1Z;

import _4._1C;

import __Nj._M4;

import flash.display.DisplayObject;

public class _0Ky {

    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _1om:_bw;
    [Inject]
    public var player:_FU;
    [Inject]
    public var model:_1Z;
    [Inject]
    public var factory:_1C;


    public function execute():void {
        this._1om.dispatch();
        this._nU.dispatch(this._18d());
    }

    private function _18d():ReskinCharacterView {
        var _local1:ReskinCharacterView = new ReskinCharacterView();
        _local1._0fK(this._0YP());
        _local1.x = ((800 - _local1.width) * 0.5);
        _local1.y = ((600 - _local1._Or) * 0.5);
        return (_local1);
    }

    private function _0YP():Vector.<DisplayObject> {
        var _local1:_13Z = this._cZ();
        return (this.factory.make(_local1));
    }

    private function _cZ():_13Z {
        return (this.model._0ZN()._0fJ);
    }


}
}//package _1pR

