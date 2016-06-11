// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_7T._0-l

package _7T {
public class _0l {

    public static const _0rm:_0l = new _0l(1);
    public static const _00W:_0l = new _0l(2);
    public static const _0ll:_0l = new _0l(3);
    private static const _0sw:Object = {
        1: _0rm,
        2: _00W,
        3: _0ll
    };

    public static function parse(_arg1:int):_0l {
        return (_0sw[_arg1]);
    }

    public function _0l(_arg1:int) {
        this.index = _arg1;
    }
    private var index:int;

    public function _gA():int {
        return (this.index);
    }


}
}//package _7T

