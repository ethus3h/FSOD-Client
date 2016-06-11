// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_20I._13Z

package _20I {
public class _13Z {

    private const _0fJ:Vector.<_1GP> = new <_1GP>[];
    private const map:Object = {};

    private var _20B:_1GP;
    private var _0m7:_1GP;
    private var _0Sw:int;


    public function _1br():int {
        return (this._0fJ.length);
    }

    public function _1HK():_1GP {
        return (this._20B);
    }

    public function _20R():_1GP {
        return (this._0m7);
    }

    public function _1bF(_arg1:int):_1GP {
        return (this._0fJ[_arg1]);
    }

    public function _0Uf(_arg1:_1GP, _arg2:Boolean = false):void {
        _arg1._Vf.add(this._1G6);
        this._0fJ.push(_arg1);
        this.map[_arg1.id] = _arg1;
        this._GF(_arg1);
        if (_arg2) {
            this._20B = _arg1;
            if (!this._0m7) {
                this._0m7 = _arg1;
                _arg1._1dU(true);
            }
            ;
        } else {
            if (_arg1._09b()) {
                this._0m7 = _arg1;
            }
            ;
        }
        ;
    }

    public function _mM(_arg1:int):void {
        var _local2:_1GP;
        this._0Sw = _arg1;
        for each (_local2 in this._0fJ) {
            this._GF(_local2);
        }
        ;
    }

    public function _1PW(_arg1:int):_1GP {
        return (((this.map[_arg1]) || (this._20B)));
    }

    public function _Tr():Vector.<_1GP> {
        var _local2:_1GP;
        var _local1:Vector.<_1GP> = new Vector.<_1GP>();
        for each (_local2 in this._0fJ) {
            if (_local2._1b7() != _0Hi.UNLISTED) {
                _local1.push(_local2);
            }
            ;
        }
        ;
        return (_local1);
    }

    private function _1G6(_arg1:_1GP):void {
        if (((_arg1._09b()) && (!((this._0m7 == _arg1))))) {
            ((this._0m7) && (this._0m7._1dU(false)));
            this._0m7 = _arg1;
        }
        ;
    }

    private function _GF(_arg1:_1GP):void {
        if (!_arg1._1cQ) {
            _arg1.setState(_0Hi.UNLISTED);
        } else {
            if (_arg1._1b7()._KQ()) {
                _arg1.setState(this._bG(_arg1));
            }
            ;
        }
        ;
    }

    private function _bG(_arg1:_1GP):_0Hi {
        if (!_arg1._1cQ) {
            return (_0Hi.UNLISTED);
        }
        ;
        if ((((this._0Sw >= _arg1.unlockLevel)) && ((_arg1._1Ux == null)))) {
            return (_0Hi.PURCHASABLE);
        }
        ;
        return (_0Hi.LOCKED);
    }


}
}//package _20I

