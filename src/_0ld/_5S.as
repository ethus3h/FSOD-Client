// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._5S

package _0ld {
import _1L3._IG;

import _Jm._0R9;

import __Nj._0ay;

import _r7._17v;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0pu;
import com.company.assembleegameclient.util._0zq;

import flash.display.Bitmap;
import flash.display.BitmapData;

public class _5S extends _17v {

    [Inject]
    public var view:_1EE;
    [Inject]
    public var _e2:_IG;
    [Inject]
    public var _00G:_0ay;


    override public function initialize():void {
        var _local1:Bitmap = this._q8();
        this.view.init(_local1);
        this.view.closed.add(this._0zc);
    }

    private function _0zc():void {
        this._00G.dispatch();
    }

    private function _q8():Bitmap {
        var _local1:String = ObjectLibrary._4C(this.view.skinType);
        var _local2:XML = ObjectLibrary._22(_local1);
        var _local3:String = _local2.AnimatedTexture.File;
        var _local4:int = _local2.AnimatedTexture.Index;
        var _local5:_0zq = _0pu._1Iw(_local3, _local4);
        var _local6:_0T2 = _local5.imageFromAngle(0, _0zq._c0, 0);
        var _local7:BitmapData = TextureRedrawer.resize(_local6.image_, _local6.mask_, 160, true, 0, 0);
        _local7 = _0R9._ud(_local7, 0, 6);
        return (new Bitmap(_local7));
    }


}
}//package _0ld

