// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._1QQ

package _07g {
import _09v._mg;

import _14._0eW;
import _14._0gd;
import _14._cy;

import _1CB._S1;

import _1f4._0Da;

import _1qi._1cF;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.game._0p2;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.ui._HO;
import com.company.util._1WM;
import com.company.util._dT;

import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;
import flash.events.Event;
import flash.geom.Point;

public class _1QQ extends Sprite implements _0Yv {

    private const _0G5:Point = new Point(0, 0);
    private const _1cp:Point = new Point(4, 4);
    private const _rX:Point = new Point(0, 198);
    private const _1yM:Point = new Point(12, 230);
    private const _0s3:Point = new Point(14, 304);
    private const _Z3:Point = new Point(7, 346);
    private const _PL:Point = new Point(0, 500);

    public function _1QQ() {
        this._1rh();
        this._0L7();
        this._1Ku();
    }
    public var _1w4:_S1;
    public var interactPanel:_0Da;
    public var _0uu:_HO;
    private var background:_0Uj;
    private var _cn:_mg;
    private var _1UB:_1cF;
    private var _1do:_11N;
    private var _08R:CharacterDetailsView;
    private var _0cP:Sprite;
    private var player:Player;

    public function _1Y3(_arg1:GameSprite):void {
        this.player = _arg1.map.player_;
        this._Mw();
        this._Z7();
        this._0Nn(_arg1);
    }

    public function draw():void {
        if (this._1UB) {
            this._1UB.draw();
        }
        ;
        if (this.interactPanel) {
            this.interactPanel.draw();
        }
        ;
    }

    public function startTrade(_arg1:_0p2, _arg2:_cy):void {
        if (!this._0uu) {
            this._0uu = new _HO(_arg1, _arg2);
            this._0uu.y = 200;
            this._0uu.addEventListener(Event.CANCEL, this._068);
            addChild(this._0uu);
            this._Pn(false);
        }
        ;
    }

    public function tradeDone():void {
        this._1Rj();
    }

    public function tradeChanged(_arg1:_0gd):void {
        if (this._0uu) {
            this._0uu._0yK(_arg1.offer_);
        }
        ;
    }

    public function tradeAccepted(_arg1:_0eW):void {
        if (this._0uu) {
            this._0uu._0Np(_arg1.myOffer_, _arg1.yourOffer_);
        }
        ;
    }

    private function _1rh():void {
        this.background = new _0Uj();
        this._cn = new _mg(192, 192);
        this._1w4 = new _S1();
        this._08R = new CharacterDetailsView();
        this._1do = new _11N();
    }

    private function _0L7():void {
        addChild(this.background);
        addChild(this._cn);
        addChild(this._1w4);
        addChild(this._08R);
        addChild(this._1do);
    }

    private function _1Ku():void {
        this.background.x = this._0G5.x;
        this.background.y = this._0G5.y;
        this._cn.x = this._1cp.x;
        this._cn.y = this._1cp.y;
        this._1w4.x = this._Z3.x;
        this._1w4.y = this._Z3.y;
        this._08R.x = this._rX.x;
        this._08R.y = this._rX.y;
        this._1do.x = this._1yM.x;
        this._1do.y = this._1yM.y;
    }

    private function _0Nn(_arg1:GameSprite):void {
        this.interactPanel = new _0Da(_arg1, this.player, 200, 100);
        this.interactPanel.x = this._PL.x;
        this.interactPanel.y = this._PL.y;
        addChild(this.interactPanel);
    }

    private function _Z7():void {
        this._1UB = new _1cF(this.player, this.player._0ac, this.player);
        this._1UB.x = this._0s3.x;
        this._1UB.y = this._0s3.y;
        addChild(this._1UB);
    }

    private function _Mw():void {
        var _local3:Vector.<IGraphicsData>;
        var _local1:GraphicsSolidFill = new GraphicsSolidFill(0x676767, 1);
        var _local2:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        _local3 = new <IGraphicsData>[_local1, _local2, _1WM.END_FILL];
        _1WM._0lo(0, 0, 178, 46, 6, [1, 1, 1, 1], _local2);
        this._0cP = new Sprite();
        this._0cP.x = (this._0s3.x - 3);
        this._0cP.y = (this._0s3.y - 3);
        this._0cP.graphics.drawGraphicsData(_local3);
        addChild(this._0cP);
    }

    private function _Pn(_arg1:Boolean):void {
        this._08R.visible = _arg1;
        this._1do.visible = _arg1;
        this._1w4.visible = _arg1;
        this._1UB.visible = _arg1;
        this._0cP.visible = _arg1;
        this.interactPanel.visible = _arg1;
    }

    private function _1Rj():void {
        if (this._0uu) {
            _dT._vn(this, this._0uu);
            this._0uu.removeEventListener(Event.CANCEL, this._068);
            this._0uu = null;
            this._Pn(true);
        }
        ;
    }

    private function _068(_arg1:Event):void {
        this._1Rj();
    }


}
}//package _07g

