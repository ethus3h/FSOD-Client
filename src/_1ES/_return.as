// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1ES.return

package _1ES {
import _0CT._8w;

import _u5._1kJ;

import com.company.assembleegameclient.parameters.Parameters;

import flash.display.BitmapData;
import flash.display.GraphicsBitmapFill;
import flash.display.GraphicsSolidFill;
import flash.display3D.Context3DVertexBufferFormat;
import flash.display3D.VertexBuffer3D;
import flash.geom.ColorTransform;
import flash.utils.Dictionary;

public class _return {

    private static const _0ut:Vector.<Number> = Vector.<Number>([0, 0, 0, 0]);

    private static var _12u:Dictionary = new Dictionary();
    private static var _0NH:uint = 0;
    private static var _1Qx:Dictionary = new Dictionary();
    private static var _1Nn:uint = 0;
    private static var _06f:Dictionary = new Dictionary();
    private static var _10P:uint = 0;
    private static var _ll:Dictionary = new Dictionary();
    private static var _0Qr:uint = 0;
    private static var _0II:Dictionary = new Dictionary();
    private static var _1yp:uint = 0;
    private static var _qj:Dictionary = new Dictionary();
    private static var _xb:uint = 0;
    private static var _pL:uint = 0;


    public static function _1Pk(_arg1:BitmapData, _arg2:ColorTransform):void {
        if (!Parameters._0g5()) {
            return;
        }
        ;
        if (_06f[_arg1] == null) {
            _10P++;
        }
        ;
        _06f[_arg1] = _arg2;
    }

    public static function _hW(_arg1:BitmapData):ColorTransform {
        var _local2:ColorTransform;
        if ((_arg1 in _06f)) {
            _local2 = _06f[_arg1];
            _06f[_arg1] = new ColorTransform();
        } else {
            _local2 = new ColorTransform();
            _06f[_arg1] = _local2;
            _10P++;
        }
        ;
        return (_local2);
    }

    public static function _1mt(_arg1:GraphicsBitmapFill, _arg2:Number, _arg3:Number):void {
        if (!Parameters._0g5()) {
            return;
        }
        ;
        _1SU(_arg1);
        _12u[_arg1][0] = _arg2;
        _12u[_arg1][1] = _arg3;
    }

    public static function _1vC(_arg1:GraphicsBitmapFill):Vector.<Number> {
        if (_12u[_arg1] != null) {
            return (_12u[_arg1]);
        }
        ;
        return (_0ut);
    }

    public static function _dt(_arg1:GraphicsBitmapFill, _arg2:Number):void {
        if (!Parameters._0g5()) {
            return;
        }
        ;
        if (_1Qx[_arg1] == null) {
            _1Nn++;
        }
        ;
        _1Qx[_arg1] = _arg2;
    }

    public static function _16b(_arg1:GraphicsBitmapFill):Number {
        if (((!((_1Qx[_arg1] == null))) && ((_1Qx[_arg1] is Number)))) {
            return (_1Qx[_arg1]);
        }
        ;
        return (0);
    }

    public static function _0vz(_arg1:GraphicsBitmapFill, _arg2:Vector.<Number>):void {
        if (!Parameters._0g5()) {
            return;
        }
        ;
        var _local3:_1kJ = _8w._1Sz().getInstance(_1kJ);
        var _local4:VertexBuffer3D = _local3._sU().createVertexBuffer(4, 5);
        _local4.uploadFromVector(_arg2, 0, 4);
        _local3._sU().setVertexBufferAt(0, _local4, 0, Context3DVertexBufferFormat.FLOAT_3);
        _local3._sU().setVertexBufferAt(1, _local4, 3, Context3DVertexBufferFormat.FLOAT_2);
        if (_ll[_arg1] == null) {
            _0Qr++;
        }
        ;
        _ll[_arg1] = _local4;
    }

    public static function _bT(_arg1:GraphicsBitmapFill):VertexBuffer3D {
        if (((!((_ll[_arg1] == null))) && ((_ll[_arg1] is VertexBuffer3D)))) {
            return (_ll[_arg1]);
        }
        ;
        return (null);
    }

    public static function _VP(_arg1:GraphicsBitmapFill):void {
        if (!Parameters._0g5()) {
            return;
        }
        ;
        if (_1Qx[_arg1] != null) {
            _1Nn--;
            delete _1Qx[_arg1];
        }
        ;
    }

    public static function _02n(_arg1:GraphicsBitmapFill, _arg2:Boolean):void {
        if (!Parameters._0g5()) {
            return;
        }
        ;
        if (_0II[_arg1] == null) {
            _1yp++;
        }
        ;
        _0II[_arg1] = _arg2;
    }

    public static function _k8(_arg1:GraphicsBitmapFill):Boolean {
        if (((!((_0II[_arg1] == null))) && ((_0II[_arg1] is Boolean)))) {
            return (_0II[_arg1]);
        }
        ;
        return (false);
    }

    public static function _01S(_arg1:GraphicsSolidFill, _arg2:Boolean):void {
        if (!Parameters._0g5()) {
            return;
        }
        ;
        if (_qj[_arg1] == null) {
            _xb++;
        }
        ;
        _qj[_arg1] = _arg2;
    }

    public static function _y2(_arg1:GraphicsSolidFill):Boolean {
        if (((!((_qj[_arg1] == null))) && ((_qj[_arg1] is Boolean)))) {
            return (_qj[_arg1]);
        }
        ;
        return (false);
    }

    public static function dispose():void {
        _12u = new Dictionary();
        _1Qx = new Dictionary();
        _06f = new Dictionary();
        _1KC();
        _0II = new Dictionary();
        _qj = new Dictionary();
        _0NH = 0;
        _1Nn = 0;
        _10P = 0;
        _0Qr = 0;
        _1yp = 0;
        _xb = 0;
    }

    public static function _1KC():void {
        var _local1:VertexBuffer3D;
        for each (_local1 in _ll) {
            _local1.dispose();
        }
        ;
        _ll = new Dictionary();
    }

    public static function _032():void {
        if (_10P > 2000) {
            _06f = new Dictionary();
            _10P = 0;
        }
        ;
        if (_0NH > 2000) {
            _12u = new Dictionary();
            _0NH = 0;
        }
        ;
        if (_1Nn > 2000) {
            _1Qx = new Dictionary();
            _1Nn = 0;
        }
        ;
        if (_0Qr > 1000) {
            _1KC();
            _0Qr = 0;
        }
        ;
        if (_1yp > 2000) {
            _0II = new Dictionary();
            _1yp = 0;
        }
        ;
        if (_xb > 2000) {
            _qj = new Dictionary();
            _xb = 0;
        }
        ;
    }

    private static function _1SU(_arg1:GraphicsBitmapFill):void {
        if (!Parameters._0g5()) {
            return;
        }
        ;
        if (_12u[_arg1] == null) {
            _0NH++;
            _12u[_arg1] = Vector.<Number>([0, 0, 0, 0]);
        }
        ;
    }


}
}//package _1ES

