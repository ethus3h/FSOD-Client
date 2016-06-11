// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0hL._1eG

package _0hL {
import flash.utils.Dictionary;

public class _1eG {

    private const _0RA:Dictionary = new Dictionary(false);


    public function _KB(_arg1:Object):void {
        this._0RA[_arg1] = true;
    }

    public function release(_arg1:Object):void {
        delete this._0RA[_arg1];
    }

    public function flush():void {
        var _local1:Object;
        for (_local1 in this._0RA) {
            delete this._0RA[_local1];
        }
        ;
    }


}
}//package _0hL

