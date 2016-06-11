// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no._fY

package _0no {
import _07g._2v;

import _0CT._8w;

import _0EN._0u4;

import _0Mr._1M;

import _0y9._06T;

import _1Sm._sy;

import _QC._0Ew;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._07S;
import com.company.assembleegameclient.util._0ZU;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;

import kabam.rotmg.assets.services._Zm;

public class _fY extends Sprite {

    private static const _Pi:int = 18;
    public static const _Bo:String = "lofiObj3";
    public static const _WV:int = 225;
    public static const _qH:_2v = new _2v();

    public function _fY(_arg1:GameSprite = null, _arg2:Boolean = true, _arg3:Boolean = false, _arg4:Number = 0) {
        var _local6:_0u4;
        this._1VP = new _sy();
        super();
        this._1f0 = _arg3;
        this._J3 = _arg2;
        this._Tm = _arg1;
        this._CB = this._1rJ();
        _qH.push(this._CB.textChanged);
        addChild(this._CB);
        var _local5:BitmapData = AssetLibrary._Rb(_Bo, _WV);
        _local5 = TextureRedrawer.redraw(_local5, 40, true, 0);
        this._xh = new Bitmap(_local5);
        addChild(this._xh);
        if (this._J3) {
            this._0vW = this._1rJ();
            _qH.push(this._0vW.textChanged);
            addChild(this._0vW);
            this._0zP = new Bitmap(_0ZU._0e1());
            addChild(this._0zP);
        }
        ;
        if (((this._1f0) && (_0Ew._05m))) {
            _local6 = _8w._1Sz().getInstance(_0Ew).getFortune();
            if (_local6._0ZD != null) {
                this._cc = _local6._0ZD.time;
                this._0OU = this._1rJ(0xFFFFFF);
                _qH.push(this._0OU.textChanged);
                this._0OU.setStringBuilder(new _1M(this._21F()));
                addChild(this._0OU);
                this._0OU.visible = false;
            }
            ;
            this._0cI = this._1rJ(0xFFFFFF);
            _qH.push(this._0cI.textChanged);
            addChild(this._0cI);
            this._1dO = new Bitmap(_Zm._009());
            addChild(this._1dO);
        } else {
            this._1f0 = false;
        }
        ;
        this.draw(0, 0, 0);
        mouseEnabled = true;
        doubleClickEnabled = true;
        addEventListener(MouseEvent.DOUBLE_CLICK, this._Yy, false, 0, true);
        _qH.complete.add(this._0RK);
    }
    public var _1VP:_sy;
    private var _CB:_06T;
    private var _0vW:_06T;
    private var _0cI:_06T;
    private var _0OU:_06T;
    private var _xh:Bitmap;
    private var _0zP:Bitmap;
    private var _1dO:Bitmap;
    private var credits_:int = -1;
    private var _01D:int = -1;
    private var _0MQ:int = -1;
    private var _1f0:Boolean = false;
    private var _J3:Boolean = true;
    private var _Tm:GameSprite;
    private var _cc:Number = -1;
    private var _1Wb:String = "";

    public function _1rJ(_arg1:uint = 0xFFFFFF):_06T {
        var _local2:_06T = new _06T().setSize(_Pi).setColor(_arg1).setTextHeight(16);
        _local2.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        return (_local2);
    }

    public function draw(_arg1:int, _arg2:int, _arg3:int = 0):void {
        if (this._1f0) {
            this._0cQ();
        }
        ;
        if ((((((_arg1 == this.credits_)) && (((this._J3) && ((_arg2 == this._01D)))))) && (((this._1f0) && ((_arg3 == this._0MQ)))))) {
            return;
        }
        ;
        this.credits_ = _arg1;
        this._CB.setStringBuilder(new _1M(this.credits_.toString()));
        if (this._J3) {
            this._01D = _arg2;
            this._0vW.setStringBuilder(new _1M(this._01D.toString()));
        }
        ;
        if (this._1f0) {
            this._0MQ = _arg3;
            this._0cI.setStringBuilder(new _1M(this._0MQ.toString()));
        }
        ;
        if (_qH.isEmpty()) {
            this._0RK();
        }
        ;
    }

    public function _21F():String {
        var _local1 = "";
        var _local2:Date = new Date();
        var _local3:Number = ((this._cc - _local2.time) / 1000);
        if (_local3 > _07S._1VW) {
            _local1 = (String(Math.ceil(_07S._D6(_local3))) + " days");
        } else {
            if (_local3 > _07S._16U) {
                _local1 = (String(Math.ceil(_07S._PQ(_local3))) + " hours");
            } else {
                if (_local3 > _07S._0it) {
                    _local1 = (String(Math.ceil(_07S._1Vw(_local3))) + " minutes");
                } else {
                    if (_local3 > (_07S._0it / 2)) {
                        _local1 = "One Minute Left!";
                    } else {
                        if (_local3 > 0) {
                            _local1 = "Ending in a few seconds!!";
                        } else {
                            _local1 = "Ended";
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        return (_local1);
    }

    private function _0RK():void {
        if (this._1f0) {
            this._xh.x = -(this._xh.width);
            this._1dO.x = (-(this._xh.width) + 10);
            this._1dO.y = 10;
            this._0cI.x = ((this._xh.x - this._0cI.width) + 8);
            this._0cI.y = ((this._xh.y + (this._xh.height / 2)) - (this._CB.height / 2));
            this._0OU.x = (-(this._0OU.width) - 2);
            this._0OU.y = 33;
            this._xh.x = (this._0cI.x - this._xh.width);
            this._CB.x = ((this._xh.x - this._CB.width) + 8);
            this._CB.y = ((this._xh.y + (this._xh.height / 2)) - (this._CB.height / 2));
        } else {
            this._xh.x = -(this._xh.width);
            this._CB.x = ((this._xh.x - this._CB.width) + 8);
            this._CB.y = ((this._xh.y + (this._xh.height / 2)) - (this._CB.height / 2));
        }
        ;
        if (this._J3) {
            this._0zP.x = (this._CB.x - this._0zP.width);
            this._0vW.x = ((this._0zP.x - this._0vW.width) + 8);
            this._0vW.y = ((this._0zP.y + (this._0zP.height / 2)) - (this._0vW.height / 2));
        }
        ;
    }

    private function _0cQ():void {
        var _local1:String = this._21F();
        if (_local1 != this._1Wb) {
            if (_local1 == "Ended") {
                this._1f0 = false;
                removeChild(this._0OU);
                removeChild(this._1dO);
                removeChild(this._0cI);
                _0Ew._05m = false;
            } else {
                this._0OU.setStringBuilder(new _1M(_local1));
                this._1Wb = _local1;
            }
            ;
            this._0RK();
        }
        ;
    }

    private function _Yy(_arg1:MouseEvent):void {
        if (((((!(this._Tm)) || (this._Tm.evalIsNotInCombatMapArea()))) || ((Parameters.data_.clickForGold == true)))) {
            this._1VP.dispatch();
        }
        ;
    }


}
}//package _0no

