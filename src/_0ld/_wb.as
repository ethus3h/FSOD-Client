// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._wb

package _0ld {
import _0Sj._1vA;

import _1L3._1FO;

import flash.display.Sprite;

public class _wb extends Sprite implements _04p {

    public static const _7v:String = "topLeft";
    public static const _0Rb:String = "topRight";
    public static const _0aC:String = "bottomRight";
    public static const _1R8:String = "bottomLeft";
    public static const _1PU:String = "regular";
    private static const _0yA:Array = [_7v, _0Rb, _0aC, _1R8];

    public function _wb() {
        this._00b = new _tF();
        super();
    }
    public var _00b:_tF;
    private var _1Wh:_1vA;
    private var background:String;
    private var size:int;
    private var _1C4:_1lQ;

    public function _Nv(_arg1:_1vA):void {
        this._1Wh = _arg1;
        addChild(_arg1);
    }

    public function disable():void {
        this._1Wh.disable();
    }

    public function isEnabled():Boolean {
        return (this._1Wh.isEnabled());
    }

    public function setSize(_arg1:int):void {
        this.size = _arg1;
    }

    public function _yI(_arg1:String):void {
        this.background = _arg1;
        if (this._1C4) {
            removeChild(this._1C4);
        }
        ;
        this._1C4 = _1lQ(this._00b.create(this.size, this._01o()));
        addChildAt(this._1C4, 0);
    }

    public function _05z():String {
        return (this.background);
    }

    public function getPetVO():_1FO {
        return (this._1Wh.getPetVO());
    }

    private function _01o():Array {
        var _local1:Array = [0, 0, 0, 0];
        if (this.background != _1PU) {
            _local1[_0yA.indexOf(this.background)] = 1;
        }
        ;
        return (_local1);
    }


}
}//package _0ld

