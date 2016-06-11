// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1ik._2X

package _1ik {
import _1L3._1FO;

import flash.display.BitmapData;

public class _2X {

    public var _1PC:BitmapData;
    public var name:String;
    public var pet:_1FO;
    public var _16:Vector.<int>;
    public var _0Jj:Vector.<int>;
    public var _0fh:Number;
    public var _1qz:int;
    public var guildName:String;
    public var _1sn:int;
    public var rank:int = -1;
    public var _13C:Boolean = false;


    public function _1hv(_arg1:_2X):Boolean {
        return ((((((_arg1.name == this.name)) && ((this._0fh == _arg1._0fh)))) && ((this._1qz == _arg1._1qz))));
    }

    public function _Ij(_arg1:_2X):Boolean {
        return ((((this._1qz > _arg1._1qz)) || ((((this._1qz == _arg1._1qz)) && ((this._0fh < _arg1._0fh))))));
    }


}
}//package _1ik

