// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1L3._1FO

package _1L3 {
import _1Sm._sy;

import _Jm._0R9;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0pu;
import com.company.assembleegameclient.util._0zq;

import flash.display.Bitmap;
import flash.display.BitmapData;

public class _1FO {

    public const _1an:_sy = new _sy();

    public static function clone(_arg1:_1FO):_1FO {
        var _local2:_1FO = new _1FO(_arg1.id);
        return (_local2);
    }

    private static function _0gv(_arg1:int):String {
        return (ObjectLibrary._0SR(_arg1).Description);
    }

    private static function _NG(_arg1:int):String {
        return (ObjectLibrary._0SR(_arg1).DisplayId);
    }

    public function _1FO(_arg1:int = undefined) {
        this._1mo = [new _1Xt(), new _1Xt(), new _1Xt()];
        super();
        this.id = _arg1;
        this._Wj = <data/>
        ;
        this._2r();
    }
    public var _1mo:Array;
    private var _Wj:XML;
    private var id:int;
    private var type:int;
    private var rarity:String;
    private var name:String;
    private var _0l1:int;
    private var skinID:int;
    private var skin:_0zq;

    public function _0AB():Boolean {
        var _local2:_1Xt;
        var _local1:int;
        for each (_local2 in this._1mo) {
            if (_local2.level == 100) {
                _local1++;
            }
            ;
        }
        ;
        return ((_local1 == this._1mo.length));
    }

    public function apply(_arg1:XML):void {
        this._0Ni(_arg1);
        this._0y0(_arg1);
    }

    public function _0y0(_arg1:XML):void {
        var _local2:uint;
        var _local4:_1Xt;
        var _local5:int;
        var _local3:uint = this._1mo.length;
        _local2 = 0;
        while (_local2 < _local3) {
            _local4 = this._1mo[_local2];
            _local5 = _arg1.Abilities.Ability[_local2].@type;
            _local4.name = _NG(_local5);
            _local4.description = _0gv(_local5);
            _local4.level = _arg1.Abilities.Ability[_local2].@power;
            _local4.points = _arg1.Abilities.Ability[_local2].@points;
            _local2++;
        }
        ;
    }

    public function _N6():String {
        return (this._Wj.Family);
    }

    public function setID(_arg1:int):void {
        this.id = _arg1;
    }

    public function _4E():int {
        return (this.id);
    }

    public function setType(_arg1:int):void {
        this.type = _arg1;
        this._Wj = ObjectLibrary._18H[this.type];
    }

    public function getType():int {
        return (this.type);
    }

    public function _0eM(_arg1:uint):void {
        this.rarity = _tM._1rX(_arg1).value;
        this._0Cc(_arg1);
        this._1an.dispatch();
    }

    public function _07I():String {
        return (this.rarity);
    }

    public function setName(_arg1:String):void {
        this.name = _arg1;
        this._1an.dispatch();
    }

    public function getName():String {
        return (this.name);
    }

    public function _0px(_arg1:int):void {
        this._0l1 = _arg1;
        this._1an.dispatch();
    }

    public function _1oB():int {
        return (this._0l1);
    }

    public function _0J7(_arg1:int):void {
        this.skinID = _arg1;
        this._1an.dispatch();
    }

    public function _0CO():int {
        return (this.skinID);
    }

    public function _1PW():Bitmap {
        this._oF();
        var _local1:_0T2 = this.skin.imageFromAngle(0, _0zq._c0, 0);
        var _local2:int = (((this.rarity == _tM._1dK.value)) ? 40 : 80);
        var _local3:BitmapData = TextureRedrawer.resize(_local1.image_, _local1.mask_, _local2, true, 0, 0);
        _local3 = _0R9._ud(_local3, 0);
        return (new Bitmap(_local3));
    }

    public function _Fn():_0T2 {
        this._oF();
        return (((this.skin) ? this.skin.imageFromAngle(0, _0zq._c0, 0) : null));
    }

    private function _2r():void {
        var _local1:_1Xt;
        for each (_local1 in this._1mo) {
            _local1._1an.add(this._1J8);
        }
        ;
    }

    private function _1J8(_arg1:_1Xt):void {
        this._1an.dispatch();
    }

    private function _0Ni(_arg1:XML):void {
        ((_arg1.@type) && (this.setType(_arg1.@type)));
        ((_arg1.@name) && (this.setName(_arg1.@name)));
        ((_arg1.@skin) && (this._0J7(_arg1.@skin)));
        ((_arg1.@rarity) && (this._0eM(_arg1.@rarity)));
    }

    private function _0Cc(_arg1:uint):void {
        this._1mo[0].setUnlocked(true);
        this._1mo[1].setUnlocked((_arg1 >= _tM._0hZ._25));
        this._1mo[2].setUnlocked((_arg1 >= _tM._0r._25));
    }

    private function _oF():void {
        var _local1:XML = ObjectLibrary._22(ObjectLibrary._4C(this.skinID));
        var _local2:String = _local1.AnimatedTexture.File;
        var _local3:int = _local1.AnimatedTexture.Index;
        this.skin = _0pu._1Iw(_local2, _local3);
    }


}
}//package _1L3

