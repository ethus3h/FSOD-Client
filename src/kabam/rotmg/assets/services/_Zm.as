// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.assets.services._Zm

package kabam.rotmg.assets.services {
import _Jm._0R9;

import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;
import com.company.util.BitmapUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;

public class _Zm {


    public static function makeCoin():BitmapData {
        var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary._Rb("lofiObj3", 225), null, 40, true, 0, 0);
        return (_1Ht(_local1));
    }

    public static function _009():BitmapData {
        var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary._Rb("lofiCharBig", 32), null, 20, true, 0, 0);
        return (_1Ht(_local1));
    }

    public static function _00Y():BitmapData {
        var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary._Rb("lofiObj3", 224), null, 40, true, 0, 0);
        return (_1Ht(_local1));
    }

    public static function _0AA():BitmapData {
        var _local1:BitmapData = TextureRedrawer.resize(AssetLibrary._Rb("lofiObj3", 226), null, 40, true, 0, 0);
        return (_1Ht(_local1));
    }

    private static function _1Ht(_arg1:BitmapData):BitmapData {
        _arg1 = _0R9._ud(_arg1, 0xFFFFFFFF);
        _arg1 = BitmapUtil._6L(_arg1, 10, 10, (_arg1.width - 20), (_arg1.height - 20));
        return (_arg1);
    }


    public function _0Hz(_arg1:int):Bitmap {
        var _local2:BitmapData = AssetLibrary._Rb("lofiInterfaceBig", _arg1);
        _local2 = TextureRedrawer.redraw(_local2, (320 / _local2.width), true, 0);
        return (new Bitmap(_local2));
    }


}
}//package kabam.rotmg.assets.services

