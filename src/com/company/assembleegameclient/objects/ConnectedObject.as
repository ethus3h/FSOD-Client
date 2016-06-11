// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects.ConnectedObject

package com.company.assembleegameclient.objects {
import com.company.assembleegameclient.engine3d.ObjectFace3D;
import com.company.assembleegameclient.engine3d._1KR;
import com.company.assembleegameclient.map.Square;
import com.company.assembleegameclient.map._18q;

import flash.display.BitmapData;
import flash.display.IGraphicsData;
import flash.geom.Utils3D;
import flash.geom.Vector3D;
import flash.utils.Dictionary;

public class ConnectedObject extends GameObject {

    protected static const _0vB:int = 0;
    protected static const _5C:int = 1;
    protected static const _1QO:int = 2;
    protected static const _1ea:int = 3;
    protected static const _if:int = 4;
    protected static const _05S:int = 5;
    protected static const N0:Vector3D = new Vector3D(-1, -1, 0);
    protected static const N1:Vector3D = new Vector3D(0, -1, 0);
    protected static const N2:Vector3D = new Vector3D(1, -1, 0);
    protected static const N3:Vector3D = new Vector3D(1, 0, 0);
    protected static const N4:Vector3D = new Vector3D(1, 1, 0);
    protected static const N5:Vector3D = new Vector3D(0, 1, 0);
    protected static const N6:Vector3D = new Vector3D(-1, 1, 0);
    protected static const N7:Vector3D = new Vector3D(-1, 0, 0);
    protected static const N8:Vector3D = new Vector3D(0, 0, 1);

    private static var _13V:Dictionary = null;

    private static function init():void {
        _13V = new Dictionary();
        _SR(33686018, _0vB);
        _SR(16908802, _5C);
        _SR(16843266, _1QO);
        _SR(16908546, _1ea);
        _SR(16843265, _if);
        _SR(16843009, _05S);
    }

    private static function _US(_arg1:int):ConnectedResults {
        if (_13V == null) {
            init();
        }
        ;
        var _local2 = (_arg1 & 252645135);
        return (_13V[_local2]);
    }

    private static function _SR(_arg1:int, _arg2:int):void {
        var _local4:int;
        var _local3:int;
        while (_local3 < 4) {
            if (_13V.hasOwnProperty(String(_arg1))) {
            } else {
                _13V[_arg1] = new ConnectedResults(_arg2, _local3);
                _local4 = (_arg1 & 0xFF);
                _arg1 = ((_arg1 >> 8) | (_local4 << 24));
            }
            ;
            _local3++;
        }
        ;
    }

    public function ConnectedObject(_arg1:XML) {
        super(_arg1);
        _Ci = false;
    }
    protected var rotation_:int = 0;

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
        var _local4:ObjectFace3D;
        var _local5:int;
        var _local6:int;
        var _local7:BitmapData;
        var _local8:Square;
        if (_1bD == null) {
            this._0nJ();
        }
        ;
        Utils3D.projectVectors(_arg2.wToS_, _1bD.vW_, _1bD.vS_, _1bD.uvts_);
        for each (_local4 in _1bD.faces_) {
            _local5 = (((_local4._0mc.x > 0.4)) ? 1 : (((_local4._0mc.x < -0.4)) ? -1 : 0));
            _local6 = (((_local4._0mc.y > 0.4)) ? 1 : (((_local4._0mc.y < -0.4)) ? -1 : 0));
            _local7 = _local4.texture_;
            if (((!((_local5 == 0))) || (!((_local6 == 0))))) {
                _local8 = map_.lookupSquare((x_ + _local5), (y_ + _local6));
                if ((((_local8 == null)) || ((_local8.texture_ == null)))) {
                    _local7 = null;
                }
                ;
            }
            ;
            _local4.draw(_arg1, 0, _local7);
        }
        ;
    }

    public function _0nJ():void {
        _1bD = new _1KR();
        var _local1:ConnectedResults = _US(_00Q);
        if (_local1 == null) {
            _1bD = null;
            return;
        }
        ;
        this.rotation_ = _local1.rotation_;
        switch (_local1.type_) {
            case _0vB:
                this.buildDot();
                break;
            case _5C:
                this.buildShortLine();
                break;
            case _1QO:
                this.buildL();
                break;
            case _1ea:
                this.buildLine();
                break;
            case _if:
                this.buildT();
                break;
            case _05S:
                this.buildCross();
                break;
            default:
                _1bD = null;
                return;
        }
        ;
        _1bD.setPosition(x_, y_, 0, (this.rotation_ * 90));
    }

    protected function buildDot():void {
    }

    protected function buildShortLine():void {
    }

    protected function buildL():void {
    }

    protected function buildLine():void {
    }

    protected function buildT():void {
    }

    protected function buildCross():void {
    }


}
}//package com.company.assembleegameclient.objects

class ConnectedResults {

    public var type_:int;
    public var rotation_:int;

    public function ConnectedResults(_arg1:int, _arg2:int) {
        this.type_ = _arg1;
        this.rotation_ = _arg2;
    }

}

