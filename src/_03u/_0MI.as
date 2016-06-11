// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03u._0MI

package _03u {
import _1Sm._sy;

import flash.errors.IllegalOperationError;

public class _0MI implements _wP {

    private var _1gS:_r;
    private var _198:_05k;
    private var _02x:_05k;
    private var _qm:Boolean;
    private var _0gb:Boolean;
    private var _0FU:Boolean;
    private var _0Tz:String;

    final public function get _0fz():_sy {
        return ((this._1gS = ((this._1gS) || (new _r()))));
    }

    final public function get _i4():_05k {
        return ((this._198 = ((this._198) || (new _05k()))));
    }

    final public function get lastly():_05k {
        return ((this._02x = ((this._02x) || (new _05k()))));
    }

    public function get _0Jf():Boolean {
        return (this._qm);
    }

    public function get _bM():Boolean {
        return (this._0gb);
    }

    public function get _1oZ():Boolean {
        return (this._0FU);
    }

    public function get error():String {
        return (this._0Tz);
    }

    final public function start():void {
        if (!this._qm) {
            this._qm = true;
            ((this._1gS) && (this._1gS.dispatch(this)));
            this.startTask();
        }
        ;
    }

    final public function reset():void {
        if (this._qm) {
            this._qm = false;
            if (!this._0gb) {
                throw (new IllegalOperationError("Unable to Task.reset() when a task is ongoing"));
            }
            ;
        }
        ;
        ((this._1gS) && (this._1gS.removeAll()));
        ((this._198) && (this._198.removeAll()));
        ((this._02x) && (this._02x.removeAll()));
        this.onReset();
    }

    protected function startTask():void {
    }

    protected function onReset():void {
    }

    final protected function _Ug(_arg1:Boolean, _arg2:String = ""):void {
        this._0FU = _arg1;
        this._0Tz = _arg2;
        this._0gb = true;
        ((this._198) && (this._198.dispatch(this, _arg1, _arg2)));
        ((this._02x) && (this._02x.dispatch(this, _arg1, _arg2)));
    }


}
}//package _03u

