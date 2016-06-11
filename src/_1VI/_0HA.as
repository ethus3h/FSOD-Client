// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1VI._0HA

package _1VI {
import flash.display3D.Context3D;
import flash.display3D.VertexBuffer3D;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

public class _0HA {

    public function _0HA() {
        this._1KK = new Vector.<_20t>();
        this._sH = new Dictionary();
        this._0Gl = new Vector.<Number>();
    }
    public var name:String;
    public var _1KK:Vector.<_20t>;
    public var _Zr:VertexBuffer3D;
    protected var _sH:Dictionary;
    protected var _SL:uint;
    protected var _1zi:Dictionary;
    protected var _0Gl:Vector.<Number>;

    public function dispose():void {
        var _local1:_20t;
        for each (_local1 in this._1KK) {
            _local1.dispose();
        }
        ;
        this._1KK.length = 0;
        if (this._Zr !== null) {
            this._Zr.dispose();
            this._Zr = null;
        }
        ;
        this._0Gl.length = 0;
        this._SL = 0;
        this._1zi = new Dictionary();
    }

    public function _ej(_arg1:Context3D):void {
        var _local2:_20t;
        for each (_local2 in this._1KK) {
            if (_local2._1fi.length > 0) {
                _local2._1jc = _arg1.createIndexBuffer(_local2._1fi.length);
                _local2._1jc.uploadFromVector(_local2._1fi, 0, _local2._1fi.length);
                _local2._0Q5 = null;
            }
            ;
        }
        ;
        this._Zr = _arg1.createVertexBuffer((this._0Gl.length / 8), 8);
        this._Zr.uploadFromVector(this._0Gl, 0, (this._0Gl.length / 8));
    }

    public function readBytes(_arg1:ByteArray):void {
        var _local2:Vector.<String>;
        var _local3:_20t;
        var _local10:String;
        var _local11:Array;
        var _local12:String;
        var _local13:int;
        var _local14:int;
        this.dispose();
        var _local4 = "";
        var _local5:Vector.<Number> = new Vector.<Number>();
        var _local6:Vector.<Number> = new Vector.<Number>();
        var _local7:Vector.<Number> = new Vector.<Number>();
        _arg1.position = 0;
        var _local8:String = _arg1.readUTFBytes(_arg1.bytesAvailable);
        var _local9:Array = _local8.split(/[\r\n]+/);
        for each (_local10 in _local9) {
            _local10 = _local10.replace(/^\s*|\s*$/g, "");
            if (!(((_local10 == "")) || ((_local10.charAt(0) === "#")))) {
                _local11 = _local10.split(/\s+/);
                switch (_local11[0].toLowerCase()) {
                    case "v":
                        _local5.push(parseFloat(_local11[1]), parseFloat(_local11[2]), parseFloat(_local11[3]));
                        break;
                    case "vn":
                        _local6.push(parseFloat(_local11[1]), parseFloat(_local11[2]), parseFloat(_local11[3]));
                        break;
                    case "vt":
                        _local7.push(parseFloat(_local11[1]), (1 - parseFloat(_local11[2])));
                        break;
                    case "f":
                        _local2 = new Vector.<String>();
                        for each (_local12 in _local11.slice(1)) {
                            _local2.push(_local12);
                        }
                        ;
                        if (_local3 === null) {
                            _local3 = new _20t(null, _local4);
                            this._1KK.push(_local3);
                        }
                        ;
                        _local3._0Q5.push(_local2);
                        break;
                    case "g":
                        _local3 = new _20t(_local11[1], _local4);
                        this._1KK.push(_local3);
                        break;
                    case "o":
                        this.name = _local11[1];
                        break;
                    case "mtllib":
                        break;
                    case "usemtl":
                        _local4 = _local11[1];
                        if (_local3 !== null) {
                            _local3._IQ = _local4;
                        }
                        ;
                        break;
                }
                ;
            }
            ;
        }
        ;
        for each (_local3 in this._1KK) {
            _local3._1fi.length = 0;
            for each (_local2 in _local3._0Q5) {
                _local13 = (_local2.length - 1);
                _local14 = 1;
                while (_local14 < _local13) {
                    _local3._1fi.push(this._Qt(_local2[_local14], _local5, _local6, _local7));
                    _local3._1fi.push(this._Qt(_local2[0], _local5, _local6, _local7));
                    _local3._1fi.push(this._Qt(_local2[(_local14 + 1)], _local5, _local6, _local7));
                    _local14++;
                }
                ;
            }
            ;
            _local3._0Q5 = null;
        }
        ;
        this._SL = 0;
        this._1zi = null;
    }

    protected function _Qt(_arg1:String, _arg2:Vector.<Number>, _arg3:Vector.<Number>, _arg4:Vector.<Number>):uint {
        var _local5:Array;
        var _local6:uint;
        if (this._1zi[_arg1] !== undefined) {
            return (this._1zi[_arg1]);
        }
        ;
        _local5 = _arg1.split("/");
        _local6 = (parseInt(_local5[0], 10) - 1);
        this._0Gl.push(_arg2[((_local6 * 3) + 0)], _arg2[((_local6 * 3) + 1)], _arg2[((_local6 * 3) + 2)]);
        if ((((_local5.length > 2)) && ((_local5[2].length > 0)))) {
            _local6 = (parseInt(_local5[2], 10) - 1);
            this._0Gl.push(_arg3[((_local6 * 3) + 0)], _arg3[((_local6 * 3) + 1)], _arg3[((_local6 * 3) + 2)]);
        } else {
            this._0Gl.push(0, 0, 0);
        }
        ;
        if ((((_local5.length > 1)) && ((_local5[1].length > 0)))) {
            _local6 = (parseInt(_local5[1], 10) - 1);
            this._0Gl.push(_arg4[((_local6 * 2) + 0)], _arg4[((_local6 * 2) + 1)]);
        } else {
            this._0Gl.push(0, 0);
        }
        ;
        return ((this._1zi[_arg1] = this._SL++));
    }


}
}//package _1VI

