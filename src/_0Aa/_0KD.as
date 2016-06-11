// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Aa._0KD

package _0Aa {
import _0SK._Qo;

import _1PE.*;

public class _0KD implements Account {

    public static const _12M:String = "kongregate";

    [Inject]
    public var _C:_Qo;
    private var userId:String = "";
    private var password:String;
    private var _Dg:Boolean;
    private var _fE:String;


    public function _05b(_arg1:String, _arg2:String):void {
        this.userId = _arg1;
        this.password = _arg2;
    }

    public function _02H():String {
        return (this._C._02H());
    }

    public function getUserId():String {
        return (this.userId);
    }

    public function _f5():String {
        return ("");
    }

    public function _1BG():String {
        return (((this.password) || ("")));
    }

    public function _1iT():Object {
        return ({
            guid: this.getUserId(),
            secret: this._1BG()
        });
    }

    public function _vD():Boolean {
        return (!((this._1BG() == "")));
    }

    public function _0uI():String {
        return (this._C.getUserId());
    }

    public function _0iC():String {
        return (_12M);
    }

    public function _0X8():String {
        return ("kongregate");
    }

    public function _cq(_arg1:String, _arg2:int):void {
        this._C._182(_arg1, _arg2);
    }

    public function _1W6():String {
        return ("/kongregate");
    }

    public function _UV():String {
        return ("kongregate");
    }

    public function clear():void {
    }

    public function verify(_arg1:Boolean):void {
        this._Dg = _arg1;
    }

    public function _ZL():Boolean {
        return (this._Dg);
    }

    public function _1uQ():String {
        return (((this._fE) || ("")));
    }

    public function _1EI(_arg1:String):void {
        this._fE = _arg1;
    }

    public function _1FA():String {
        throw (new Error("No current support for new Kabam offer wall on Kongregate."));
    }

    public function _0OM():String {
        throw (new Error("No current support for new Kabam offer wall on Kongregate."));
    }


}
}//package _0Aa

