// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1ES._0jf

package _1ES {
import _0cA._0bz;

import _1PM.*;

import _in.Graphic3DHelper;
import _in._16c;
import _in._1oz;
import _in._44;

import _u5._1kJ;

import com.company.assembleegameclient.engine3d._2c;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util._0ns;
import com.company.assembleegameclient.util._1hw;

import flash.display3D.Context3DBlendFactor;
import flash.display3D.Context3DCompareMode;
import flash.events.ErrorEvent;
import flash.events.Event;

public class _0jf implements _YL {

    public static const WIDTH:int = 600;
    public static const _9D:int = (WIDTH / 2);//300
    public static const HEIGHT:int = 600;
    public static const _dv:int = (HEIGHT / 2);//300

    [Inject]
    public var _0FE:_1hw;
    [Inject]
    public var _sk:_0bz;
    public var _1DI:_0jA;
    private var stage3D:_0ns;


    public function configure():void {
        this._RO();
        this.stage3D = this._0FE.getStage3Ds(0);
        this.stage3D.addEventListener(ErrorEvent.ERROR, Parameters._yD);
        this.stage3D.addEventListener(Event.CONTEXT3D_CREATE, this._0zl);
        this.stage3D.requestContext3D();
    }

    private function _RO():void {
        this._sk.map(_04E)._0MH();
        this._sk.map(_1oz)._0MH();
        this._sk.map(_16c)._0MH();
        this._sk.map(_44)._0MH();
    }

    private function _0zl(_arg1:Event):void {
        this.stage3D.removeEventListener(Event.CONTEXT3D_CREATE, this._0zl);
        var _local2:_1kJ = this.stage3D._1gb();
        if (_local2._sU().driverInfo.toLowerCase().indexOf("software") != -1) {
            Parameters._rM();
        }
        ;
        _local2.configureBackBuffer(WIDTH, HEIGHT, 2, true);
        _local2.setBlendFactors(Context3DBlendFactor.SOURCE_ALPHA, Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
        _local2.setDepthTest(false, Context3DCompareMode.LESS_EQUAL);
        this._sk.map(_1kJ)._nR(_local2);
        Graphic3DHelper.map(this._sk);
        this._1DI = this._sk.getInstance(_0jA);
        this._1DI.init(_local2._sU());
        _2c._057(_local2._sU());
    }


}
}//package _1ES

