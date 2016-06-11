// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld.PetPicker

package _0ld {
import _1L3._1FO;

import _1Sm._sy;

import flash.display.DisplayObject;
import flash.events.MouseEvent;

public class PetPicker extends _0GU implements _0jp {

    private static function _0fS(_arg1:_wb, _arg2:_wb):int {
        var _local3:int = _arg1.getPetVO()._1mo[0].points;
        var _local4:int = _arg2.getPetVO()._1mo[0].points;
        return ((_local4 - _local3));
    }

    public function PetPicker() {
        this._1dM = new _83();
        super();
    }
    [Inject]
    public var _BY:_1r;
    public var _1dM:_sy;
    private var _3X:Vector.<_wb>;
    private var _0Kx:int;

    public function _08H(_arg1:Vector.<_1FO>):void {
        this._1Vx(_arg1);
        this._0u7();
        this._wW();
    }

    public function _1mY(_arg1:int):void {
        this._0Kx = _arg1;
    }

    public function _qU():Vector.<_wb> {
        return (this._3X);
    }

    public function _1a8(_arg1:int):_wb {
        return (this._3X[_arg1]);
    }

    public function _3B(_arg1:_1FO):void {
        var _local3:_1FO;
        var _local2:int;
        while (_local2 < this._3X.length) {
            _local3 = this._3X[_local2].getPetVO();
            if (!this._1w6(_arg1, _local3)) {
                this._3X[_local2].disable();
            }
            ;
            _local2++;
        }
        ;
    }

    public function _1ch(_arg1:_1FO):void {
        var _local3:_1FO;
        var _local2:int;
        while (_local2 < this._3X.length) {
            _local3 = this._3X[_local2].getPetVO();
            if (_local3._4E() == _arg1._4E()) {
                this._3X[_local2].disable();
            }
            ;
            _local2++;
        }
        ;
    }

    private function _0u7():void {
        var _local2:Object;
        var _local1:Array = [];
        for each (_local2 in this._3X) {
            _local1.push(_local2);
        }
        ;
        setItems(_local1);
    }

    private function _1Vx(_arg1:Vector.<_1FO>):void {
        var _local2:_1FO;
        this._3X = new Vector.<_wb>();
        for each (_local2 in _arg1) {
            this._0CB(_local2);
        }
        ;
        this._3X.sort(_0fS);
    }

    private function _wW():void {
        this._1m1(_QH(), _wb._7v);
        this._1m1(_0vl(), _wb._0Rb);
        this._1m1(_1M0(), _wb._1R8);
        this._1m1(_pJ(), _wb._0aC);
    }

    private function _1m1(_arg1:DisplayObject, _arg2:String):void {
        if (_arg1) {
            _wb(_arg1)._yI(_arg2);
        }
        ;
    }

    private function _1w6(_arg1:_1FO, _arg2:_1FO):Boolean {
        return ((((_arg1._N6() == _arg2._N6())) && ((_arg1._07I() == _arg2._07I()))));
    }

    private function _0CB(_arg1:_1FO):void {
        var pet:_04p;
        var pet_clickHandler:Function;
        var petVO:_1FO = _arg1;
        pet_clickHandler = function (_arg1:MouseEvent):void {
            if (pet.isEnabled()) {
                _1dM.dispatch(petVO);
            }
            ;
        };
        pet = this._BY.create(petVO, this._0Kx);
        this._3X.push(pet);
        pet.addEventListener(MouseEvent.CLICK, pet_clickHandler);
    }


}
}//package _0ld

