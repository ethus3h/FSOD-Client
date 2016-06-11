// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine._0Bk

package com.company.assembleegameclient.appengine {
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.BitmapData;

public class _0Bk {

    private static const FAME:String = "fame";

    private static function _0tH():BitmapData {
        var _local1:BitmapData = AssetLibrary._Rb("lofiInterface2", 4);
        return (TextureRedrawer.redraw(_local1, 80, true, 0));
    }

    private static function _Rm():BitmapData {
        var _local1:BitmapData = AssetLibrary._Rb("lofiObj3", 224);
        return (TextureRedrawer.redraw(_local1, 80, true, 0));
    }

    public function _0Bk(_arg1:String, _arg2:String, _arg3:String, _arg4:String, _arg5:int) {
        this._0Qc = _arg1;
        this._ZE = _arg2;
        this._0w0 = _arg3;
        this._13B = _arg4;
        this._0lN = _arg5;
    }
    public var _ZE:String;
    public var _0w0:String;
    public var _13B:String;
    public var _0lN:int;
    private var _0Qc:String;

    public function getIcon():BitmapData {
        return ((((this._0Qc == FAME)) ? _Rm() : _0tH()));
    }

    public function _1Xw():Boolean {
        return ((this._0Qc == FAME));
    }


}
}//package com.company.assembleegameclient.appengine

