// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_QC._0Ew

package _QC {
import _0EN._0u4;

import _1Sm._sy;

public class _0Ew {

    public static var _05m:Boolean = false;

    public function _0Ew() {
        this._RV = new _sy();
        super();
    }
    public var _RV:_sy;
    private var fortune:_0u4;
    private var initialized:Boolean = false;
    private var _0rc:Boolean = false;

    public function get isNew():Boolean {
        return (this._0rc);
    }

    public function set isNew(_arg1:Boolean):void {
        this._0rc = _arg1;
    }

    public function getFortune():_0u4 {
        return (this.fortune);
    }

    public function _1UN(_arg1:_0u4):void {
        this.fortune = _arg1;
        this.initialized = true;
        _05m = true;
        this._RV.dispatch();
    }

    public function _0C():Boolean {
        return (this.initialized);
    }

    public function _cH(_arg1:Boolean):void {
        this.initialized = _arg1;
    }


}
}//package _QC

