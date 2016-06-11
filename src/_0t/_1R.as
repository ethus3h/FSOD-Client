// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._1R-

package _0t {
import _0CT._8w;

import _0tk._1L4;
import _0tk._1k5;
import _0tk._1tn;

import _1JR.Stats;

import _1Kr._1E8;

import _SW._1z5;

import _U1._Y5;

import _ij._0C4;

import com.company.assembleegameclient.map._0Y2;
import com.company.assembleegameclient.map._0d7;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.util.IntPoint;
import com.company.util._dT;
import com.hurlant.util.Base64;

import flash.display.Sprite;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.geom.Rectangle;
import flash.net.FileFilter;
import flash.net.FileReference;
import flash.utils.ByteArray;

public class _1R extends Sprite {

    private static const _1ah:int = ((600 - _19w._5s) - 10);//78
    public static const _0Lc:Stats = new Stats();

    public function _1R() {
        addChild(new _1E8());
        addChild(new _Y5());
        this._fR = _8w._1Sz().getInstance(_1z5);
        this._1xT = new _1ew();
        this._1xT.x = 15;
        this._1xT.y = (_1ah - 30);
        this._1xT.addEventListener(_1k5.UNDO_COMMAND_EVENT, this._1vI);
        this._1xT.addEventListener(_1k5.REDO_COMMAND_EVENT, this._0ZO);
        this._1xT.addEventListener(_1k5.CLEAR_COMMAND_EVENT, this._1tF);
        this._1xT.addEventListener(_1k5.LOAD_COMMAND_EVENT, this._093);
        this._1xT.addEventListener(_1k5.SAVE_COMMAND_EVENT, this._in);
        this._1xT.addEventListener(_1k5.TEST_COMMAND_EVENT, this._TE);
        this._1xT.addEventListener(_1k5.SELECT_COMMAND_EVENT, this._00);
        addChild(this._1xT);
        this._0JQ = new _1L4();
        this._12i = new _19w();
        this._12i.addEventListener(_7I.TILES_EVENT, this._0L9);
        this._12i.x = ((800 / 2) - (_19w._5s / 2));
        this._12i.y = _1ah;
        addChild(this._12i);
        this._0cF = new _1fH(this._12i);
        this._0cF.x = 4;
        this._0cF.y = ((600 - _1fH.HEIGHT) - 10);
        addChild(this._0cF);
        this._1nQ = new _0C4(new <String>["Ground", "Objects", "Regions"], _0B5.WIDTH, 26);
        this._1nQ.x = ((this._12i.x + _19w._5s) + 4);
        this._1nQ.y = _1ah;
        this._1nQ.addEventListener(Event.CHANGE, this._0mL);
        addChild(this._1nQ);
        this._0Sb = new _J7();
        this._0Sb.x = this._1nQ.x;
        this._0Sb.y = ((this._1nQ.y + this._1nQ.height) + 4);
        this._ey = this._0Sb;
        addChild(this._0Sb);
        this._0gW = new _1MJ();
        this._0gW.x = this._1nQ.x;
        this._0gW.y = ((this._1nQ.y + this._1nQ.height) + 4);
        this._12U = new _1G();
        this._12U.x = this._1nQ.x;
        this._12U.y = ((this._1nQ.y + this._1nQ.height) + 4);
    }
    public var _1xT:_1ew;
    public var _12i:_19w;
    public var _0cF:_1fH;
    public var _1nQ:_0C4;
    public var _0Sb:_J7;
    public var _0gW:_1MJ;
    public var _12U:_1G;
    public var _ey:_0B5;
    public var filename_:String = null;
    private var _0JQ:_1L4;
    private var _fR:_1z5;
    private var _0iJ:Vector.<_Kr>;
    private var _dx:FileReference = null;

    private function _1EV(_arg1:Vector.<IntPoint>, _arg2:int, _arg3:int):void {
        var _local5:IntPoint;
        var _local6:int;
        var _local4:_1tn = new _1tn();
        for each (_local5 in _arg1) {
            _local6 = this._12i.getType(_local5.x_, _local5.y_, _arg2);
            if (_local6 == _arg3) {
            } else {
                _local4._33(new _03a(this._12i, _local5.x_, _local5.y_, _arg2, _local6, _arg3));
            }
            ;
        }
        ;
        if (_local4._02M()) {
            return;
        }
        ;
        this._0JQ._04f(_local4);
    }

    private function _0o(_arg1:Vector.<IntPoint>, _arg2:Vector.<_Kr>):void {
        var _local5:IntPoint;
        var _local6:_Kr;
        var _local3:_1tn = new _1tn();
        var _local4:int;
        for each (_local5 in _arg1) {
            if (_local4 >= _arg2.length) break;
            _local6 = this._12i._1s0(_local5.x_, _local5.y_);
            _local3._33(new _074(this._12i, _local5.x_, _local5.y_, _local6, _arg2[_local4]));
            _local4++;
        }
        ;
        if (_local3._02M()) {
            return;
        }
        ;
        this._0JQ._04f(_local3);
    }

    private function _1Sk(_arg1:Vector.<IntPoint>, _arg2:String):void {
        var _local4:IntPoint;
        var _local5:String;
        var _local3:_1tn = new _1tn();
        for each (_local4 in _arg1) {
            _local5 = this._12i._0vX(_local4.x_, _local4.y_);
            if (_local5 == _arg2) {
            } else {
                _local3._33(new _1J1(this._12i, _local4.x_, _local4.y_, _local5, _arg2));
            }
            ;
        }
        ;
        if (_local3._02M()) {
            return;
        }
        ;
        this._0JQ._04f(_local3);
    }

    private function _0dK():String {
        var _local7:int;
        var _local8:_Kr;
        var _local9:Object;
        var _local10:String;
        var _local11:int;
        var _local1:Rectangle = this._12i._Dt();
        if (_local1 == null) {
            return (null);
        }
        ;
        var _local2:Object = {};
        _local2["width"] = int(_local1.width);
        _local2["height"] = int(_local1.height);
        var _local3:Object = {};
        var _local4:Array = [];
        var _local5:ByteArray = new ByteArray();
        var _local6:int = _local1.y;
        while (_local6 < _local1.bottom) {
            _local7 = _local1.x;
            while (_local7 < _local1.right) {
                _local8 = this._12i._1s0(_local7, _local6);
                _local9 = this._1fU(_local8);
                _local10 = this._fR.stringify(_local9);
                if (!_local3.hasOwnProperty(_local10)) {
                    _local11 = _local4.length;
                    _local3[_local10] = _local11;
                    _local4.push(_local9);
                } else {
                    _local11 = _local3[_local10];
                }
                ;
                _local5.writeShort(_local11);
                _local7++;
            }
            ;
            _local6++;
        }
        ;
        _local2["dict"] = _local4;
        _local5.compress();
        _local2["data"] = Base64.encodeByteArray(_local5);
        return (this._fR.stringify(_local2));
    }

    private function _1fU(_arg1:_Kr):Object {
        var _local3:Vector.<int>;
        var _local4:String;
        var _local5:Object;
        var _local2:Object = {};
        if (_arg1 != null) {
            _local3 = _arg1._W;
            if (_local3[_0J9._0Xy] != -1) {
                _local4 = _0d7._4C(_local3[_0J9._0Xy]);
                _local2["ground"] = _local4;
            }
            ;
            if (_local3[_0J9._46] != -1) {
                _local4 = ObjectLibrary._4C(_local3[_0J9._46]);
                _local5 = {id: _local4};
                if (_arg1._1KD != null) {
                    _local5["name"] = _arg1._1KD;
                }
                ;
                _local2["objs"] = [_local5];
            }
            ;
            if (_local3[_0J9._ik] != -1) {
                _local4 = _0Y2._4C(_local3[_0J9._ik]);
                _local2["regions"] = [{id: _local4}];
            }
            ;
        }
        ;
        return (_local2);
    }

    private function _0L9(_arg1:_7I):void {
        var _local2:IntPoint;
        var _local3:_Kr;
        var _local4:int;
        var _local5:String;
        var _local6:_0Sp;
        var _local7:Vector.<_Kr>;
        _local2 = _arg1.tiles_[0];
        switch (this._1xT._08b()) {
            case _1ew._0AZ:
                this._1EV(_arg1.tiles_, this._ey._0lf, this._ey._15R());
                break;
            case _1ew._f1:
                this._1EV(_arg1.tiles_, this._ey._0lf, -1);
                break;
            case _1ew._01t:
                _local4 = this._12i.getType(_local2.x_, _local2.y_, this._ey._0lf);
                if (_local4 == -1) {
                    return;
                }
                ;
                this._ey._1Yy(_local4);
                this._1xT._0ao(_1ew._0AZ);
                break;
            case _1ew._1lh:
                _local5 = this._12i._0vX(_local2.x_, _local2.y_);
                _local6 = new _0Sp(_arg1.tiles_, _local5);
                _local6.addEventListener(Event.COMPLETE, this._1WJ);
                addChild(_local6);
                break;
            case _1ew._X5:
                this._0iJ = new Vector.<_Kr>();
                _local7 = new Vector.<_Kr>();
                for each (_local2 in _arg1.tiles_) {
                    _local3 = this._12i._1s0(_local2.x_, _local2.y_);
                    if (_local3 != null) {
                        _local3 = _local3.clone();
                    }
                    ;
                    this._0iJ.push(_local3);
                    _local7.push(null);
                }
                ;
                this._0o(_arg1.tiles_, _local7);
                this._12i._0i6();
                this._1xT._0ao(_1ew._0t4);
                break;
            case _1ew._1yX:
                this._0iJ = new Vector.<_Kr>();
                for each (_local2 in _arg1.tiles_) {
                    _local3 = this._12i._1s0(_local2.x_, _local2.y_);
                    if (_local3 != null) {
                        _local3 = _local3.clone();
                    }
                    ;
                    this._0iJ.push(_local3);
                }
                ;
                this._12i._0i6();
                this._1xT._0ao(_1ew._0t4);
                break;
            case _1ew._0t4:
                this._0o(_arg1.tiles_, this._0iJ);
                break;
        }
        ;
        this._12i.draw();
    }

    private function _1WJ(_arg1:Event):void {
        var _local2:_0Sp = (_arg1.currentTarget as _0Sp);
        this._1Sk(_local2.tiles_, _local2._0vX());
    }

    private function _0mL(_arg1:Event):void {
        switch (this._1nQ.getValue()) {
            case "Ground":
                _dT._1gf(this, this._0Sb);
                _dT._vn(this, this._0gW);
                _dT._vn(this, this._12U);
                this._ey = this._0Sb;
                return;
            case "Objects":
                _dT._vn(this, this._0Sb);
                _dT._1gf(this, this._0gW);
                _dT._vn(this, this._12U);
                this._ey = this._0gW;
                return;
            case "Regions":
                _dT._vn(this, this._0Sb);
                _dT._vn(this, this._0gW);
                _dT._1gf(this, this._12U);
                this._ey = this._12U;
                return;
        }
        ;
    }

    private function _1vI(_arg1:_1k5):void {
        this._0JQ._11g();
        this._12i.draw();
    }

    private function _0ZO(_arg1:_1k5):void {
        this._0JQ._1O();
        this._12i.draw();
    }

    private function _1tF(_arg1:_1k5):void {
        var _local4:IntPoint;
        var _local5:_Kr;
        var _local2:Vector.<IntPoint> = this._12i._oI();
        var _local3:_1tn = new _1tn();
        for each (_local4 in _local2) {
            _local5 = this._12i._1s0(_local4.x_, _local4.y_);
            if (_local5 == null) {
            } else {
                _local3._33(new _1K(this._12i, _local4.x_, _local4.y_, _local5));
            }
            ;
        }
        ;
        if (_local3._02M()) {
            return;
        }
        ;
        this._0JQ._04f(_local3);
        this._12i.draw();
        this.filename_ = null;
    }

    private function _in(_arg1:_1k5):void {
        var _local2:String = this._0dK();
        if (_local2 == null) {
            return;
        }
        ;
        new FileReference().save(_local2, (((this.filename_ == null)) ? "map.jm" : this.filename_));
    }

    private function _093(_arg1:_1k5):void {
        this._dx = new FileReference();
        this._dx.addEventListener(Event.SELECT, this._1DW);
        this._dx.browse([new FileFilter("JSON Map (*.jm)", "*.jm")]);
    }

    private function _1DW(_arg1:Event):void {
        var event:Event = _arg1;
        var loadedFile:FileReference = (event.target as FileReference);
        loadedFile.addEventListener(Event.COMPLETE, this._1Lk);
        loadedFile.addEventListener(IOErrorEvent.IO_ERROR, this._1u5);
        try {
            loadedFile.load();
        } catch (e:Error) {
        }
        ;
    }

    private function _1Lk(_arg1:Event):void {
        var _local9:int;
        var _local11:int;
        var _local12:Object;
        var _local13:Array;
        var _local14:Array;
        var _local15:Object;
        var _local16:Object;
        var _local2:FileReference = (_arg1.target as FileReference);
        this.filename_ = _local2.name;
        var _local3:Object = this._fR.parse(_local2.data.toString());
        var _local4:int = _local3["width"];
        var _local5:int = _local3["height"];
        var _local6:Rectangle = new Rectangle(int(((_19w._nI / 2) - (_local4 / 2))), int(((_19w._nI / 2) - (_local5 / 2))), _local4, _local5);
        this._12i.clear();
        this._0JQ.clear();
        var _local7:Array = _local3["dict"];
        var _local8:ByteArray = Base64.decodeToByteArray(_local3["data"]);
        _local8.uncompress();
        var _local10:int = _local6.y;
        while (_local10 < _local6.bottom) {
            _local11 = _local6.x;
            while (_local11 < _local6.right) {
                _local12 = _local7[_local8.readShort()];
                if (_local12.hasOwnProperty("ground")) {
                    _local9 = _0d7._qb[_local12["ground"]];
                    this._12i._0Rs(_local11, _local10, _0J9._0Xy, _local9);
                }
                ;
                _local13 = _local12["objs"];
                if (_local13 != null) {
                    for each (_local15 in _local13) {
                        if (!ObjectLibrary._qb.hasOwnProperty(_local15["id"])) {
                        } else {
                            _local9 = ObjectLibrary._qb[_local15["id"]];
                            this._12i._0Rs(_local11, _local10, _0J9._46, _local9);
                            if (_local15.hasOwnProperty("name")) {
                                this._12i._03E(_local11, _local10, _local15["name"]);
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
                _local14 = _local12["regions"];
                if (_local14 != null) {
                    for each (_local16 in _local14) {
                        _local9 = _0Y2._qb[_local16["id"]];
                        this._12i._0Rs(_local11, _local10, _0J9._ik, _local9);
                    }
                    ;
                }
                ;
                _local11++;
            }
            ;
            _local10++;
        }
        ;
        this._12i.draw();
    }

    private function _1u5(_arg1:Event):void {
    }

    private function _TE(_arg1:Event):void {
        dispatchEvent(new _fZ(this._0dK()));
    }

    private function _00(_arg1:Event):void {
        if (this._12i != null) {
            this._12i._1vD();
        }
        ;
    }


}
}//package _0t-

