// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0AI._1dY

package _0AI {
import _0jj._1t5;

import _7T._0CZ;
import _7T._0l;

import _R2._5f;

import _r7._17v;

import flash.net.URLRequest;
import flash.net.navigateToURL;

public class _1dY extends _17v {

    [Inject]
    public var view:_Ds;
    [Inject]
    public var _0Cx:_1t5;
    [Inject]
    public var _1ms:_5f;


    override public function initialize():void {
        this.view._1p5.add(this._05v);
    }

    override public function destroy():void {
        this.view._1p5.remove(this._05v);
    }

    private function _05v(_arg1:_0CZ):void {
        var _local2:URLRequest;
        switch (_arg1.linkType) {
            case _0l._0rm:
                _local2 = new URLRequest(_arg1.linkDetail);
                navigateToURL(_local2, "_blank");
                return;
            case _0l._00W:
                this._0Cx.dispatch(int(_arg1.linkDetail));
                return;
            case _0l._0ll:
                this._1ms.dispatch(_arg1.linkDetail);
                return;
        }
        ;
    }


}
}//package _0AI

