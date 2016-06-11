// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bZ._WL

package _bZ {
import _UB.*;

import flash.display.DisplayObject;
import flash.utils.Dictionary;

public class _WL implements _1UH {

    private const _1Yr:Array = [];

    public function _WL(_arg1:_0fY):void {
        this._0ki = new Dictionary(true);
        super();
        this._factory = _arg1;
    }
    private var _0ki:Dictionary;
    private var _factory:_0fY;

    public function _de(_arg1:_hG):void {
        var _local2:int = this._1Yr.indexOf(_arg1);
        if (_local2 > -1) {
            return;
        }
        ;
        this._1Yr.push(_arg1);
        this._0bx();
    }

    public function _1G4(_arg1:_hG):void {
        var _local2:int = this._1Yr.indexOf(_arg1);
        if (_local2 == -1) {
            return;
        }
        ;
        this._1Yr.splice(_local2, 1);
        this._0bx();
    }

    public function _1ao(_arg1:DisplayObject, _arg2:Class):void {
        var _local3:Array = this._0hF(_arg1, _arg2);
        if (_local3) {
            this._factory._ux(_arg1, _arg2, _local3);
        }
        ;
    }

    public function _px(_arg1:Object, _arg2:Class):void {
        var _local3:Array = this._0hF(_arg1, _arg2);
        if (_local3) {
            this._factory._ux(_arg1, _arg2, _local3);
        }
        ;
    }

    private function _0bx():void {
        this._0ki = new Dictionary(true);
    }

    private function _0hF(_arg1:Object, _arg2:Class):Array {
        var _local3:_hG;
        if (this._0ki[_arg2] === false) {
            return (null);
        }
        ;
        if (this._0ki[_arg2] == undefined) {
            this._0ki[_arg2] = false;
            for each (_local3 in this._1Yr) {
                _local3._1g1();
                if (_local3._0ON.matches(_arg1)) {
                    this._0ki[_arg2] = ((this._0ki[_arg2]) || ([]));
                    this._0ki[_arg2].push(_local3);
                }
                ;
            }
            ;
            if (this._0ki[_arg2] === false) {
                return (null);
            }
            ;
        }
        ;
        return ((this._0ki[_arg2] as Array));
    }


}
}//package _bZ

