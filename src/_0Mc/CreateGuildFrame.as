// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Mc.CreateGuildFrame

package _0Mc {
import _0CT._8w;

import _0gF._094;

import _1E._03e;

import _1Sm._sy;

import _6u._TG;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;

import flash.events.MouseEvent;

public class CreateGuildFrame extends Frame {

    public const close:_sy = new _sy();

    public function CreateGuildFrame(_arg1:GameSprite) {
        super(_TG._0oe, _TG._Vy, _TG._1HG, "/createGuild");
        this.gs_ = _arg1;
        this.name_ = new _eR(_TG._0Lm, false);
        this.name_.inputText_.restrict = "A-Za-z ";
        var _local2:int = 20;
        this.name_.inputText_.maxChars = _local2;
        _0qq(this.name_);
        _1ll(_TG._181, {maxChars: _local2});
        _1ll(_TG._1Qa);
        _1ll(_TG._04S);
        _4j.addEventListener(MouseEvent.CLICK, this.onCancel);
        _01h.addEventListener(MouseEvent.CLICK, this._4f);
    }
    private var name_:_eR;
    private var gs_:GameSprite;

    private function onCancel(_arg1:MouseEvent):void {
        this.close.dispatch();
    }

    private function _4f(_arg1:MouseEvent):void {
        this.gs_.addEventListener(_094._Pu, this._1B3);
        this.gs_.gsc_.createGuild(this.name_.text());
        disable();
    }

    private function _1B3(_arg1:_094):void {
        var _local2:Player;
        this.gs_.removeEventListener(_094._Pu, this._1B3);
        if (_arg1.success_) {
            _local2 = _8w._1Sz().getInstance(_03e).player;
            if (_local2 != null) {
                _local2._01D = (_local2._01D - Parameters._1W9);
            }
            ;
            this.close.dispatch();
        } else {
            this.name_._044(_arg1._0XJ, _arg1._0XE);
            _bx();
        }
        ;
    }


}
}//package _0Mc

