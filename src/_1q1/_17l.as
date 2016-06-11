// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1q1._17l

package _1q1 {
import _1PM._1YQ;

import _20I._0Hi;
import _20I._1GP;
import _20I._1Z;
import _20I._E0;

public class _17l {

    [Inject]
    public var data:XML;
    [Inject]
    public var model:_1Z;
    [Inject]
    public var _1TT:_1YQ;


    public function execute():void {
        this._Eu();
        this._16O();
        this._ZU();
    }

    private function _Eu():void {
        var _local2:XML;
        var _local3:_E0;
        var _local1:XMLList = this.data.MaxClassLevelList.MaxClassLevel;
        for each (_local2 in _local1) {
            _local3 = this.model._Sb(_local2.@classType);
            _local3._1cE(_local2.@maxLevel);
        }
        ;
    }

    private function _16O():void {
        var _local2:XML;
        var _local3:_1GP;
        var _local1:XMLList = this.data.ItemCosts.ItemCost;
        for each (_local2 in _local1) {
            _local3 = this.model._208(_local2.@type);
            if (_local3) {
                _local3.cost = int(_local2);
                _local3.limited = Boolean(int(_local2.@expires));
                if (!Boolean(int(_local2.@purchasable))) {
                    _local3.setState(_0Hi.UNLISTED);
                }
                ;
            } else {
                this._1TT._1Sh("Cannot set Character Skin cost: type {0} not found", [_local2.@type]);
            }
            ;
        }
        ;
    }

    private function _ZU():void {
        var _local2:int;
        var _local3:_1GP;
        var _local1:Array = ((this.data.OwnedSkins.length()) ? this.data.OwnedSkins.split(",") : []);
        for each (_local2 in _local1) {
            _local3 = this.model._208(_local2);
            if (_local3) {
                _local3.setState(_0Hi.OWNED);
            } else {
                this._1TT._1Sh("Cannot set Character Skin ownership: type {0} not found", [_local2]);
            }
            ;
        }
        ;
    }


}
}//package _1q1

