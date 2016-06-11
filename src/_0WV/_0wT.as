// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0WV._0wT

package _0WV {
import _1L3._1FO;
import _1L3._IG;
import _1L3._xy;

import _r7.Command;

import com.company.assembleegameclient.objects.ObjectLibrary;

public class _0wT extends Command {

    [Inject]
    public var model:_IG;
    [Inject]
    public var data:XML;


    override public function execute():void {
        if (this.data.Account.hasOwnProperty("PetYardType")) {
            this.model._1VO(this._0y());
        }
        ;
        if (this.data.hasOwnProperty("Pet")) {
            this.model._WZ(this._0Av());
        }
        ;
    }

    private function _0y():int {
        var _local1:String = _xy._1rX(this.data.Account.PetYardType).value;
        var _local2:XML = ObjectLibrary._22(_local1);
        return (_local2.@type);
    }

    private function _0Av():_1FO {
        var _local1:XMLList = this.data.Pet;
        var _local2:_1FO = this.model.getPetVO(_local1.@instanceId);
        _local2.apply(_local1[0]);
        return (_local2);
    }


}
}//package _0WV

