// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.game._Jx

package com.company.assembleegameclient.game {
import _0CT._8w;

import _1d9._0z0;

import _md._1ty;

import com.company.assembleegameclient.parameters.Parameters;

import flash.events.KeyboardEvent;
import flash.events.MouseEvent;

public class _Jx {

    private static const _05h:int = (60 * 1000);//60000
    private static const _k3:int = 10;
    private static const _5T:int = 15;
    private static const _Et:int = 20;

    public function _Jx() {
        this._1u7 = _8w._1Sz().getInstance(_0z0);
    }
    public var gs_:GameSprite = null;
    public var _1nN:int = 0;
    private var _1u7:_0z0;

    public function start(_arg1:GameSprite):void {
        this.gs_ = _arg1;
        this._1nN = 0;
        this.gs_.stage.addEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
        this.gs_.stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    public function update(_arg1:int):Boolean {
        var _local2:int = this._1nN;
        this._1nN = (this._1nN + _arg1);
        if (this._1nN < (_k3 * _05h)) {
            return (false);
        }
        ;
        if ((((this._1nN >= (_k3 * _05h))) && ((_local2 < (_k3 * _05h))))) {
            this._1u7.dispatch(this._JV());
            return (false);
        }
        ;
        if ((((this._1nN >= (_5T * _05h))) && ((_local2 < (_5T * _05h))))) {
            this._1u7.dispatch(this._0xT());
            return (false);
        }
        ;
        if ((((this._1nN >= (_Et * _05h))) && ((_local2 < (_Et * _05h))))) {
            this._1u7.dispatch(this._I9());
            return (true);
        }
        ;
        return (false);
    }

    public function stop():void {
        this.gs_.stage.removeEventListener(MouseEvent.MOUSE_MOVE, this.onMouseMove);
        this.gs_.stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        this.gs_ = null;
    }

    private function _JV():_1ty {
        var _local1:_1ty = new _1ty();
        _local1.name = Parameters._0c;
        _local1.text = ((((("You have been idle for " + _k3) + " minutes, you will be disconnected if you are idle for ") + "more than ") + _Et) + " minutes.");
        return (_local1);
    }

    private function _0xT():_1ty {
        var _local1:_1ty = new _1ty();
        _local1.name = Parameters._0c;
        _local1.text = ((((("You have been idle for " + _5T) + " minutes, you will be disconnected if you are idle for ") + "more than ") + _Et) + " minutes.");
        return (_local1);
    }

    private function _I9():_1ty {
        var _local1:_1ty = new _1ty();
        _local1.name = Parameters._0c;
        _local1.text = (("You have been idle for " + _Et) + " minutes, disconnecting.");
        return (_local1);
    }

    private function onMouseMove(_arg1:MouseEvent):void {
        this._1nN = 0;
    }

    private function _13y(_arg1:KeyboardEvent):void {
        this._1nN = 0;
    }


}
}//package com.company.assembleegameclient.game

