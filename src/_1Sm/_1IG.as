// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Sm._1IG

package _1Sm {
public final class _1IG {

    public static const NIL:_1IG = new _1IG(null, null);

    public function _1IG(_arg1:_1xK, _arg2:_1IG = null) {
        if (((!(_arg1)) && (!(_arg2)))) {
            if (NIL) {
                throw (new ArgumentError("Parameters head and tail are null. Use the NIL element instead."));
            }
            ;
            this.nonEmpty = false;
        } else {
            if (!_arg1) {
                throw (new ArgumentError("Parameter head cannot be null."));
            }
            ;
            this._11w = _arg1;
            this._qh = ((_arg2) || (NIL));
            this.nonEmpty = true;
        }
        ;
    }
    public var _11w:_1xK;
    public var _qh:_1IG;
    public var nonEmpty:Boolean = false;

    public function get length():uint {
        if (!this.nonEmpty) {
            return (0);
        }
        ;
        if (this._qh == NIL) {
            return (1);
        }
        ;
        var _local1:uint;
        var _local2:_1IG = this;
        while (_local2.nonEmpty) {
            _local1++;
            _local2 = _local2._qh;
        }
        ;
        return (_local1);
    }

    public function prepend(_arg1:_1xK):_1IG {
        return (new _1IG(_arg1, this));
    }

    public function append(_arg1:_1xK):_1IG {
        if (!_arg1) {
            return (this);
        }
        ;
        if (!this.nonEmpty) {
            return (new _1IG(_arg1));
        }
        ;
        if (this._qh == NIL) {
            return (new _1IG(_arg1).prepend(this._11w));
        }
        ;
        var _local2:_1IG = new _1IG(this._11w);
        var _local3:_1IG = _local2;
        var _local4:_1IG = this._qh;
        while (_local4.nonEmpty) {
            _local3 = (_local3._qh = new _1IG(_local4._11w));
            _local4 = _local4._qh;
        }
        ;
        _local3._qh = new _1IG(_arg1);
        return (_local2);
    }

    public function insertWithPriority(_arg1:_1xK):_1IG {
        if (!this.nonEmpty) {
            return (new _1IG(_arg1));
        }
        ;
        var _local2:int = _arg1.priority;
        if (_local2 > this._11w.priority) {
            return (this.prepend(_arg1));
        }
        ;
        var _local3:_1IG = new _1IG(this._11w);
        var _local4:_1IG = _local3;
        var _local5:_1IG = this._qh;
        while (_local5.nonEmpty) {
            if (_local2 > _local5._11w.priority) {
                _local4._qh = _local5.prepend(_arg1);
                return (_local3);
            }
            ;
            _local4 = (_local4._qh = new _1IG(_local5._11w));
            _local5 = _local5._qh;
        }
        ;
        _local4._qh = new _1IG(_arg1);
        return (_local3);
    }

    public function _149(_arg1:Function):_1IG {
        if (((!(this.nonEmpty)) || ((_arg1 == null)))) {
            return (this);
        }
        ;
        if (_arg1 == this._11w.listener) {
            return (this._qh);
        }
        ;
        var _local2:_1IG = new _1IG(this._11w);
        var _local3:_1IG = _local2;
        var _local4:_1IG = this._qh;
        while (_local4.nonEmpty) {
            if (_local4._11w.listener == _arg1) {
                _local3._qh = _local4._qh;
                return (_local2);
            }
            ;
            _local3 = (_local3._qh = new _1IG(_local4._11w));
            _local4 = _local4._qh;
        }
        ;
        return (this);
    }

    public function contains(_arg1:Function):Boolean {
        if (!this.nonEmpty) {
            return (false);
        }
        ;
        var _local2:_1IG = this;
        while (_local2.nonEmpty) {
            if (_local2._11w.listener == _arg1) {
                return (true);
            }
            ;
            _local2 = _local2._qh;
        }
        ;
        return (false);
    }

    public function find(_arg1:Function):_1xK {
        if (!this.nonEmpty) {
            return (null);
        }
        ;
        var _local2:_1IG = this;
        while (_local2.nonEmpty) {
            if (_local2._11w.listener == _arg1) {
                return (_local2._11w);
            }
            ;
            _local2 = _local2._qh;
        }
        ;
        return (null);
    }

    public function toString():String {
        var _local1 = "";
        var _local2:_1IG = this;
        while (_local2.nonEmpty) {
            _local1 = (_local1 + (_local2._11w + " -> "));
            _local2 = _local2._qh;
        }
        ;
        _local1 = (_local1 + "NIL");
        return ((("[List " + _local1) + "]"));
    }


}
}//package _1Sm

