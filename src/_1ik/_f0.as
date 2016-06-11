// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1ik._f0

package _1ik {
import _1E._03e;

import _1L3._IG;

import _1Sm._sy;

import _20I._1GP;
import _20I._1Z;

import kabam.rotmg.assets.services._1Ns;

public class _f0 {

    public const _1s3:_sy = new _sy();

    public function _f0() {
        this._1ej = new _2X();
        super();
        this.clear();
    }
    [Inject]
    public var _Zs:_03e;
    [Inject]
    public var _M9:_IG;
    [Inject]
    public var _PI:_1Z;
    [Inject]
    public var factory:_1Ns;
    public var _1g6:Boolean = false;
    public var _1ej:_2X;
    public var _sx:int = 0;

    public function clear():void {
        this._1g6 = false;
        this._1ej._1qz = 0;
        this._1ej._0fh = -1;
    }

    public function _Be():void {
        if (this._1g6) {
            this._1g6 = false;
        } else {
            this._1ej._1qz++;
            this._1s3.dispatch();
        }
        ;
    }

    public function _hk():Boolean {
        return (!((this._1ej._0fh == -1)));
    }

    public function _1gz():void {
        this.clear();
        this._1ej.name = this._Zs.player.name_;
        var _local1:_1GP = this._PI._Sb(this._Zs.player.objectType_)._0fJ._1PW(this._Zs.player._0cg);
        this._1ej._1PC = this.factory.makeIcon(_local1._164, 100, this._Zs.player.getTex1(), this._Zs.player.getTex2());
        this._1ej.pet = this._M9._0ER();
        this._1ej.guildName = this._Zs.player.guildName_;
        this._1ej._1sn = this._Zs.player.guildRank_;
        this._1ej._16 = this._Zs.player._0ac.concat();
        this._1ej._0Jj = this._Zs.player._0Z.concat();
        this._1ej._13C = true;
    }


}
}//package _1ik

