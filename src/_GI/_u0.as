// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._u0

package _GI {
import _JD._z8;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.parameters.Parameters;

import flash.display.BitmapData;
import flash.geom.Point;

public class _u0 extends _z8 {

    public function _u0(_arg1:uint, _arg2:int, _arg3:uint, _arg4:Point, _arg5:Point, _arg6:Number, _arg7:GameObject, _arg8:Vector.<BitmapData>) {
        this.cameraAngle = Parameters.data_.cameraAngle;
        this.go = _arg7;
        this._1vu = _arg6;
        this._tP = _arg8;
        super(_arg8[0], 0);
        this._Ut = _arg8.length;
        this._TN = _arg2;
        this.dx_ = ((_arg5.x - _arg4.x) / this._TN);
        this.dy_ = ((_arg5.y - _arg4.y) / this._TN);
        this._0sP = (_arg4.x - _arg7.x_);
        this._0yU = (_arg4.y - _arg7.y_);
        _0fR = (-(_arg6) - this.cameraAngle);
    }
    private var _TN:int;
    private var dx_:Number;
    private var dy_:Number;
    private var _0sP:Number;
    private var _0yU:Number;
    private var _1vu:Number;
    private var _1ic:uint = 0;
    private var _0Ab:uint = 0;
    private var _Ut:uint;
    private var go:GameObject;
    private var _1du:Number = 0;
    private var _0fp:Number = 0;
    private var cameraAngle:Number;
    private var _tP:Vector.<BitmapData>;

    override public function update(_arg1:int, _arg2:int):Boolean {
        this._TN--;
        if (this._TN <= 0) {
            return (false);
        }
        ;
        this._1ic++;
        if ((this._1ic % 2)) {
            this._0Ab++;
        }
        ;
        _0L1 = this._tP[(this._0Ab % this._Ut)];
        this._1du = (this._1du + this.dx_);
        this._0fp = (this._0fp + this.dy_);
        if (Parameters.data_.cameraAngle != this.cameraAngle) {
            this.cameraAngle = Parameters.data_.cameraAngle;
            _0fR = (-(this._1vu) - this.cameraAngle);
        }
        ;
        moveTo(((this.go.x_ + this._0sP) + this._1du), ((this.go.y_ + this._0yU) + this._0fp));
        return (true);
    }


}
}//package _GI

