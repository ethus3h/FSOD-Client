// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1q1._qL

package _1q1 {
import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import com.company.assembleegameclient.objects.ObjectLibrary;

import kabam.rotmg.assets._1tT;
import kabam.rotmg.assets.model._1ZZ;

public class _qL {

    private static function _14W(_arg1:XML):void {
        var _local2:XMLList;
        var _local3:XML;
        var _local4:int;
        var _local5:int;
        _local2 = _arg1.children();
        for each (_local3 in _local2) {
            if (_local3.attribute("skinType").length() != 0) {
                _local4 = int(_local3.@skinType);
                _local5 = 0xFFD700;
                if (_local3.attribute("color").length() != 0) {
                    _local5 = int(_local3.@color);
                }
                ;
                ObjectLibrary._052[_local4] = _local3;
            }
            ;
        }
        ;
    }
    [Inject]
    public var model:_1Z;

    public function execute():void {
        var _local1:XML;
        var _local2:XMLList;
        var _local3:XML;
        _local1 = _1tT._2J;
        _local2 = _local1.children();
        for each (_local3 in _local2) {
            this._bY(_local3);
        }
        ;
        _local1 = _1tT._GH;
        _local2 = _local1.children();
        for each (_local3 in _local2) {
            _14W(_local3);
        }
        ;
    }

    private function _bY(_arg1:XML):void {
        var _local2:String = _arg1.AnimatedTexture.File;
        var _local3:int = _arg1.AnimatedTexture.Index;
        var _local4:_1GP = new _1GP();
        _local4.id = _arg1.@type;
        _local4.name = _arg1.DisplayId;
        _local4.unlockLevel = _arg1.UnlockLevel;
        if (_arg1.hasOwnProperty("NoSkinSelect")) {
            _local4._1cQ = false;
        }
        ;
        if (_arg1.hasOwnProperty("UnlockSpecial")) {
            _local4._1Ux = _arg1.UnlockSpecial;
        }
        ;
        _local4._164 = new _1ZZ(_local2, _local3);
        var _local5:_E0 = this.model._Sb(_arg1.PlayerClassType);
        _local5._0fJ._0Uf(_local4);
    }


}
}//package _1q1

