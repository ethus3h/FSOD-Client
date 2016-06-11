// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bZ._1f8

package _bZ {
import _0fa._z4;

import _0hL._1KH;

import _1Vz._1WS;

import _UB.*;

public class _1f8 implements _hG, _1WS {

    public function _1f8(_arg1:_z4, _arg2:Class) {
        this._8E = [];
        this._1Cl = [];
        super();
        this._matcher = _arg1;
        this._DL = _arg2;
    }
    private var _s1:Boolean = false;
    private var _1NC:_1KH;
    private var _matcher:_z4;
    private var _DL:Class;
    private var _8E:Array;
    private var _1Cl:Array;

    public function get _0ON():_z4 {
        return (this._matcher);
    }

    public function get _0LS():Class {
        return (this._DL);
    }

    public function get _1Oq():Array {
        return (this._8E);
    }

    public function get _Ya():Array {
        return (this._1Cl);
    }

    public function _8z(..._args):_1WS {
        ((this._1NC) && (this._1NC._0aI(_args)));
        this._8E = this._8E.concat.apply(null, _args);
        return (this);
    }

    public function _3e(..._args):_1WS {
        ((this._1NC) && (this._1NC._tc(_args)));
        this._1Cl = this._1Cl.concat.apply(null, _args);
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

    private function _0DL():void {
        this._1NC = new _1KH(this._8E.slice(), this._1Cl.slice(), this._matcher, this._DL);
    }


}
}//package _bZ

