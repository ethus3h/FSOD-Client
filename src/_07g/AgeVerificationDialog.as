// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g.AgeVerificationDialog

package _07g {
import _0Mr._5R;

import _0y9._06T;

import _1Sm._sy;

import _6u._TG;

import _7J.DateField;

import _Vb.Dialog;

import com.company.assembleegameclient.parameters.Parameters;

import flash.events.Event;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class AgeVerificationDialog extends Dialog {

    private static const WIDTH:int = 300;

    private const _0ES:String = "AgeVerificationDialog.tooYoung";
    private const _vI:String = "AgeVerificationDialog.invalidBirthDate";
    private const _TV:uint = 13;
    public const _1Bb:_sy = new _sy(Boolean);

    public function AgeVerificationDialog() {
        super(_TG._kA, "", _TG._1uF, _TG._0gR, "/ageVerificationDialog");
        addEventListener(Dialog.LEFT_BUTTON, this.onCancel);
        addEventListener(Dialog.RIGHT_BUTTON, this._mO);
    }
    private var _0W9:DateField;
    private var _aR:_06T;

    override protected function makeUIAndAdd():void {
        this._8D();
        this._1dN();
    }

    override protected function initText(_arg1:String):void {
        _1Ws = new _06T().setSize(14).setColor(0xB3B3B3);
        _1Ws.setTextWidth((WIDTH - 40));
        _1Ws.x = 20;
        _1Ws.setMultiLine(true).setWordWrap(true).setHTML(true);
        _1Ws.setAutoSize(TextFieldAutoSize.LEFT);
        _1Ws.mouseEnabled = true;
        _1Ws.filters = [new DropShadowFilter(0, 0, 0, 1, 6, 6, 1)];
        this._1Nq();
    }

    override protected function drawAdditionalUI():void {
        this._0W9.y = (_1Ws.getBounds(box_).bottom + 8);
        this._0W9.x = 20;
        this._aR.y = ((this._0W9.y + this._0W9.height) + 8);
        this._aR.x = 20;
    }

    private function _8D():void {
        this._Ia();
        this._0to();
    }

    private function _1dN():void {
        _xZ.pushArgs(this._0W9._0EL());
        box_.addChild(this._0W9);
        box_.addChild(this._aR);
    }

    private function _1Nq():void {
        var _local1 = (('<font color="#7777EE"><a href="' + Parameters._FJ) + '" target="_blank">');
        var _local2 = (('<font color="#7777EE"><a href="' + Parameters._0WZ) + '" target="_blank">');
        var _local3 = "</a></font>";
        _1Ws.setStringBuilder(new _5R().setParams("AgeVerificationDialog.text", {
            tou: _local1,
            _tou: _local3,
            policy: _local2,
            _policy: _local3
        }));
    }

    private function _Ia():void {
        this._0W9 = new DateField();
        this._0W9.setTitle(_TG._w5);
    }

    private function _0to():void {
        this._aR = new _06T().setSize(12).setColor(16549442);
        this._aR.setMultiLine(true);
        this._aR.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
    }

    private function _0TN():uint {
        var _local1:Date = new Date(this._0gK());
        var _local2:Date = new Date();
        var _local3:uint = (Number(_local2.fullYear) - Number(_local1.fullYear));
        if ((((_local1.month > _local2.month)) || ((((_local1.month == _local2.month)) && ((_local1.date > _local2.date)))))) {
            _local3--;
        }
        ;
        return (_local3);
    }

    private function _0gK():Number {
        return (Date.parse(this._0W9._IT()));
    }

    private function onCancel(_arg1:Event):void {
        this._1Bb.dispatch(false);
    }

    private function _mO(_arg1:Event):void {
        var _local3:Boolean;
        var _local2:uint = this._0TN();
        var _local4 = "";
        if (!this._0W9._u6()) {
            _local4 = this._vI;
            _local3 = true;
        } else {
            if ((((_local2 < this._TV)) && (!(_local3)))) {
                _local4 = this._0ES;
                _local3 = true;
            } else {
                _local4 = "";
                _local3 = false;
                this._1Bb.dispatch(true);
            }
            ;
        }
        ;
        this._aR.setStringBuilder(new _5R().setParams(_local4));
        this._0W9._WB(_local3);
        _QY();
    }


}
}//package _07g

