// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._Ko

package _0t {
import _0gF._0La;
import _0gF._0ql;

import _0oL.Server;

import _10a._FU;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;

import flash.display.Sprite;
import flash.events.Event;

public class _Ko extends Sprite {

    public function _Ko() {
        this._1T1 = new _1R();
        this._1T1.addEventListener(_fZ._1o, this._2a);
        addChild(this._1T1);
    }
    private var model:_FU;
    private var server:Server;
    private var _1T1:_1R;
    private var _0Ta:GameSprite;

    public function initialize(_arg1:_FU, _arg2:Server):void {
        this.model = _arg1;
        this.server = _arg2;
    }

    private function _1xf():void {
        this._0Ta.removeEventListener(Event.COMPLETE, this._Hh);
        this._0Ta.removeEventListener(_0La.RECONNECT, this._Hh);
        this._0Ta.removeEventListener(_0ql.DEATH, this._Hh);
        removeChild(this._0Ta);
        this._0Ta = null;
    }

    private function _2a(_arg1:_fZ):void {
        removeChild(this._1T1);
        this._0Ta = new GameSprite(this.server, Parameters._0uy, false, this.model._ct()[0].charId(), -1, null, this.model, _arg1._0K1, false);
        this._0Ta.isEditor = true;
        this._0Ta.addEventListener(Event.COMPLETE, this._Hh);
        this._0Ta.addEventListener(_0La.RECONNECT, this._Hh);
        this._0Ta.addEventListener(_0ql.DEATH, this._Hh);
        addChild(this._0Ta);
    }

    private function _Hh(_arg1:Event):void {
        this._1xf();
        addChild(this._1T1);
    }

    private function _0lt(_arg1:Event):void {
        this._1xf();
        addChild(this._1T1);
    }


}
}//package _0t-

