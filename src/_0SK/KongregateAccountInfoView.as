// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0SK.KongregateAccountInfoView

package _0SK {
import _04g.*;

import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import _U1._1O0;

import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class KongregateAccountInfoView extends Sprite implements _13e {

    private static const _I0:String = _TG._0pg;//"KongregateAccountInfoView.register"
    private static const _Pi:int = 18;

    public function KongregateAccountInfoView() {
        this._Kg();
        this._1tc();
    }
    private var _0AM:_0q;
    private var _ap:_06T;
    private var _0lQ:_1O0;
    private var userName:String = "";
    private var _vD:Boolean;

    public function get register():_sy {
        return (this._0AM);
    }

    public function _0Pf(_arg1:String, _arg2:Boolean):void {
        this.userName = _arg1;
        this._vD = _arg2;
        this._jn();
    }

    private function _Kg():void {
        this._ap = new _06T().setSize(_Pi).setColor(0xB3B3B3);
        this._ap.setAutoSize(TextFieldAutoSize.RIGHT);
        this._ap.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4)];
        addChild(this._ap);
    }

    private function _1tc():void {
        this._0lQ = new _1O0(_I0, _Pi, false);
        this._0lQ.setAutoSize(TextFieldAutoSize.RIGHT);
        this._0AM = new _0q(this._0lQ, MouseEvent.CLICK);
    }

    private function _jn():void {
        this._1Jq();
        if (this._vD) {
            this._kg();
        } else {
            this._0Ds();
        }
        ;
    }

    private function _1Jq():void {
        while (numChildren) {
            removeChildAt(0);
        }
        ;
    }

    private function _kg():void {
        this._ap.setStringBuilder(new _5R().setParams(_TG._4b, {userName: this.userName}));
        this._17o(this._ap);
    }

    private function _0Ds():void {
        this._ap.setStringBuilder(new _5R().setParams(_TG._1Y));
        this._17o(this._ap, this._0lQ);
        this._ap.x = this._0lQ.getBounds(this).left;
    }

    private function _17o(..._args):void {
        var _local3:DisplayObject;
        var _local2:int = _args.length;
        while (_local2--) {
            _local3 = _args[_local2];
            addChild(_local3);
        }
        ;
    }


}
}//package _0SK

