// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1L3._IG

package _1L3 {
import _10a._FU;

import _vp._1Zd;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.objects.ObjectLibrary;

public class _IG {

    public function _IG() {
        this.hash = {};
        this.pets = new Vector.<_1FO>();
        super();
    }
    [Inject]
    public var _1pn:_1Zd;
    [Inject]
    public var _qP:_FU;
    private var hash:Object;
    private var pets:Vector.<_1FO>;
    private var _1U:XML;
    private var type:int;
    private var _1UJ:_1FO;

    public function getPetVO(_arg1:int):_1FO {
        var _local2:_1FO;
        if (this.hash[_arg1] != null) {
            return (this.hash[_arg1]);
        }
        ;
        _local2 = new _1FO(_arg1);
        this.pets.push(_local2);
        this.hash[_arg1] = _local2;
        return (_local2);
    }

    public function _0S4(_arg1:int):_1FO {
        return (this.hash[_arg1]);
    }

    public function _1w1():Vector.<_1FO> {
        return (this.pets);
    }

    public function _0CB(_arg1:_1FO):void {
        this.pets.push(_arg1);
    }

    public function _WZ(_arg1:_1FO):void {
        this._1UJ = _arg1;
        var _local2:SavedCharacter = this._qP._0im(this._qP._Oc);
        if (_local2) {
            _local2._JO(this._1UJ);
        }
        ;
        this._1pn.dispatch();
    }

    public function _0ER():_1FO {
        return (this._1UJ);
    }

    public function _0Fr():void {
        var _local1:SavedCharacter = this._qP._0im(this._qP._Oc);
        if (_local1) {
            _local1._JO(null);
        }
        ;
        this._1UJ = null;
        this._1pn.dispatch();
    }

    public function _1a8(_arg1:int):_1FO {
        var _local2:int = this._CM(_arg1);
        if (_local2 == -1) {
            return (null);
        }
        ;
        return (this.pets[_local2]);
    }

    public function _1VO(_arg1:int):void {
        this.type = _arg1;
        this._1U = ObjectLibrary._22(ObjectLibrary._4C(_arg1));
    }

    public function _0jt():uint {
        return (_xy._0yp(this._1U.@id).rarity._25);
    }

    public function _NR():int {
        return (((this._1U) ? _xy._0yp(this._1U.@id)._25 : 1));
    }

    public function _1i7():int {
        return (int(this._1U.Fame));
    }

    public function _14z():int {
        return (int(this._1U.Price));
    }

    public function _Er():int {
        return (this.type);
    }

    public function _1dI(_arg1:int):void {
        this.pets.splice(this._CM(_arg1), 1);
    }

    public function _1iz():void {
        this.hash = {};
        this.pets = new Vector.<_1FO>();
        this._0Fr();
    }

    private function _CM(_arg1:int):int {
        var _local2:_1FO;
        var _local3:uint;
        while (_local3 < this.pets.length) {
            _local2 = this.pets[_local3];
            if (_local2._4E() == _arg1) {
                return (_local3);
            }
            ;
            _local3++;
        }
        ;
        return (-1);
    }


}
}//package _1L3

