// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_U1._1sr

package _U1 {
import _10a._FU;

import com.company.assembleegameclient.appengine._0Bk;

import flash.display.Sprite;

public class _1sr extends Sprite {

    public function _1sr(_arg1:_FU) {
        var _local2:_0Bk;
        this._0R8 = new Vector.<_bv>();
        super();
        for each (_local2 in _arg1._0c()) {
            if (_local2._1Xw()) {
                this._1qM(new _bv(_local2.getIcon(), _local2._ZE, _local2._0w0, _local2._13B, _local2._0lN, _arg1._1rI()));
                this._IF = true;
            }
            ;
        }
        ;
    }
    private var _0R8:Vector.<_bv>;
    private var _IF:Boolean = false;

    public function _0oq():Boolean {
        return (this._IF);
    }

    public function _1qM(_arg1:_bv):void {
        _arg1.y = (4 + (this._0R8.length * (_bv.HEIGHT + 4)));
        this._0R8.push(_arg1);
        addChild(_arg1);
    }


}
}//package _U1

