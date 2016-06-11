// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-.ClassDetailView

package _4 {
import _07g._2v;

import _0Mr._1M;
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import _n._JJ;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

import kabam.rotmg.assets.model.Animation;
import kabam.rotmg.assets.services._Zm;

public class ClassDetailView extends Sprite {

    private static const _H:int = 205;
    private static const WIDTH:int = 344;
    private static const _0BZ:int = 188;

    private const _qH:_2v = new _2v();

    public function ClassDetailView() {
        var _local1:DropShadowFilter;
        super();
        this._qH.complete.add(this.layout);
        _local1 = new DropShadowFilter(0, 0, 0, 1, 8, 8);
        this._pw = new Sprite();
        this._pw.x = ((WIDTH - 104) * 0.5);
        addChild(this._pw);
        this.classNameText = new _06T().setSize(20).setColor(0xFFFFFF).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setTextWidth(_0BZ);
        this.classNameText.filters = [_local1];
        this._qH.push(this.classNameText.textChanged);
        addChild(this.classNameText);
        this._qo = new _06T().setSize(14).setColor(0xFFFFFF).setTextWidth(_0BZ).setWordWrap(true);
        this._qo.filters = [_local1];
        this._qH.push(this._qo.textChanged);
        addChild(this._qo);
        this._02F = new _06T().setSize(14).setColor(0xFFFFFF).setBold(true);
        this._02F.filters = [_local1];
        this._02F.setStringBuilder(new _5R().setParams(_TG._iC));
        this._qH.push(this._02F.textChanged);
        addChild(this._02F);
        this._1HI = new _06T().setSize(14).setColor(0xFFFFFF).setBold(true);
        this._1HI.filters = [_local1];
        this._1HI.setStringBuilder(new _5R().setParams(_TG._1P9));
        this._qH.push(this._1HI.textChanged);
        addChild(this._1HI);
        this._rL = new _06T().setSize(16).setColor(0xFFFFFF).setBold(true);
        this._rL.filters = [_local1];
        this._qH.push(this._rL.textChanged);
        addChild(this._rL);
        this._Dw = new _06T().setSize(14).setColor(0xFFFFFF).setBold(true);
        this._Dw.filters = [_local1];
        this._Dw.setStringBuilder(new _5R().setParams(_TG._0UP));
        this._qH.push(this._Dw.textChanged);
        addChild(this._Dw);
        this._1gT = new _06T().setSize(16).setColor(15387756).setBold(true);
        this._1gT.filters = [_local1];
        this._qH.push(this._1gT.textChanged);
        addChild(this._1gT);
        this._Rm = new Bitmap(_Zm._00Y());
        this._Rm.filters = [_local1];
        addChild(this._Rm);
        this._Qk = new _06T().setSize(14).setColor(0xFFFFFF).setBold(true);
        this._Qk.filters = [_local1];
        this._Qk.setStringBuilder(new _5R().setParams(_TG._0FX));
        this._Qk.visible = false;
        addChild(this._Qk);
        this._qZ = new _06T().setSize(14).setColor(0xFFFFFF);
        this._qZ.filters = [_local1];
        this._qZ.visible = false;
        addChild(this._qZ);
        this._0hQ = new _JJ();
        addChild(this._0hQ);
    }
    private var classNameText:_06T;
    private var _qo:_06T;
    private var _02F:_06T;
    private var _1HI:_06T;
    private var _rL:_06T;
    private var _Dw:_06T;
    private var _1gT:_06T;
    private var _Rm:Bitmap;
    private var _Qk:_06T;
    private var _qZ:_06T;
    private var _0hQ:_JJ;
    private var _cM:Boolean;
    private var _pw:Sprite;
    private var _WU:Animation;

    public function _f(_arg1:String, _arg2:String, _arg3:int, _arg4:int, _arg5:int):void {
        this.classNameText.setStringBuilder(new _5R().setParams(_arg1));
        this._qo.setStringBuilder(new _5R().setParams(_arg2));
        this._rL.setStringBuilder(new _1M(String(_arg4)));
        this._1gT.setStringBuilder(new _1M(String(_arg5)));
    }

    public function _Ts(_arg1:String, _arg2:int):void {
        this._cM = !((_arg2 == -1));
        if (this._cM) {
            this._qZ.setStringBuilder(new _5R().setParams(_TG._10O, {
                goal: String(_arg2),
                quest: _arg1
            }));
            this._qZ.y = (this._Qk.y + this._Qk.height);
            this._qZ.x = ((WIDTH / 2) - (this._qZ.width / 2));
            this._qH.push(this._qZ.textChanged);
            this._qH.push(this._Qk.textChanged);
        }
        ;
    }

    public function _0qw(_arg1:Animation):void {
        ((this._WU) && (this._9L(this._WU)));
        this._WU = _arg1;
        ((this._WU) && (this._1vO(this._WU)));
        this.layout();
    }

    private function _9L(_arg1:Animation):void {
        _arg1.stop();
        this._pw.removeChild(_arg1);
    }

    private function _1vO(_arg1:Animation):void {
        this._pw.addChild(_arg1);
        _arg1.start();
    }

    private function layout():void {
        this.classNameText.x = ((WIDTH / 2) - (this.classNameText.width / 2));
        this.classNameText.y = 110;
        this._qo.y = ((this.classNameText.y + this.classNameText.height) + 5);
        this._qo.x = ((WIDTH / 2) - (this._qo.width / 2));
        this._02F.y = ((this._qo.y + this._qo.height) + 20);
        this._02F.x = (_H - this._02F.width);
        this._0hQ.y = (this._02F.y - 2);
        this._0hQ.x = (_H + 18);
        this._1HI.y = ((this._02F.y + this._02F.height) + 5);
        this._1HI.x = (_H - this._1HI.width);
        this._rL.y = this._1HI.y;
        this._rL.x = (_H + 18);
        this._Dw.y = ((this._1HI.y + this._1HI.height) + 5);
        this._Dw.x = (_H - this._Dw.width);
        this._1gT.y = this._Dw.y;
        this._1gT.x = (_H + 18);
        this._Rm.y = (this._Dw.y - 2);
        this._Rm.x = ((this._1gT.x + this._1gT.width) + 3);
        this._Qk.y = ((this._Dw.y + this._Dw.height) + 17);
        this._Qk.x = ((WIDTH / 2) - (this._Qk.width / 2));
        this._Qk.visible = this._cM;
        this._qZ.y = (this._Qk.y + this._Qk.height);
        this._qZ.x = ((WIDTH / 2) - (this._qZ.width / 2));
        this._qZ.visible = this._cM;
    }


}
}//package _4-

