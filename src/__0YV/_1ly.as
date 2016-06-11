// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0YV._1ly

package __0YV {
import _0Tm._1ck;

import _2B.*;

import flash.display.LoaderInfo;
import flash.net.LocalConnection;
import flash.system.Capabilities;

public class _1ly implements _vA {

    private static const _1eD:String = "Desktop";
    private static const _0yd:String = _1ck._0ZP(-436, 623);//"127.0.0.1"
    private static const _vX:String = "127.0.0.1";
    private static const _rk:String = "rotmgtesting.appspot.com";
    private static const _2m:String = _1ck._0ZP(-437, 624);//"testing.127.0.0.1"
    private static const ROTMG_TESTING2:String = "rotmgbbtesting.appspot.com";
    private static const _1Iy:String = "Production";

    [Inject]
    public var loaderInfo:LoaderInfo;
    [Inject]
    public var _17f:_07J;
    private var _ii:Boolean = false;
    private var _1v6:_Pk;


    public function _09D():String {
        return ("production".toLowerCase());
    }

    public function _1NV():_Pk {
        ((this._ii) || (this._13p()));
        return (this._1v6);
    }

    private function _13p():void {
        this._ii = true;
        this._045(this._09D());
    }

    private function _045(_arg1:String):void {
        var _local3:LocalConnection;
        var _local2:Boolean = this._0T0(_arg1);
        if (_local2) {
            _local3 = new LocalConnection();
            if ((((_local3.domain == _rk)) || ((_local3.domain == _2m)))) {
                this._1v6 = _Pk._1Nh;
            } else {
                if (_local3.domain == ROTMG_TESTING2) {
                    this._1v6 = _Pk.TESTING2;
                }
                ;
            }
            ;
        } else {
            this._1v6 = this._17f._1NV(_arg1);
        }
        ;
    }

    private function _0T0(_arg1:String):Boolean {
        return ((((_arg1 == _07J._0IS)) && (!(this._1B4()))));
    }

    private function _1B4():Boolean {
        ((this._3o()) ? this._yl() : this._3Q());
        return (true);
    }

    private function _3o():Boolean {
        return ((Capabilities.playerType == _1eD));
    }

    private function _yl():Boolean {
        var _local1:Object = this.loaderInfo.parameters;
        return ((_local1.deployment == _1Iy));
    }

    private function _3Q():Boolean {
        var _local1:LocalConnection = new LocalConnection();
        return ((((_local1.domain == _0yd)) || ((_local1.domain == _vX))));
    }


}
}//package _0YV

