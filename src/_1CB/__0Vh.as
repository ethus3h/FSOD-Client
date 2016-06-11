// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB.__0Vh

package _1CB {
import _0Ql._ZQ;

import _1E.StatModel;

import _6u._TG;

import com.company.assembleegameclient.objects.Player;

import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.GlowFilter;

public class __0Vh extends Sprite {

    private static const _1og:Array = [new StatModel(_TG._0EK, _TG._0p9, _TG._1vc, true), new StatModel(_TG._gK, _TG._96, _TG._0Jx, false), new StatModel(_TG._0es, _TG._IV, _TG._1lR, true), new StatModel(_TG._else, _TG._1Ya, _TG._1l0, true), new StatModel(_TG._0yv, _TG._0sO, _TG._047, true), new StatModel(_TG._1wj, _TG._2V, _TG._1a6, true)];
    public static const _4z:int = 0;
    public static const _dH:int = 1;
    public static const _1oh:int = 2;
    public static const _0W5:int = 3;
    public static const _BE:int = 4;
    public static const _1l3:int = 5;
    public static const _186:String = "state_undocked";
    public static const _0On:String = "state_docked";
    public static const _0Pj:String = _0On;//"state_docked"

    private const WIDTH:int = 191;
    private const HEIGHT:int = 45;

    public function __0Vh() {
        this.background = this._Gr();
        this._0Lc = new Vector.<_cg>();
        this._1tD = new Sprite();
        super();
        addChild(this.background);
        addChild(this._1tD);
        this._16H();
        mouseChildren = false;
        this._0Jd = new _ZQ(this, MouseEvent.MOUSE_DOWN, MouseEvent);
    }
    public var _0Lc:Vector.<_cg>;
    public var _1tD:Sprite;
    public var _0Jd:_ZQ;
    public var _64:String = "state_docked";
    private var background:Sprite;

    public function draw(_arg1:Player):void {
        if (_arg1) {
            this._0vD();
            this._cP(_arg1);
        }
        ;
        this._1tD.x = ((this.WIDTH - this._1tD.width) / 2);
    }

    public function _c():void {
        this._64 = _0On;
    }

    public function _5W():void {
        this._64 = _186;
    }

    private function _16H():void {
        var _local3:_cg;
        var _local1:int;
        var _local2:int;
        while (_local2 < _1og.length) {
            _local3 = this._1au(_local2, _local1);
            this._0Lc.push(_local3);
            this._1tD.addChild(_local3);
            _local1 = (_local1 + (_local2 % 2));
            _local2++;
        }
        ;
    }

    private function _1au(_arg1:int, _arg2:int):_cg {
        var _local4:_cg;
        var _local3:StatModel = _1og[_arg1];
        _local4 = new _cg(_local3.name, _local3._yt, _local3.description, _local3._WQ);
        _local4.x = (((_arg1 % 2) * this.WIDTH) / 2);
        _local4.y = (_arg2 * (this.HEIGHT / 3));
        return (_local4);
    }

    private function _cP(_arg1:Player):void {
        this._0Lc[_4z].draw(_arg1._0jT, _arg1._0P4, _arg1._0i3);
        this._0Lc[_dH].draw(_arg1._05c, _arg1._gU, _arg1._12o);
        this._0Lc[_1oh].draw(_arg1.speed_, _arg1._H8, _arg1._M);
        this._0Lc[_0W5].draw(_arg1._1IQ, _arg1._0oQ, _arg1._0uQ);
        this._0Lc[_BE].draw(_arg1._oP, _arg1._0HP, _arg1._1bK);
        this._0Lc[_1l3].draw(_arg1._1EO, _arg1._1jk, _arg1._zI);
    }

    private function _Gr():Sprite {
        this.background = new Sprite();
        this.background.graphics.clear();
        this.background.graphics.beginFill(0x363636);
        this.background.graphics.lineStyle(2, 0xFFFFFF);
        this.background.graphics.drawRoundRect(-5, -5, (this.WIDTH + 10), (this.HEIGHT + 13), 10);
        this.background.filters = [new GlowFilter(0, 1, 10, 10, 1, 3)];
        return (this.background);
    }

    private function _0vD():void {
        if (this._64 == _186) {
            this.background.alpha = 1;
        } else {
            if (this._64 == _0On) {
                this.background.alpha = 0;
            }
            ;
        }
        ;
    }


}
}//package _1CB

