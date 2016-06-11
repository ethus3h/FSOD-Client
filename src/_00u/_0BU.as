// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_00u._0BU

package _00u {
import _0cA._0bz;

import _0hL._1As;

import _10m.ModularContextEvent;
import _10m._059;
import _10m._1hV;

import _1PM.*;

import _nj._115;

import flash.display.DisplayObjectContainer;

public class _0BU implements _1rc {

    private const _01p:String = _1As.create(_0BU);

    public function _0BU(_arg1:Boolean = true, _arg2:Boolean = true) {
        this._oq = _arg1;
        this._iz = _arg2;
    }
    private var _0rd:_Ld;
    private var _6y:_0bz;
    private var _0gD:_1YQ;
    private var _oq:Boolean;
    private var _iz:Boolean;

    public function extend(_arg1:_Ld):void {
        this._0rd = _arg1;
        this._6y = _arg1._sk;
        this._0gD = _arg1._F4(this);
        this._0rd._11b._3m(this._3m);
    }

    public function toString():String {
        return (this._01p);
    }

    private function _3m():void {
        ((this._oq) && (this._0yH()));
        ((this._iz) && (this._kc()));
    }

    private function _0yH():void {
        var _local1:DisplayObjectContainer;
        if (this._6y._R(DisplayObjectContainer)) {
            this._0gD.debug("Context configured to inherit. Broadcasting existence event...");
            _local1 = this._6y.getInstance(DisplayObjectContainer);
            _local1.dispatchEvent(new ModularContextEvent(ModularContextEvent._1qG, this._0rd));
        } else {
            this._0gD._1Sh("Context has been configured to inherit dependencies but has no way to do so");
        }
        ;
    }

    private function _kc():void {
        var _local1:_115;
        var _local2:DisplayObjectContainer;
        if (this._6y._R(_115)) {
            this._0gD.debug("Context has a ViewManager. Configuring view manager based context existence watcher...");
            _local1 = this._6y.getInstance(_115);
            new _059(this._0rd, _local1);
        } else {
            if (this._6y._R(DisplayObjectContainer)) {
                this._0gD.debug("Context has a ContextView. Configuring context view based context existence watcher...");
                _local2 = this._6y.getInstance(DisplayObjectContainer);
                new _1hV(this._0rd, _local2);
            } else {
                this._0gD._1Sh("Context has been configured to expose its dependencies but has no way to do so");
            }
            ;
        }
        ;
    }


}
}//package _00u

