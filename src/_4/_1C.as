// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_4-._1-C

package _4 {
import _20I._13Z;
import _20I._1GP;

import _n._19y;

import com.company.assembleegameclient.util.Currency;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;

import kabam.rotmg.assets.services._1Ns;

public class _1C {

    [Inject]
    public var characters:_1Ns;


    public function make(_arg1:_13Z):Vector.<DisplayObject> {
        var _local2:Vector.<_1GP>;
        var _local3:int;
        _local2 = _arg1._Tr();
        _local3 = _local2.length;
        var _local4:Vector.<DisplayObject> = new Vector.<DisplayObject>(_local3, true);
        var _local5:int;
        while (_local5 < _local3) {
            _local4[_local5] = this._N1(_local2[_local5]);
            _local5++;
        }
        ;
        return (_local4);
    }

    private function _N1(_arg1:_1GP):CharacterSkinListItem {
        var _local2:CharacterSkinListItem = new CharacterSkinListItem();
        _local2._0J7(this.makeIcon(_arg1));
        _local2._1h8(_arg1);
        _local2._1ME(AssetLibrary._Rb("lofiInterface2", 5));
        _local2._Ui(this._0hq());
        return (_local2);
    }

    private function _0hq():_19y {
        return (new _19y("", 16, 0, Currency._1mE));
    }

    private function makeIcon(_arg1:_1GP):Bitmap {
        var _local2:BitmapData = this.characters.makeIcon(_arg1._164);
        return (new Bitmap(_local2));
    }


}
}//package _4-

