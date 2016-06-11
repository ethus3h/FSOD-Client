// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1pR._fH

package _1pR {
import _1E._03e;

import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import _fL._RT;

import com.company.assembleegameclient.objects.Player;

import kabam.rotmg.assets.services._1Ns;

public class _fH {

    [Inject]
    public var model:_03e;
    [Inject]
    public var classes:_1Z;
    [Inject]
    public var factory:_1Ns;


    public function execute(_arg1:_RT):void {
        var _local2:Player;
        var _local3:int;
        var _local4:_E0;
        _local2 = ((_arg1.player) || (this.model.player));
        _local3 = _arg1.skinID;
        _local4 = this.classes._Sb(_local2.objectType_);
        var _local5:_1GP = _local4._0fJ._1PW(_local3);
        _local2._0cg = _local3;
        _local2.skin = this.factory._1fP(_local5._164);
        _local2._Z2 = false;
    }


}
}//package _1pR

