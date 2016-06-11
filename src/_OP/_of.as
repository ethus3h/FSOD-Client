// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_OP._of

package _OP {
import _1N.MysteryBoxInfo;

public class _of {

    private var _1CV:Object;
    private var initialized:Boolean = false;
    private var _0rc:Boolean = false;

    public function get isNew():Boolean {
        return (this._0rc);
    }

    public function set isNew(_arg1:Boolean):void {
        this._0rc = _arg1;
    }

    public function _1F8():Object {
        return (this._1CV);
    }

    public function _1mq(_arg1:Array):void {
        var _local2:MysteryBoxInfo;
        this._1CV = {};
        for each (_local2 in _arg1) {
            this._1CV[_local2.id] = _local2;
        }
        ;
        this.initialized = true;
    }

    public function _0C():Boolean {
        return (this.initialized);
    }

    public function _cH(_arg1:Boolean):void {
        this.initialized = _arg1;
    }


}
}//package _OP

