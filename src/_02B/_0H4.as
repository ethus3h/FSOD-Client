// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_02B._0H4

package _02B {
import _03u._BW;

import _0oL.Server;
import _0oL._0hs;

import _10a._FU;

import _1E._m;

import _1L3._IG;

import _1i0._Q;

import _Ny._200;

import _Qu._hs;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;

import flash.utils.ByteArray;

public class _0H4 {

    public static const _Kh:int = 2000;

    [Inject]
    public var _p2:_Q;
    [Inject]
    public var data:_m;
    [Inject]
    public var model:_FU;
    [Inject]
    public var _e2:_IG;
    [Inject]
    public var servers:_0hs;
    [Inject]
    public var _2:_200;
    [Inject]
    public var _1ZX:_BW;
    [Inject]
    public var _0I9:_hs;


    public function execute():void {
        if (!this.data._0uR) {
            this._0I9._0e = _0H4._Kh;
        }
        ;
        this._TX();
        this._0a4();
        this._1ca();
    }

    private function _1ca():void {
        var _local1:SavedCharacter = this.model._0im(this.model._Oc);
        if (_local1) {
            this._e2._WZ(_local1.getPetVO());
        } else {
            if (((((this.model._Oc) && (this._e2._0ER()))) && (!(this.data._0uR)))) {
                return;
            }
            ;
            this._e2._WZ(null);
        }
        ;
    }

    private function _TX():void {
        Parameters.data_.charIdUseMap[this.data.charId] = new Date().getTime();
        Parameters.save();
    }

    private function _0a4():void {
        var _local1:Server = ((this.data.server) || (this.servers._Fg()));
        var _local2:int = ((this.data._0uR) ? this._12K() : this.data.gameId);
        var _local3:Boolean = this.data._HG;
        var _local4:int = this.data.charId;
        var _local5:int = ((this.data._0uR) ? -1 : this.data._00F);
        var _local6:ByteArray = this.data.key;
        this.model._Oc = _local4;
        this._p2.dispatch(new GameSprite(_local1, _local2, _local3, _local4, _local5, _local6, this.model, null, this.data._01u));
    }

    private function _12K():int {
        var _local1:int;
        if (Parameters.data_.needsTutorial) {
            _local1 = Parameters._J9;
        } else {
            if (Parameters.data_.needsRandomRealm) {
                _local1 = Parameters._0Gx;
            } else {
                _local1 = Parameters._Cf;
            }
            ;
        }
        ;
        return (_local1);
    }


}
}//package _02B

