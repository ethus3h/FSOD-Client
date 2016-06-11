// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1VR.PlayerMenu

package _1VR {
import _0CT._8w;

import _6u._TG;

import _Kt._1Wa;

import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.ui._wA;
import com.company.assembleegameclient.util.GuildUtil;
import com.company.util.AssetLibrary;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.net.URLRequest;
import flash.net.navigateToURL;

public class PlayerMenu extends Menu {

    public function PlayerMenu() {
        super(0x363636, 0xFFFFFF);
    }
    public var gs_:_0p2;
    public var _0dQ:String;
    public var player_:Player;
    public var _0J2:_wA;

    public function _1EX(_arg1:_0p2, _arg2:String, _arg3:Boolean = false, _arg4:Boolean = false):void {
        var _local5:_W6;
        this.gs_ = _arg1;
        this._0dQ = _arg2;
        this.player_ = null;
        this._u8 = (this._u8 - 25);
        _local5 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 21), 0xFFFFFF, _TG._qp);
        _local5.addEventListener(MouseEvent.CLICK, this._0d8);
        _iL(_local5);
        if (_arg3) {
            _local5 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 21), 0xFFFFFF, _TG._0F6);
            _local5.addEventListener(MouseEvent.CLICK, this._0oJ);
            _iL(_local5);
        }
        ;
        if (_arg4) {
            _local5 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 7), 0xFFFFFF, _TG._0fx);
            _local5.addEventListener(MouseEvent.CLICK, this._1G7);
            _iL(_local5);
        }
        ;
    }

    public function init(_arg1:_0p2, _arg2:Player):void {
        var _local3:_W6;
        this.gs_ = _arg1;
        this._0dQ = _arg2.name_;
        this.player_ = _arg2;
        this._0J2 = new _wA(0xB3B3B3, true, this.player_, true);
        this._u8 = (this._u8 + 7);
        addChild(this._0J2);
        if (Player._1mi) {
            _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 10), 0xFFFFFF, _TG._1tI);
            _local3.addEventListener(MouseEvent.CLICK, this._0eB);
            _iL(_local3);
            _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 4), 0xFFFFFF, _TG._bV);
            _local3.addEventListener(MouseEvent.CLICK, this._UA);
            _iL(_local3);
            _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 3), 0xFFFFFF, _TG._1tq);
            _local3.addEventListener(MouseEvent.CLICK, this._0sv);
            _iL(_local3);
        }
        ;
        if (((this.gs_.map._1D4()) && (this.player_._Ym(this.player_)))) {
            _local3 = new TeleportMenuOption(this.gs_.map.player_);
            _local3.addEventListener(MouseEvent.CLICK, this._0mD);
            _iL(_local3);
        }
        ;
        if ((((this.gs_.map.player_.guildRank_ >= GuildUtil._15E)) && ((((_arg2.guildName_ == null)) || ((_arg2.guildName_.length == 0)))))) {
            _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 10), 0xFFFFFF, _TG._1eB);
            _local3.addEventListener(MouseEvent.CLICK, this._0Md);
            _iL(_local3);
        }
        ;
        if (!this.player_.starred_) {
            _local3 = new _W6(AssetLibrary._Rb("lofiInterface2", 5), 0xFFFFFF, _TG._xj);
            _local3.addEventListener(MouseEvent.CLICK, this._0nO);
            _iL(_local3);
        } else {
            _local3 = new _W6(AssetLibrary._Rb("lofiInterface2", 6), 0xFFFFFF, _TG._6r);
            _local3.addEventListener(MouseEvent.CLICK, this._1oq);
            _iL(_local3);
        }
        ;
        _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 7), 0xFFFFFF, _TG._0fx);
        _local3.addEventListener(MouseEvent.CLICK, this._010);
        _iL(_local3);
        _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 21), 0xFFFFFF, _TG._qp);
        _local3.addEventListener(MouseEvent.CLICK, this._0d8);
        _iL(_local3);
        if (this.player_._0Mq) {
            _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 21), 0xFFFFFF, _TG._0F6);
            _local3.addEventListener(MouseEvent.CLICK, this._0oJ);
            _iL(_local3);
        }
        ;
        if (!this.player_._18i) {
            _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 8), 0xFFFFFF, _TG._1za);
            _local3.addEventListener(MouseEvent.CLICK, this._02C);
            _iL(_local3);
        } else {
            _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 9), 0xFFFFFF, _TG._cJ);
            _local3.addEventListener(MouseEvent.CLICK, this._1FS);
            _iL(_local3);
        }
        ;
        _local3 = new _W6(AssetLibrary._Rb("lofiInterfaceBig", 10), 0xFFFFFF, "Muledump", true);
        _local3.addEventListener(MouseEvent.CLICK, this.realmeye);
        _iL(_local3);
    }

    public function realmeye(_arg1:Event):void {
        var _local2:URLRequest = new URLRequest(("http://c453.pw/muledump.html?username=" + this.player_.name_));
        navigateToURL(_local2, "_blank");
    }

    private function _0eB(_arg1:Event):void {
        this.gs_.gsc_.playerText(("/kick " + this.player_.name_));
        remove();
    }

    private function _UA(_arg1:Event):void {
        this.gs_.gsc_.playerText(("/mute " + this.player_.name_));
        remove();
    }

    private function _0sv(_arg1:Event):void {
        this.gs_.gsc_.playerText(("/unmute " + this.player_.name_));
        remove();
    }

    private function _0d8(_arg1:Event):void {
        var _local2:_1Wa = _8w._1Sz().getInstance(_1Wa);
        _local2.dispatch(true, (("/tell " + this._0dQ) + " "));
        remove();
    }

    private function _1G7(_arg1:Event):void {
        var _local2:_1Wa = _8w._1Sz().getInstance(_1Wa);
        _local2.dispatch(true, ("/trade " + this._0dQ));
        remove();
    }

    private function _0oJ(_arg1:Event):void {
        var _local2:_1Wa = _8w._1Sz().getInstance(_1Wa);
        _local2.dispatch(true, "/g ");
        remove();
    }

    private function _0mD(_arg1:Event):void {
        this.gs_.map.player_._0vG(this.player_);
        remove();
    }

    private function _0Md(_arg1:Event):void {
        this.gs_.gsc_.guildInvite(this._0dQ);
        remove();
    }

    private function _0nO(_arg1:Event):void {
        this.gs_.map.party_._cs(this.player_);
        remove();
    }

    private function _1oq(_arg1:Event):void {
        this.gs_.map.party_._Vz(this.player_);
        remove();
    }

    private function _010(_arg1:Event):void {
        this.gs_.gsc_.requestTrade(this._0dQ);
        remove();
    }

    private function _02C(_arg1:Event):void {
        this.gs_.map.party_._078(this.player_);
        remove();
    }

    private function _1FS(_arg1:Event):void {
        this.gs_.map.party_._1TJ(this.player_);
        remove();
    }


}
}//package _1VR

