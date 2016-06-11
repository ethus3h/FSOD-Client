// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0.MyPlayerToolTip

package _Z0 {
import _0CT._8w;

import _0Mr._5R;

import _0y9._06T;

import _1qi._1cF;
import _1qi._ry;

import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import _6u._TG;

import _gl._1bu;

import com.company.assembleegameclient.appengine._1Ha;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.ui.StatusBar;
import com.company.assembleegameclient.ui._wA;
import com.company.assembleegameclient.ui._yz;
import com.company.assembleegameclient.util._0ZU;

import flash.filters.DropShadowFilter;

import kabam.rotmg.assets.services._1Ns;

public class MyPlayerToolTip extends ToolTip {

    public function MyPlayerToolTip(_arg1:String, _arg2:XML, _arg3:_1Ha) {
        super(0x363636, 1, 0xFFFFFF, 1);
        this._09e = _arg1;
        this._20j = _arg2;
        this.charStats = _arg3;
    }
    public var player_:Player;
    private var factory:_1Ns;
    private var classes:_1Z;
    private var _0J2:_wA;
    private var _lz:StatusBar;
    private var _1lu:StatusBar;
    private var _0a1:_yz;
    private var bestLevel_:_06T;
    private var nextClassQuest_:_06T;
    private var _06x:_1cF;
    private var _0M:_ry;
    private var _09e:String;
    private var _20j:XML;
    private var charStats:_1Ha;

    override protected function alignUI():void {
        if (this.nextClassQuest_) {
            this.nextClassQuest_.x = 8;
            this.nextClassQuest_.y = (this.bestLevel_.getBounds(this).bottom - 2);
        }
        ;
    }

    override public function draw():void {
        this._lz.draw(this.player_._1wA, this.player_._022, this.player_._0fM, this.player_._0Pv);
        this._1lu.draw(this.player_._0e, this.player_._0sE, this.player_._08J, this.player_._1hc);
        this._0a1._1s9((width - 10), 0x1C1C1C);
        super.draw();
    }

    public function set():void {
        this.factory = _8w._1Sz().getInstance(_1Ns);
        this.classes = _8w._1Sz().getInstance(_1Z);
        var _local1:int = int(this._20j.ObjectType);
        var _local2:XML = ObjectLibrary._18H[_local1];
        this.player_ = Player._jT(this._09e, this._20j);
        var _local3:_E0 = this.classes._Sb(this.player_.objectType_);
        var _local4:_1GP = _local3._0fJ._1PW(this._20j.Texture);
        this.player_._0TX = this.factory._1fP(_local4._164);
        this._0J2 = new _wA(0xB3B3B3, true, this.player_);
        addChild(this._0J2);
        this._lz = new StatusBar(176, 16, 14693428, 0x545454, _TG._1iZ);
        this._lz.x = 6;
        this._lz.y = 40;
        addChild(this._lz);
        this._1lu = new StatusBar(176, 16, 6325472, 0x545454, _TG._jS);
        this._1lu.x = 6;
        this._1lu.y = 64;
        addChild(this._1lu);
        this._06x = new _1cF(null, this.player_._0ac, this.player_);
        this._06x.x = 8;
        this._06x.y = 88;
        addChild(this._06x);
        this._06x.setItems(this.player_._0Z);
        this._0M = new _ry(null, this.player_, _1bu._0RT);
        this._0M.x = 8;
        this._0M.y = 132;
        addChild(this._0M);
        this._0M.setItems(this.player_._0Z);
        this._0a1 = new _yz(100, 0x1C1C1C);
        this._0a1.x = 6;
        this._0a1.y = 228;
        addChild(this._0a1);
        this._DP();
        this.bestLevel_.x = 8;
        this.bestLevel_.y = (height - 2);
        var _local5:int = _0ZU.nextStarFame((((this.charStats == null)) ? 0 : this.charStats._04z()), 0);
        if (_local5 > 0) {
            this._18P(_local5, _local2);
        }
        ;
    }

    public function _18P(_arg1:int, _arg2:XML):void {
        this.nextClassQuest_ = new _06T().setSize(13).setColor(16549442).setTextWidth(174);
        this.nextClassQuest_.setStringBuilder(new _5R().setParams(_TG._0w2, {
            nextStarFame: _arg1,
            character: _arg2.DisplayId
        }));
        this.nextClassQuest_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.nextClassQuest_);
        _qH.push(this.nextClassQuest_.textChanged);
    }

    public function _DP():void {
        this.bestLevel_ = new _06T().setSize(14).setColor(6206769);
        var _local1:int = (((this.charStats == null)) ? 0 : this.charStats.numStars());
        var _local2:String = (((this.charStats) != null) ? this.charStats.bestLevel() : 0).toString();
        var _local3:String = (((this.charStats) != null) ? this.charStats._04z() : 0).toString();
        this.bestLevel_.setStringBuilder(new _5R().setParams(_TG._0bS, {
            numStars: _local1,
            bestLevel: _local2,
            fame: _local3
        }));
        this.bestLevel_.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.bestLevel_);
        _qH.push(this.bestLevel_.textChanged);
    }


}
}//package _Z0

