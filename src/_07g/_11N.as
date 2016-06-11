// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._11N

package _07g {
import _6u._TG;

import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.ui.StatusBar;
import com.company.assembleegameclient.ui._QS;

import flash.display.Sprite;
import flash.events.Event;

public class _11N extends Sprite {

    public function _11N() {
        this._2M = new StatusBar(176, 16, 5931045, 0x545454, _TG._1Q4);
        this._1Vg = new StatusBar(176, 16, 0xE25F00, 0x545454, _TG._qx);
        this._lz = new StatusBar(176, 16, 14693428, 0x545454, _TG._1iZ);
        this._1lu = new StatusBar(176, 16, 6325472, 0x545454, _TG._jS);
        this._lz.y = 24;
        this._1lu.y = 48;
        this._2M.visible = true;
        this._1Vg.visible = false;
        addChild(this._2M);
        addChild(this._1Vg);
        addChild(this._lz);
        addChild(this._1lu);
    }
    private var _2M:StatusBar;
    private var _1Vg:StatusBar;
    private var _lz:StatusBar;
    private var _1lu:StatusBar;
    private var _1Rk:Boolean;
    private var _04n:int;
    private var _1hs:_QS;

    public function update(_arg1:Player):void {
        this._2M._0zp(_TG._1Q4, {level: _arg1._ew});
        if (_arg1._ew != 20) {
            if (this._1hs) {
                this._1hs.update(_arg1._1uv);
            }
            ;
            if (!this._2M.visible) {
                this._2M.visible = true;
                this._1Vg.visible = false;
            }
            ;
            this._2M.draw(_arg1.exp_, _arg1._Pr, 0);
            if (this._04n != _arg1._in) {
                this._04n = _arg1._in;
                if (this._04n) {
                    this._2M._4V();
                } else {
                    this._2M._1i1();
                }
                ;
            }
            ;
            if (_arg1._1uv) {
                if (!this._1Rk) {
                    this._2M.addEventListener("MULTIPLIER_OVER", this._a0);
                    this._2M.addEventListener("MULTIPLIER_OUT", this._1Ym);
                    this._1Rk = true;
                }
                ;
            } else {
                if (this._1Rk) {
                    this._2M.removeEventListener("MULTIPLIER_OVER", this._a0);
                    this._2M.removeEventListener("MULTIPLIER_OUT", this._1Ym);
                    this._1Rk = false;
                }
                ;
                if (((this._1hs) && (this._1hs.parent))) {
                    removeChild(this._1hs);
                    this._1hs = null;
                }
                ;
            }
            ;
        } else {
            if (!this._1Vg.visible) {
                this._1Vg.visible = true;
                this._2M.visible = false;
            }
            ;
            this._1Vg.draw(_arg1._1GN, _arg1._Pq, 0);
        }
        ;
        this._lz.draw(_arg1._1wA, _arg1._022, _arg1._0fM, _arg1._0Pv);
        this._1lu.draw(_arg1._0e, _arg1._0sE, _arg1._08J, _arg1._1hc);
    }

    private function _a0(_arg1:Event):void {
        addChild((this._1hs = new _QS()));
    }

    private function _1Ym(_arg1:Event):void {
        if (((this._1hs) && (this._1hs.parent))) {
            removeChild(this._1hs);
            this._1hs = null;
        }
        ;
    }


}
}//package _07g

