// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_20I._E0

package _20I {
import _1Sm._sy;

public class _E0 {

    public const selected:_sy = new _sy(_E0);
    public const _1XQ:Vector.<_16S> = new <_16S>[];
    public const _0fJ:_13Z = new _13Z();

    public var id:int;
    public var name:String;
    public var description:String;
    public var _1T:String;
    public var _80:String;
    public var _1Wk:Number;
    public var _16:Vector.<int>;
    public var _0vp:Vector.<int>;
    public var _ie:_11R;
    public var _0Ii:_11R;
    public var attack:_11R;
    public var defense:_11R;
    public var speed:_11R;
    public var dexterity:_11R;
    public var _0A7:_11R;
    public var _14A:_11R;
    public var unlockCost:int;
    private var _0Sw:int;
    private var _tg:Boolean;


    public function _09b():Boolean {
        return (this._tg);
    }

    public function _1dU(_arg1:Boolean):void {
        if (this._tg != _arg1) {
            this._tg = _arg1;
            ((this._tg) && (this.selected.dispatch(this)));
        }
        ;
    }

    public function _0i0():int {
        return (this._0Sw);
    }

    public function _1cE(_arg1:int):void {
        this._0Sw = _arg1;
        this._0fJ._mM(this._0Sw);
    }


}
}//package _20I

