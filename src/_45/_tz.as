// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_45._tz

package _45 {
import _0Mc.CreateGuildFrame;

import _1Fr._qf;

import _1f4.GuildRegisterPanel;

import _6u._TG;

import _Vb.Dialog;

import __Nj._0ay;
import __Nj._M4;

import _r7._17v;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.objects.Player;

import flash.events.Event;

public class _tz extends _17v {

    [Inject]
    public var view:GuildRegisterPanel;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _1b:_qf;


    override public function initialize():void {
        this.view._Rn.add(this._0XR);
        this.view.renounce.add(this._rP);
    }

    override public function destroy():void {
        this.view._Rn.remove(this._0XR);
        this.view.renounce.remove(this._rP);
    }

    public function _rP():void {
        var _local1:GameSprite = this._1b._1P;
        if ((((_local1.map == null)) || ((_local1.map.player_ == null)))) {
            return;
        }
        ;
        var _local2:Player = _local1.map.player_;
        var _local3:Dialog = new Dialog(_TG._0T6, _TG._X9, _TG._07T, _TG._1OX, "/renounceGuild");
        _local3._Mu(_TG._X9, {guildName: _local2.guildName_});
        _local3.addEventListener(Dialog.LEFT_BUTTON, this._1qK);
        _local3.addEventListener(Dialog.RIGHT_BUTTON, this.onCancel);
        this._nU.dispatch(_local3);
    }

    private function _0XR():void {
        this._nU.dispatch(new CreateGuildFrame(this._1b._1P));
    }

    private function onCancel(_arg1:Event):void {
        this._00G.dispatch();
    }

    private function _1qK(_arg1:Event):void {
        var _local2:GameSprite = this._1b._1P;
        if ((((_local2.map == null)) || ((_local2.map.player_ == null)))) {
            return;
        }
        ;
        var _local3:Player = _local2.map.player_;
        _local2.gsc_.guildRemove(_local3.name_);
        this._00G.dispatch();
    }


}
}//package _45

