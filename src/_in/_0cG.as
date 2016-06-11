// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//in ._0cG

package _in {
import _1T._0mR;
import _1T._10Q;
import _1T._fv;

import _u5._1kJ;
import _u5._AK;

public class _0cG {

    public static const _Vu:Boolean = true;
    public static const _0w9:Boolean = false;

    private static var _a9:_0cG;

    public static function getInstance():_0cG {
        if (_a9 == null) {
            _a9 = new _0cG("yoThisIsInternal");
        }
        ;
        return (_a9);
    }

    public function _0cG(_arg1:String = "") {
        if (_arg1 != "yoThisIsInternal") {
            throw (new Error("Program3DFactory is a singleton. Use Program3DFactory.getInstance()"));
        }
        ;
    }
    private var _1EM:_AK;
    private var _Lw:_AK;

    public function dispose():void {
        if (this._1EM != null) {
            this._1EM._W0().dispose();
        }
        ;
        if (this._Lw != null) {
            this._Lw._W0().dispose();
        }
        ;
        _a9 = null;
    }

    public function _07y(_arg1:_1kJ, _arg2:Boolean):_AK {
        var _local3:_AK;
        switch (_arg2) {
            case _Vu:
                if (this._1EM == null) {
                    this._1EM = _arg1.createProgram();
                    this._1EM.upload(new _fv().getVertexProgram(), new _0mR().getVertexProgram());
                }
                ;
                _local3 = this._1EM;
                break;
            case _0w9:
                if (this._Lw == null) {
                    this._Lw = _arg1.createProgram();
                    this._Lw.upload(new _fv().getVertexProgram(), new _10Q().getVertexProgram());
                }
                ;
                _local3 = this._Lw;
                break;
            default:
                if (this._1EM == null) {
                    this._1EM = _arg1.createProgram();
                    this._1EM.upload(new _fv().getVertexProgram(), new _0mR().getVertexProgram());
                }
                ;
                _local3 = this._1EM;
        }
        ;
        return (_local3);
    }


}
}//package in 

