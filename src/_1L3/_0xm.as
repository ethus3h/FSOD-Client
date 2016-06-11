// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1L3._0xm

package _1L3 {
public class _0xm {

    public static const LEFT:String = "leftSide";
    public static const RIGHT:String = "rightSide";

    public var _1uw:_1FO;
    public var _1XH:int = -1;
    public var _1V:_1FO;
    public var _1N0:int = -1;
    public var _Ux:int = -1;
    public var caller:Class;
    public var selected:String;


    public function clear():void {
        this.caller = null;
        this._1uw = null;
        this._1XH = -1;
        this._1V = null;
        this._1N0 = -1;
        this._Ux = -1;
    }

    public function _1XW():Boolean {
        return (((((((!((this._Ux == -1))) && (!((this._1N0 == -1))))) && (!((this._1XH == -1))))) && (!((this._1uw == null)))));
    }

    public function _7U():Boolean {
        return (((!((this._1V == null))) && (!((this._1uw == null)))));
    }


}
}//package _1L3

