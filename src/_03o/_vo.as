// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_03o._vo

package _03o {
import _0fB._17U;
import _0fB._1Is;

import _0hL._1KH;

import _14w._1zR;

public class _vo implements _17U, _1zR {

    public function _vo(_arg1:Class) {
        this._8E = [];
        this._1Cl = [];
        super();
        this._5Q = _arg1;
    }
    private var _5Q:Class;
    private var _8E:Array;
    private var _1Cl:Array;
    private var _once:Boolean;
    private var _1Im:_17U;
    private var _1NC:_1KH;

    public function get commandClass():Class {
        return (this._5Q);
    }

    public function get _1Oq():Array {
        return (this._8E);
    }

    public function get _Ya():Array {
        return (this._1Cl);
    }

    public function get _21I():Boolean {
        return (this._once);
    }

    public function get next():_17U {
        return (this._1Im);
    }

    public function set next(_arg1:_17U):void {
        this._1Im = _arg1;
    }

    public function _8z(..._args):_1zR {
        ((this._1NC) && (this._1NC._0aI(_args)));
        this._8E = this._8E.concat.apply(null, _args);
        return (this);
    }

    public function _3e(..._args):_1zR {
        ((this._1NC) && (this._1NC._tc(_args)));
        this._1Cl = this._1Cl.concat.apply(null, _args);
        return (this);
    }

    public function once(_arg1:Boolean = true):_1zR {
        ((((this._1NC) && (!(this._once)))) && (this._hF((("You attempted to change an existing mapping for " + this._5Q) + " by setting once(). Please unmap first."))));
        this._once = _arg1;
        return (this);
    }

    public function _1g1():void {
        if (!this._1NC) {
            this._0DL();
        } else {
            if (!this._1NC._0Rr) {
                this._1NC._1g1(this._8E, this._1Cl);
            }
            ;
        }
        ;
    }

    function _1Dx():void {
        if (this._1NC) {
            this._1NC._1Dx();
        } else {
            this._0DL();
        }
        ;
        this._8E = [];
        this._1Cl = [];
    }

    private function _hF(_arg1:String):void {
        throw (new _1Is(_arg1));
    }

    private function _0DL():void {
        this._1NC = new _1KH(this._8E.slice(), this._1Cl.slice(), null, this._5Q);
    }


}
}//package _03o

