// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0og._1cX

package _0og {
import _03u._BW;

import _0jj._CH;

import _1PE._0Q8;

import _1Yg._1Fn;

import _Ny._0Vt;

public class _1cX {

    [Inject]
    public var data:_0Q8;
    [Inject]
    public var _2:_0Vt;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var model:_1Fn;
    [Inject]
    public var init:_CH;


    public function execute():void {
        this._1ZX.add(this._2);
        this._2.start();
        this.model._0Pn();
        this.init.dispatch();
    }


}
}//package _0og

