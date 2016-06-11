// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._1vA

package _0Sj {
import _0ld.*;

import _1L3._1FO;

import _1i0._1PV;
import _1i0._GV;

import _1s5.*;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.Event;
import flash.geom.ColorTransform;

public class _1vA extends Sprite implements _1q5, _04p {

    public static const _Vr:uint = 0x292929;

    public function _1vA(_arg1:_1FO) {
        this._8c = new _1Ud();
        super();
        this.petVO = _arg1;
        this._8c._0qm(this);
        this._8c.tooltip = new _Q7(_arg1);
    }
    public var _8c:_1Ud;
    private var _0tD:Bitmap;
    private var enabled:Boolean = true;
    private var petVO:_1FO;

    public function disable():void {
        var _local1:ColorTransform = new ColorTransform();
        _local1.color = _Vr;
        this._0tD.transform.colorTransform = _local1;
        this.enabled = false;
    }

    public function isEnabled():Boolean {
        return (this.enabled);
    }

    public function _1Zj(_arg1:Bitmap):void {
        this._0tD = _arg1;
        addChild(_arg1);
    }

    public function _1Tg(_arg1:_1PV):void {
        this._8c._1Tg(_arg1);
    }

    public function _1ml():_1PV {
        return (this._8c._1ml());
    }

    public function _Md(_arg1:_GV):void {
        this._8c._Md(_arg1);
    }

    public function _0ec():_GV {
        return (this._8c._0ec());
    }

    public function getPetVO():_1FO {
        return (this.petVO);
    }

    override public function dispatchEvent(_arg1:Event):Boolean {
        if (this.enabled) {
            return (super.dispatchEvent(_arg1));
        }
        ;
        return (false);
    }


}
}//package _0Sj

