// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1ik._rG

package _1ik {

public class _rG {

    public function _rG(_arg1:String, _arg2:String) {
        this.name = _arg1;
        this.key = _arg2;
    }
    private var name:String;
    private var key:String;
    private var _0k3:Vector.<_2X>;

    public function getName():String {
        return (this.name);
    }

    public function getKey():String {
        return (this.key);
    }

    public function _M1():Vector.<_2X> {
        return (this._0k3);
    }

    public function _1ug(_arg1:Vector.<_2X>):void {
        this._0k3 = _arg1;
    }

    public function _0j1():Boolean {
        return (!((this._0k3 == null)));
    }

    public function _1JB():void {
        this._0k3 = null;
    }


}
}//package _1ik

