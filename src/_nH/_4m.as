// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_nH._4m

package _nH {
import _08Y._sC;

import _0CT._8w;

import _0Mr._1M;

import _0y9._06T;

import _14._18r;

import _1Fr._qf;

import _1f4.Panel;

import _207._0sk;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.ui._Tl;

import flash.display.Bitmap;

public class _4m extends Panel {

    private const _17E:_06T = _sC._1h(0xFFFFFF, 18, true);
    private static var _07x:Boolean = false;

    public static function _S2():void {
        var _local1:_qf = _8w._1Sz().getInstance(_qf);
        var _local2:_0sk = _8w._1Sz().getInstance(_0sk);
        if (((((!((_local1 == null))) && (!((_local1._1P == null))))) && (!((_local1._1P.gsc_ == null))))) {
            _local2.add(_1T5);
            _local1._1P.gsc_.questFetch();
        }
        ;
    }

    public static function _1T5(_arg1:_18r):void {
        var _local2:int = _arg1.tier;
        if (_local2 > 0) {
            _07x = true;
        } else {
            _07x = false;
        }
        ;
    }

    public static function _TB():Boolean {
        if (((_07x) || (((!((_1Gh._0jl == -1))) && ((_1Gh._0jl == new Date().dayUTC)))))) {
            return (true);
        }
        ;
        return (false);
    }

    public function _4m(_arg1:GameSprite) {
        super(_arg1);
        this.icon = _sC._1eh(5972);
        this.icon.x = -4;
        this.icon.y = -8;
        addChild(this.icon);
        this.objectType = 5972;
        this._17E.setStringBuilder(new _1M(this.title));
        this._17E.x = 78;
        this._17E.y = 28;
        addChild(this._17E);
        if (_TB()) {
            this._aZ();
        } else {
            this._05i();
        }
        ;
    }
    var _20a:_Tl;
    private var icon:Bitmap;
    private var title:String = "The Tinkerer";
    private var _0z2:String = "See Offers";
    private var _1ZK:String = "Check Back Later";
    private var objectType:int;

    public function _aZ():void {
        this._20a = new _Tl(16, this._0z2);
        this._20a.textChanged.addOnce(this._zx);
        addChild(this._20a);
    }

    public function _05i():void {
        this._20a = new _Tl(16, this._1ZK);
        this._20a.textChanged.addOnce(this._zx);
        addChild(this._20a);
    }

    public function init():void {
    }

    private function _zx():void {
        this._20a.x = ((WIDTH / 2) - (this._20a.width / 2));
        this._20a.y = ((HEIGHT - this._20a.height) - 4);
    }


}
}//package _nH

