// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1L3._1Xt

package _1L3 {
import _1Sm._sy;

import com.company.assembleegameclient.objects.ObjectLibrary;

public class _1Xt {

    public const _1an:_sy = new _sy(_1Xt);
    public var level:int;
    public var points:int;
    public var name:String;
    public var description:String;
    private var _1NF:uint;
    private var _1Do:XML;
    private var _16:Boolean;


    public function set type(_arg1:uint):void {
        this._1NF = _arg1;
        this._1Do = ObjectLibrary._0SR(this._1NF);
        this.name = this._1Do.DisplayId;
        this.description = this._1Do.Description;
    }

    public function setUnlocked(_arg1:Boolean):void {
        this._16 = _arg1;
    }

    public function _7q():Boolean {
        return (this._16);
    }


}
}//package _1L3

