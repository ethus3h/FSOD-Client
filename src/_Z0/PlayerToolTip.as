// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0.PlayerToolTip

package _Z0 {
import _0Mr._5R;

import _0y9._06T;

import _1qi._1cF;

import _6u._TG;

import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.ui.RankText;
import com.company.assembleegameclient.ui.StatusBar;
import com.company.assembleegameclient.ui._1g;
import com.company.assembleegameclient.ui._wA;

import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class PlayerToolTip extends ToolTip {

    public function PlayerToolTip(_arg1:Player) {
        var _local2:int;
        super(0x363636, 0.5, 0xFFFFFF, 1);
        this.player_ = _arg1;
        this._0J2 = new _wA(0xB3B3B3, true, this.player_);
        addChild(this._0J2);
        _local2 = 34;
        this._1Qy = new RankText(this.player_.numStars_, false, true);
        this._1Qy.x = 6;
        this._1Qy.y = _local2;
        addChild(this._1Qy);
        _local2 = (_local2 + 30);
        if (((!((_arg1.guildName_ == null))) && (!((_arg1.guildName_ == ""))))) {
            this._0Qb = new _1g(this.player_.guildName_, this.player_.guildRank_, 136);
            this._0Qb.x = 6;
            this._0Qb.y = (_local2 - 2);
            addChild(this._0Qb);
            _local2 = (_local2 + 30);
        }
        ;
        this._lz = new StatusBar(176, 16, 14693428, 0x545454, _TG._1iZ);
        this._lz.x = 6;
        this._lz.y = _local2;
        addChild(this._lz);
        _local2 = (_local2 + 24);
        this._1lu = new StatusBar(176, 16, 6325472, 0x545454, _TG._jS);
        this._1lu.x = 6;
        this._1lu.y = _local2;
        addChild(this._1lu);
        _local2 = (_local2 + 24);
        this._06x = new _1cF(null, this.player_._0ac, this.player_);
        this._06x.x = 8;
        this._06x.y = _local2;
        addChild(this._06x);
        _local2 = (_local2 + 52);
        this._ta = new _06T().setSize(12).setColor(0xB3B3B3);
        this._ta.setAutoSize(TextFieldAutoSize.CENTER);
        this._ta.setStringBuilder(new _5R().setParams(_TG._1us));
        this._ta.filters = [new DropShadowFilter(0, 0, 0)];
        this._ta.x = (width / 2);
        this._ta.y = _local2;
        _qH.push(this._ta.textChanged);
        addChild(this._ta);
    }
    public var player_:Player;
    private var _0J2:_wA;
    private var _1Qy:RankText;
    private var _0Qb:_1g;
    private var _lz:StatusBar;
    private var _1lu:StatusBar;
    private var _ta:_06T;
    private var _06x:_1cF;

    override public function draw():void {
        this._lz.draw(this.player_._1wA, this.player_._022, this.player_._0fM, this.player_._0Pv);
        this._1lu.draw(this.player_._0e, this.player_._0sE, this.player_._08J, this.player_._1hc);
        this._06x.setItems(this.player_._0Z);
        this._1Qy.draw(this.player_.numStars_);
        super.draw();
    }


}
}//package _Z0

