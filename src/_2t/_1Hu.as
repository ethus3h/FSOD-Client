// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_2-t._1Hu

package _2t {
import _0CT._8w;

import _0Mr._1M;
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import _Vb.Dialog;

import __Nj._0ay;
import __Nj._M4;

import com.company.assembleegameclient.util.GuildUtil;
import com.company.rotmg.graphics.DeleteXGraphic;
import com.company.util.MoreColorUtil;

import flash.display.Bitmap;
import flash.display.Graphics;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;
import flash.text.TextFieldAutoSize;

class _1Hu extends Sprite {

    public static const WIDTH:int = 756;
    public static const HEIGHT:int = 32;
    protected static const _0kl:ColorTransform = new ColorTransform(1, (220 / 0xFF), (133 / 0xFF));

    public function _1Hu(_arg1:int, _arg2:String, _arg3:int, _arg4:int, _arg5:Boolean, _arg6:int) {
        var _local7:uint;
        super();
        this.name_ = _arg2;
        this._02V = _arg3;
        _local7 = 0xB3B3B3;
        if (_arg5) {
            _local7 = 16564761;
        }
        ;
        this._0Xt = new _06T().setSize(22).setColor(_local7);
        this._0Xt.setStringBuilder(new _1M((_arg1.toString() + ".")));
        this._0Xt.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._0Xt.x = (60 - this._0Xt.width);
        this._0Xt.y = 4;
        addChild(this._0Xt);
        this.nameText_ = new _06T().setSize(22).setColor(_local7);
        this.nameText_.setStringBuilder(new _1M(_arg2));
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this.nameText_.x = 100;
        this.nameText_.y = 4;
        addChild(this.nameText_);
        this._1Uo = new _06T().setSize(22).setColor(_local7);
        this._1Uo.setAutoSize(TextFieldAutoSize.RIGHT);
        this._1Uo.setStringBuilder(new _1M(_arg4.toString()));
        this._1Uo.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._1Uo.x = 408;
        this._1Uo.y = 4;
        addChild(this._1Uo);
        this._0gM = new Bitmap(GuildUtil._Ln(40));
        this._0gM.x = 400;
        this._0gM.y = ((HEIGHT / 2) - (this._0gM.height / 2));
        addChild(this._0gM);
        this._0df = new Bitmap(GuildUtil._ca(_arg3, 20));
        this._0df.x = 548;
        this._0df.y = ((HEIGHT / 2) - (this._0df.height / 2));
        addChild(this._0df);
        this._1Qy = new _06T().setSize(22).setColor(_local7);
        this._1Qy.setStringBuilder(new _5R().setParams(GuildUtil._1Be(_arg3)));
        this._1Qy.filters = [new DropShadowFilter(0, 0, 0, 1, 8, 8)];
        this._1Qy.setVerticalAlign(_06T.MIDDLE);
        this._1Qy.x = 580;
        this._1Qy.y = (HEIGHT / 2);
        addChild(this._1Qy);
        if (GuildUtil._0wv(_arg6, _arg3)) {
            this._1ud = this._1Kf(true);
            this._0bt(this._1ud);
            this._1ud.addEventListener(MouseEvent.CLICK, this._0wI);
            this._1ud.x = (670 + 6);
            this._1ud.y = (HEIGHT / 2);
            addChild(this._1ud);
        }
        ;
        if (GuildUtil._0v5(_arg6, _arg3)) {
            this._0Ph = this._1Kf(false);
            this._0bt(this._0Ph);
            this._0Ph.addEventListener(MouseEvent.CLICK, this._1Ci);
            this._0Ph.x = (700 + 6);
            this._0Ph.y = (HEIGHT / 2);
            addChild(this._0Ph);
        }
        ;
        if (GuildUtil._0OQ(_arg6, _arg3)) {
            this._mZ = new DeleteXGraphic();
            this._0bt(this._mZ);
            this._mZ.addEventListener(MouseEvent.CLICK, this._1AQ);
            this._mZ.x = 730;
            this._mZ.y = ((HEIGHT / 2) - (this._mZ.height / 2));
            addChild(this._mZ);
        }
        ;
    }
    private var name_:String;
    private var _02V:int;
    private var _0Xt:_06T;
    private var nameText_:_06T;
    private var _1Uo:_06T;
    private var _0gM:Bitmap;
    private var _0df:Bitmap;
    private var _1Qy:_06T;
    private var _1ud:Sprite;
    private var _0Ph:Sprite;
    private var _mZ:Sprite;

    private function _1Kf(_arg1:Boolean):Sprite {
        var _local2:Sprite = new Sprite();
        var _local3:Graphics = _local2.graphics;
        _local3.beginFill(0xFFFFFF);
        _local3.moveTo(-8, -6);
        _local3.lineTo(8, -6);
        _local3.lineTo(0, 6);
        _local3.lineTo(-8, -6);
        if (_arg1) {
            _local2.rotation = 180;
        }
        ;
        return (_local2);
    }

    private function _0bt(_arg1:Sprite):void {
        _arg1.addEventListener(MouseEvent.MOUSE_OVER, this._1Ic);
        _arg1.addEventListener(MouseEvent.ROLL_OUT, this._0nF);
    }

    private function _1Ic(_arg1:MouseEvent):void {
        var _local2:Sprite = (_arg1.currentTarget as Sprite);
        _local2.transform.colorTransform = _0kl;
    }

    private function _0nF(_arg1:MouseEvent):void {
        var _local2:Sprite = (_arg1.currentTarget as Sprite);
        _local2.transform.colorTransform = MoreColorUtil.identity;
    }

    private function _0wI(_arg1:MouseEvent):void {
        var _local2:String = GuildUtil._1Be(GuildUtil._0ZT(this._02V));
        var _local3:Dialog = new Dialog("", "", _TG._1M1, _TG._0r9, "/promote");
        _local3._Mu(_TG._sW, {
            name: this.name_,
            rank: _local2
        });
        _local3._tm(new _5R().setParams(_TG._191, {name: this.name_}));
        _local3.addEventListener(Dialog.LEFT_BUTTON, this._06B);
        _local3.addEventListener(Dialog.RIGHT_BUTTON, this._0dz);
        _8w._1Sz().getInstance(_M4).dispatch(_local3);
    }

    private function _0dz(_arg1:Event):void {
        dispatchEvent(new _0N9(_0N9.SET_RANK, this.name_, GuildUtil._0ZT(this._02V)));
        _8w._1Sz().getInstance(_0ay).dispatch();
    }

    private function _1Ci(_arg1:MouseEvent):void {
        var _local2:String = GuildUtil._1Be(GuildUtil._qN(this._02V));
        var _local3:Dialog = new Dialog("", "", _TG._h, _TG._0HT, "/demote");
        _local3._Mu(_TG._0wb, {
            name: this.name_,
            rank: _local2
        });
        _local3._tm(new _5R().setParams(_TG._0si, {name: this.name_}));
        _local3.addEventListener(Dialog.LEFT_BUTTON, this._06B);
        _local3.addEventListener(Dialog.RIGHT_BUTTON, this._1fS);
        _8w._1Sz().getInstance(_M4).dispatch(_local3);
    }

    private function _1fS(_arg1:Event):void {
        dispatchEvent(new _0N9(_0N9.SET_RANK, this.name_, GuildUtil._qN(this._02V)));
        _8w._1Sz().getInstance(_0ay).dispatch();
    }

    private function _1AQ(_arg1:MouseEvent):void {
        var _local2:Dialog = new Dialog("", "", _TG._1sd, _TG._0ow, "/removeFromGuild");
        _local2._Mu(_TG._1xo, {name: this.name_});
        _local2._tm(new _5R().setParams(_TG._1QF, {name: this.name_}));
        _local2.addEventListener(Dialog.LEFT_BUTTON, this._06B);
        _local2.addEventListener(Dialog.RIGHT_BUTTON, this._13l);
        _8w._1Sz().getInstance(_M4).dispatch(_local2);
    }

    private function _13l(_arg1:Event):void {
        _8w._1Sz().getInstance(_0ay).dispatch();
        dispatchEvent(new _0N9(_0N9.REMOVE_MEMBER, this.name_));
    }

    private function _06B(_arg1:Event):void {
        _8w._1Sz().getInstance(_0ay).dispatch();
    }


}
}//package _2-t

