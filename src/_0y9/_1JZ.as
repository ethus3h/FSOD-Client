// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0y9._1JZ

package _0y9 {
import _6u._00t;

import _r7._17v;

import com.company.ui._V2;

public class _1JZ extends _17v {

    [Inject]
    public var view:_V2;
    [Inject]
    public var model:_00t;


    override public function initialize():void {
        var _local1:String = this.model._0OE().getName();
        this.view._1qt(_local1);
    }


}
}//package _0y9

