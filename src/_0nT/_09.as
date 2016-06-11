// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0nT._09-

package _0nT {
public class _09 extends _0FD {

    public function _09(_arg1:int, _arg2:Function, ..._args) {
        super(_arg1);
        this.callback = _arg2;
        this.parameters = _args;
    }
    public var callback:Function;
    public var parameters:Array;

    override protected function run():void {
        this.callback.apply(this.parameters);
    }

    override protected function onDestroyed():void {
        this.callback = null;
        this.parameters = null;
    }


}
}//package _0nT

