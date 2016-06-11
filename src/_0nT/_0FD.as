// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0nT._0FD

package _0nT {
import flash.utils.Dictionary;
import flash.utils.getTimer;

public class _0FD {

    private static var _1Co:uint;
    private static var _19d:Dictionary = new Dictionary();

    public static function _1iG(_arg1:_0FD):uint {
        if (_19d[_arg1.id] == _arg1) {
            return (_arg1.id);
        }
        ;
        var _local2 = ++_1Co;
        _19d[_local2] = _arg1;
        _arg1._0z5 = getTimer();
        return (_1Co);
    }

    public static function _UL(_arg1:int):void {
        var _local2:_0FD;
        var _local3:int;
        for each (_local2 in _19d) {
            if (!_local2.paused) {
                _local3 = (_arg1 - _local2._0z5);
                if (_local3 >= _local2._NS) {
                    _local2._0z5 = _arg1;
                    _local2.run();
                }
                ;
            }
            ;
        }
        ;
    }

    public static function _0pB(_arg1:_0FD):void {
        delete _19d[_arg1.id];
        _arg1.onDestroyed();
    }

    public static function _LR():void {
        var _local1:_0FD;
        for each (_local1 in _19d) {
            _local1.destroy();
        }
        ;
        _19d = new Dictionary();
    }

    public function _0FD(_arg1:uint) {
        this._NS = _arg1;
    }
    public var id:uint;
    public var paused:Boolean;
    public var _NS:uint;
    public var _0z5:int;

    final public function add():void {
        _1iG(this);
    }

    final public function destroy():void {
        _0pB(this);
    }

    protected function run():void {
    }

    protected function onDestroyed():void {
    }


}
}//package _0nT

