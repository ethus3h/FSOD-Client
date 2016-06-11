// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_70._pK

package _70 {
import _03u._1hp;
import _03u._2w;
import _03u._BW;

import _0y8._1xD;

import _10a._FU;

import _14._1Id;

import _1i0._18D;

import _Ny._200;

import __1Ye._0nK;

import _wm._0e7;
import _wm._1Jw;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.parameters.Parameters;

public class _pK {

    [Inject]
    public var death:_1Id;
    [Inject]
    public var player:_FU;
    [Inject]
    public var _16k:_18D;
    [Inject]
    public var _2:_200;
    [Inject]
    public var _19b:_1xD;
    [Inject]
    public var _1ZX:_BW;
    private var _0Ce:_1Jw;


    public function execute():void {
        this._0Ce = new _0e7(this.death.accountId_, this.death.charId_);
        this._1Yq();
        this._PH();
        this._0LD();
    }

    private function _1Yq():void {
        var _local1:SavedCharacter = this.player._0jG(this.death.charId_);
        var _local2:int = ((_local1) ? _local1.level() : 0);
        var _local3:_0nK = new _0nK();
        _local3.category = "killedBy";
        _local3._0HR = this.death.killedBy_;
        _local3.value = _local2;
        this._16k.dispatch(_local3);
    }

    private function _PH():void {
        Parameters.data_.needsRandomRealm = false;
        Parameters.save();
    }

    private function _0LD():void {
        if (this.player._1rI() == "") {
            this._JT();
        } else {
            this._19b.dispatch(this._0Ce);
        }
        ;
    }

    private function _JT():void {
        var _local1:_2w = new _2w();
        _local1.add(this._2);
        _local1.add(new _1hp(this._19b, this._0Ce));
        this._1ZX.add(_local1);
        _local1.start();
    }


}
}//package _70

