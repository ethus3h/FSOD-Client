// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_02B.UseBuyPotionCommand

package _02B {
import _1E._0rN;
import _1E._1ne;

import _1Fr._1vE;
import _1Fr._qf;

import _1PM._1YQ;

import _1TC._08E;

import _1TG._0Yn;

import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;

import flash.utils.getTimer;

public class UseBuyPotionCommand {

    public function UseBuyPotionCommand() {
        this._NW = _08E._a9;
        super();
    }
    [Inject]
    public var _1HM:_0rN;
    [Inject]
    public var _1F:_1ne;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _1TT:_1YQ;
    private var _NW:_08E;
    private var player:Player;
    private var _11i:int;
    private var count:int;
    private var _0Lp:_1vE;

    public function execute():void {
        this.player = this._1b._1P.map.player_;
        if (this.player == null) {
            return;
        }
        ;
        this._11i = this._1HM.objectId;
        this.count = this.player.getPotionCount(this._11i);
        this._0Lp = this._1F._9s(this._11i);
        if ((((this.count > 0)) || (this._1Tt()))) {
            this._1so();
        } else {
            this._1TT.info("Not safe to purchase potion");
        }
        ;
    }

    private function _1Tt():Boolean {
        var _local1 = (this.player.credits_ >= this._0Lp._1nt(this.player.getPotionCount(this._11i)));
        var _local2:Boolean = Parameters.data_.contextualPotionBuy;
        return (((_local1) && (_local2)));
    }

    private function _1so():void {
        if (this._1Pi()) {
            this._1TT.info("UseBuyPotionCommand.execute: User has MAX of that attribute, not requesting a use/buy from server.");
        } else {
            this._1IH();
            _0Yn.play("use_potion");
        }
        ;
    }

    private function _1Pi():Boolean {
        if (this._11i == _1ne._0ip) {
            return ((this.player._1wA >= this.player._022));
        }
        ;
        if (this._11i == _1ne._0Kh) {
            return ((this.player._0e >= this.player._0sE));
        }
        ;
        return (false);
    }

    private function _1IH():void {
        var _local1:int = _1ne._1Kn(this._1HM.objectId);
        var _local2:int = Parameters.data_.contextualPotionBuy;
        this._NW.useItem(getTimer(), this.player.objectId_, _local1, this._11i, this.player.x_, this.player.y_, _local2);
        if (this.player.getPotionCount(this._1HM.objectId) == 0) {
            this._1F._9s(this._1HM.objectId)._7F();
        }
        ;
    }


}
}//package _02B

