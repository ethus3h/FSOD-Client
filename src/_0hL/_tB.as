// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._tB

package _0hL {
import _0cA._0bz;

import _1PM._041;
import _1PM._1YQ;
import _1PM._1pE;
import _1PM._Ld;

import _1fY._1rS;

public class _tB implements _Ld {

    private const _6y:_0bz = new _0bz();
    private const _01p:String = _1As.create(_tB);
    private const _0HZ:_0DU = new _0DU();
    private const _1lm:_1eG = new _1eG();

    public function _tB() {
        this.setup();
    }
    private var _10w:_XY;
    private var _1:_0hH;
    private var _A7:_1cY;
    private var _0gD:_1YQ;

    public function get _sk():_0bz {
        return (this._6y);
    }

    public function get _OS():uint {
        return (this._0HZ._OS);
    }

    public function set _OS(_arg1:uint):void {
        this._0HZ._OS = _arg1;
    }

    public function get _11b():_1pE {
        return (this._10w);
    }

    public function initialize():void {
        this._10w.initialize();
    }

    public function destroy():void {
        this._10w.destroy();
    }

    public function extend(..._args):_Ld {
        var _local2:Object;
        for each (_local2 in _args) {
            this._A7._6T(_local2);
        }
        ;
        return (this);
    }

    public function configure(..._args):_Ld {
        var _local2:Object;
        for each (_local2 in _args) {
            this._1._0rA(_local2);
        }
        ;
        return (this);
    }

    public function _0Jl(_arg1:_1rS, _arg2:Function):_Ld {
        this._1._0Jl(_arg1, _arg2);
        return (this);
    }

    public function _F4(_arg1:Object):_1YQ {
        return (this._0HZ._F4(_arg1));
    }

    public function _XV(_arg1:_041):_Ld {
        this._0HZ._XV(_arg1);
        return (this);
    }

    public function _KB(..._args):_Ld {
        var _local2:Object;
        for each (_local2 in _args) {
            this._1lm._KB(_local2);
        }
        ;
        return (this);
    }

    public function release(..._args):_Ld {
        var _local2:Object;
        for each (_local2 in _args) {
            this._1lm.release(_local2);
        }
        ;
        return (this);
    }

    public function toString():String {
        return (this._01p);
    }

    private function setup():void {
        this._6y.map(_0bz)._nR(this._6y);
        this._6y.map(_Ld)._nR(this);
        this._0gD = this._0HZ._F4(this);
        this._10w = new _XY(this);
        this._1 = new _0hH(this);
        this._A7 = new _1cY(this);
        this._10w._3m(this._3m);
        this._10w._Dy(this._Dy);
        this._10w._0oP(this._0oP);
        this._10w._Us(this._Us);
    }

    private function _3m():void {
        this._0gD.info("Initializing...");
    }

    private function _Dy():void {
        this._0gD.info("Initialize complete");
    }

    private function _0oP():void {
        this._0gD.info("Destroying...");
    }

    private function _Us():void {
        this._1lm.flush();
        this._6y._1lJ();
        this._0gD.info("Destroy complete");
    }


}
}//package _0hL

