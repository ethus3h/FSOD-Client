// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_nl._0ft

package _nl {
import _1PE.*;

import com.company.util._yJ;

public class _0ft implements Account {

    public static const _12M:String = "steam";

    [Inject]
    public var _C:_0Y9;
    private var userId:String = "";
    private var password:String = null;
    private var _Dg:Boolean;
    private var _fE:String;


    public function _05b(_arg1:String, _arg2:String):void {
        this.userId = _arg1;
        this.password = _arg2;
    }

    public function _02H():String {
        return (this._C.getPersonaName());
    }

    public function getUserId():String {
        return ((this.userId = ((this.userId) || (""))));
    }

    public function _f5():String {
        return ("");
    }

    public function _1BG():String {
        return ((this.password = ((this.password) || (""))));
    }

    public function _1iT():Object {
        var _local1:Object = {};
        _local1.guid = this.getUserId();
        _local1.secret = this._1BG();
        _local1.steamid = this._C._0nH();
        return (_local1);
    }

    public function _vD():Boolean {
        return (!((this._1BG() == "")));
    }

    public function _0YZ():Boolean {
        return (_yJ._0sW(this.userId));
    }

    public function _0uI():String {
        return (this._C._0nH());
    }

    public function _0iC():String {
        return (_12M);
    }

    public function _0X8():String {
        return ("steam");
    }

    public function _cq(_arg1:String, _arg2:int):void {
        this._C._182(_arg1, _arg2);
    }

    public function _1W6():String {
        return ("/steamworks");
    }

    public function _UV():String {
        return ("steamworks");
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
        throw (new Error("No current support for new Kabam offer wall on Steam."));
    }

    public function _0OM():String {
        throw (new Error("No current support for new Kabam offer wall on Steam."));
    }


}
}//package _nl

