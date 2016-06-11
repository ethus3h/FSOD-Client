// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Ng._13o

package _0Ng {
import _0CT._8w;

import _0tf._0yo;

import _1PE.Account;

import _Vb.Dialog;

import com.company.util._0CM;

import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;

public class _13o extends Sprite {

    public function _13o(_arg1:Boolean) {
        this._0Fc = _arg1;
        this._1cm = new Shape();
        var _local2:Graphics = this._1cm.graphics;
        _local2.clear();
        _local2.beginFill(0, 0.8);
        _local2.drawRect(0, 0, 800, 600);
        _local2.endFill();
        addChild(this._1cm);
        this.load();
    }
    private var _0Fc:Boolean;
    private var _1cm:Shape;
    private var _0l:Dialog;
    private var text_:String;
    private var _1rk:_1vx;
    private var _1oj:_0Bp;
    private var client:_0yo;

    private function load():void {
        var _local1:Account = _8w._1Sz().getInstance(Account);
        this.client = _8w._1Sz().getInstance(_0yo);
        this.client.complete.addOnce(this._1zk);
        this.client.sendRequest("/guild/getBoard", _local1._1iT());
        this._0l = new Dialog(null, "Loading...", null, null, null);
        addChild(this._0l);
        this._1cm.visible = false;
    }

    private function _1zk(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._6l(_arg2);
        } else {
            this.reportError(_arg2);
        }
        ;
    }

    private function _6l(_arg1:String):void {
        this._1cm.visible = true;
        removeChild(this._0l);
        this._0l = null;
        this.text_ = _arg1;
        this.show();
    }

    private function show():void {
        this._1rk = new _1vx(this.text_, this._0Fc);
        this._1rk.addEventListener(Event.COMPLETE, this._0xC);
        this._1rk.addEventListener(Event.CHANGE, this._1WB);
        addChild(this._1rk);
    }

    private function reportError(_arg1:String):void {
    }

    private function _0gl(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._SE(_arg2);
        } else {
            this._ci(_arg2);
        }
        ;
    }

    private function _SE(_arg1:String):void {
        this._1cm.visible = true;
        removeChild(this._0l);
        this._0l = null;
        this.text_ = _arg1;
        this.show();
    }

    private function _ci(_arg1:String):void {
    }

    private function _0xC(_arg1:Event):void {
        parent.removeChild(this);
    }

    private function _1WB(_arg1:Event):void {
        removeChild(this._1rk);
        this._1rk = null;
        this._1oj = new _0Bp(this.text_);
        this._1oj.addEventListener(Event.CANCEL, this._1v3);
        this._1oj.addEventListener(Event.COMPLETE, this._1WJ);
        addChild(this._1oj);
    }

    private function _1v3(_arg1:Event):void {
        removeChild(this._1oj);
        this._1oj = null;
        this.show();
    }

    private function _1WJ(_arg1:Event):void {
        var _local2:Account = _8w._1Sz().getInstance(Account);
        var _local3:Object = {board: this._1oj._4D()};
        _0CM._0lh(_local3, _local2._1iT());
        this.client = _8w._1Sz().getInstance(_0yo);
        this.client.complete.addOnce(this._0gl);
        this.client.sendRequest("/guild/setBoard", _local3);
        removeChild(this._1oj);
        this._1oj = null;
        this._0l = new Dialog(null, "Saving...", null, null, null);
        addChild(this._0l);
        this._1cm.visible = false;
    }


}
}//package _0Ng

